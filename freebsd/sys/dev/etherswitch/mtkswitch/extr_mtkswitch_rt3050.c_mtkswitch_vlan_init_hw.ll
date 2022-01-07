; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTK_SWITCH_RT3050 = common dso_local global i64 0, align 8
@VLANI_MASK = common dso_local global i32 0, align 4
@VMSC_MASK = common dso_local global i32 0, align 4
@VUB_MASK = common dso_local global i32 0, align 4
@MTKSWITCH_POC2 = common dso_local global i32 0, align 4
@POC2_UNTAG_VLAN = common dso_local global i32 0, align 4
@PVID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtkswitch_softc*)* @mtkswitch_vlan_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtkswitch_vlan_init_hw(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %7 = load i32, i32* @MA_NOTOWNED, align 4
  %8 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %6, i32 %7)
  %9 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %10 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MTKSWITCH_VMSC(i32 %24)
  %26 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %23, i32 %25, i32 0)
  %27 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MTK_SWITCH_RT3050, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MTKSWITCH_VUB(i32 %34)
  %36 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %33, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %22
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MTKSWITCH_VLANI(i32 %40)
  %42 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %39, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @VLANI_MASK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @VLANI_OFF(i32 %44)
  %46 = shl i32 %43, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @VLANI_OFF(i32 %52)
  %54 = shl i32 %51, %53
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @MTKSWITCH_VLANI(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %38
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  %66 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @MTKSWITCH_VMSC(i32 %67)
  %69 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %66, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @VMSC_MASK, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @VMSC_OFF(i32 %71)
  %73 = shl i32 %70, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 1, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @VMSC_OFF(i32 %82)
  %84 = shl i32 %81, %83
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @MTKSWITCH_VMSC(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %87, i32 %89, i32 %90)
  %92 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MTK_SWITCH_RT3050, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %65
  %98 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @MTKSWITCH_VUB(i32 %99)
  %101 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %98, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* @VUB_MASK, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @VUB_OFF(i32 %103)
  %105 = shl i32 %102, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 1, %111
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @VUB_OFF(i32 %114)
  %116 = shl i32 %113, %115
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  %119 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @MTKSWITCH_VUB(i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %119, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %97, %65
  %125 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %126 = load i32, i32* @MTKSWITCH_POC2, align 4
  %127 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %125, i32 %126)
  store i32 %127, i32* %3, align 4
  %128 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %129 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MTK_SWITCH_RT3050, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32, i32* @POC2_UNTAG_VLAN, align 4
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %124
  %138 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %139 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 1, %140
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %146 = load i32, i32* @MTKSWITCH_POC2, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %150 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %149, i32 0, i32 2
  store i32 1, i32* %150, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %181, %137
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %154 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %151
  %159 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @MTKSWITCH_PVID(i32 %160)
  %162 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %159, i32 %161)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* @PVID_MASK, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @PVID_OFF(i32 %164)
  %166 = shl i32 %163, %165
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %3, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @PVID_OFF(i32 %171)
  %173 = shl i32 %170, %172
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %3, align 4
  %176 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @MTKSWITCH_PVID(i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %176, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %158
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %151

184:                                              ; preds = %151
  %185 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %186 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %185)
  ret void
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @MTKSWITCH_VMSC(i32) #1

declare dso_local i32 @MTKSWITCH_VUB(i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_VLANI(i32) #1

declare dso_local i32 @VLANI_OFF(i32) #1

declare dso_local i32 @VMSC_OFF(i32) #1

declare dso_local i32 @VUB_OFF(i32) #1

declare dso_local i32 @MTKSWITCH_PVID(i32) #1

declare dso_local i32 @PVID_OFF(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
