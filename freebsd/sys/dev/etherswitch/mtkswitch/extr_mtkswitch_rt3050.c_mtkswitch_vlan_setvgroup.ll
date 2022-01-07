; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTKSWITCH_POC2 = common dso_local global i32 0, align 4
@MTK_SWITCH_RT3050 = common dso_local global i64 0, align 8
@POC2_UNTAG_VLAN = common dso_local global i32 0, align 4
@VUB_MASK = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VLANI_MASK = common dso_local global i32 0, align 4
@VMSC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_5__*)* @mtkswitch_vlan_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_vlan_setvgroup(%struct.mtkswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %201

24:                                               ; preds = %13
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %26 = load i32, i32* @MA_NOTOWNED, align 4
  %27 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %25, i32 %26)
  %28 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %29 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %28)
  %30 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %31 = load i32, i32* @MTKSWITCH_POC2, align 4
  %32 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MTK_SWITCH_RT3050, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POC2_UNTAG_VLAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %38, %24
  %44 = load i32, i32* @VUB_MASK, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %61 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %60)
  %62 = load i32, i32* @ENOTSUP, align 4
  store i32 %62, i32* %3, align 4
  br label %201

63:                                               ; preds = %43
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %71 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %70)
  %72 = load i32, i32* @ENOTSUP, align 4
  store i32 %72, i32* %3, align 4
  br label %201

73:                                               ; preds = %63
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %86 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %85)
  %87 = load i32, i32* @ENOTSUP, align 4
  store i32 %87, i32* %3, align 4
  br label %201

88:                                               ; preds = %73
  br label %124

89:                                               ; preds = %38
  %90 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MTKSWITCH_VUB(i32 %93)
  %95 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %90, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @VUB_MASK, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @VUB_OFF(i32 %99)
  %101 = shl i32 %96, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @VUB_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @VUB_OFF(i32 %112)
  %114 = shl i32 %109, %113
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @MTKSWITCH_VUB(i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %117, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %89, %88
  %125 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MTKSWITCH_VLANI(i32 %128)
  %130 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %125, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @VLANI_MASK, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @VLANI_OFF(i32 %134)
  %136 = shl i32 %131, %135
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @VLANI_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @VLANI_OFF(i32 %147)
  %149 = shl i32 %144, %148
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MTKSWITCH_VLANI(i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %152, i32 %156, i32 %157)
  %159 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @MTKSWITCH_VMSC(i32 %162)
  %164 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %159, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* @VMSC_MASK, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @VMSC_OFF(i32 %168)
  %170 = shl i32 %165, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %6, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @VMSC_OFF(i32 %179)
  %181 = shl i32 %176, %180
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @MTKSWITCH_VMSC(i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %184, i32 %188, i32 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 1, %193
  %195 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %196 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %200 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %124, %84, %69, %59, %22
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_VUB(i32) #1

declare dso_local i32 @VUB_OFF(i32) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @MTKSWITCH_VLANI(i32) #1

declare dso_local i32 @VLANI_OFF(i32) #1

declare dso_local i32 @MTKSWITCH_VMSC(i32) #1

declare dso_local i32 @VMSC_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
