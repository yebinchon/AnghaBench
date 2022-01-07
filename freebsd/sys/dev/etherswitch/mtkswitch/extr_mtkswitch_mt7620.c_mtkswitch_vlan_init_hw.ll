; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.2*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque
%struct.mtkswitch_softc.2 = type opaque
%struct.TYPE_3__ = type { i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTK_SWITCH_MT7620 = common dso_local global i64 0, align 8
@VTIM_MASK = common dso_local global i32 0, align 4
@VAWD1_IVL_MAC = common dso_local global i32 0, align 4
@VAWD1_VTAG_EN = common dso_local global i32 0, align 4
@VAWD1_VALID = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD1 = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD2 = common dso_local global i32 0, align 4
@VTCR_BUSY = common dso_local global i32 0, align 4
@VTCR_FUNC_VID_WRITE = common dso_local global i32 0, align 4
@MTKSWITCH_VTCR = common dso_local global i32 0, align 4
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
  %14 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  %19 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mtkswitch_invalidate_vlan(%struct.mtkswitch_softc* %19, i32 %20)
  %22 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MTK_SWITCH_MT7620, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %18
  %28 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %30, align 8
  %32 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %33 = bitcast %struct.mtkswitch_softc* %32 to %struct.mtkswitch_softc.0*
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MTKSWITCH_VTIM(i32 %34)
  %36 = call i32 %31(%struct.mtkswitch_softc.0* %33, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @VTIM_MASK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @VTIM_OFF(i32 %38)
  %40 = shl i32 %37, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @VTIM_OFF(i32 %46)
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32 (%struct.mtkswitch_softc.2*, i32, i32)*, i32 (%struct.mtkswitch_softc.2*, i32, i32)** %53, align 8
  %55 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %56 = bitcast %struct.mtkswitch_softc* %55 to %struct.mtkswitch_softc.2*
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @MTKSWITCH_VTIM(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 %54(%struct.mtkswitch_softc.2* %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %27, %18
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MTK_SWITCH_MT7620, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %73

72:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* @VAWD1_IVL_MAC, align 4
  %75 = load i32, i32* @VAWD1_VTAG_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VAWD1_VALID, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %91, %73
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %82 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @VAWD1_PORT_MEMBER(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %79

94:                                               ; preds = %79
  %95 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %96 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32 (%struct.mtkswitch_softc.2*, i32, i32)*, i32 (%struct.mtkswitch_softc.2*, i32, i32)** %97, align 8
  %99 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %100 = bitcast %struct.mtkswitch_softc* %99 to %struct.mtkswitch_softc.2*
  %101 = load i32, i32* @MTKSWITCH_VAWD1, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 %98(%struct.mtkswitch_softc.2* %100, i32 %101, i32 %102)
  %104 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %105 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32 (%struct.mtkswitch_softc.2*, i32, i32)*, i32 (%struct.mtkswitch_softc.2*, i32, i32)** %106, align 8
  %108 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %109 = bitcast %struct.mtkswitch_softc* %108 to %struct.mtkswitch_softc.2*
  %110 = load i32, i32* @MTKSWITCH_VAWD2, align 4
  %111 = call i32 %107(%struct.mtkswitch_softc.2* %109, i32 %110, i32 0)
  %112 = load i32, i32* @VTCR_BUSY, align 4
  %113 = load i32, i32* @VTCR_FUNC_VID_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32 (%struct.mtkswitch_softc.2*, i32, i32)*, i32 (%struct.mtkswitch_softc.2*, i32, i32)** %119, align 8
  %121 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %122 = bitcast %struct.mtkswitch_softc* %121 to %struct.mtkswitch_softc.2*
  %123 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 %120(%struct.mtkswitch_softc.2* %122, i32 %123, i32 %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %142, %94
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %129 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %126
  %134 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %135 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %136, align 8
  %138 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %139 = bitcast %struct.mtkswitch_softc* %138 to %struct.mtkswitch_softc.1*
  %140 = load i32, i32* %5, align 4
  %141 = call i32 %137(%struct.mtkswitch_softc.1* %139, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %126

145:                                              ; preds = %126
  %146 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %147 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %146)
  ret void
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @mtkswitch_invalidate_vlan(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_VTIM(i32) #1

declare dso_local i32 @VTIM_OFF(i32) #1

declare dso_local i32 @VAWD1_PORT_MEMBER(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
