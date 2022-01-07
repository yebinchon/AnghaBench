; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.ifmediareq, i32, i32 }
%struct.ifmediareq = type { i32, i32, i32, i64, i64 }
%struct.mii_data = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }

@SA_UNLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PORT_CONTROL2 = common dso_local global i32 0, align 4
@PORT_CONTROL2_DISC_TAGGED = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DROPTAGGED = common dso_local global i32 0, align 4
@PORT_CONTROL2_DISC_UNTAGGED = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DROPUNTAGGED = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_CPU = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_2500_T = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*)* @e6000sw_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_getport(i32 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmediareq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_17__* @device_get_softc(i32 %11)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %10, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %14 = load i32, i32* @SA_UNLOCKED, align 4
  %15 = call i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_17__* %13, i32 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %155

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @e6000sw_is_portenabled(%struct.TYPE_17__* %31, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %155

38:                                               ; preds = %30
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = call i32 @E6000SW_LOCK(%struct.TYPE_17__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %47 = call i32 @e6000sw_get_pvid(%struct.TYPE_17__* %41, i64 %44, i32* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @REG_PORT(%struct.TYPE_17__* %49, i64 %52)
  %54 = load i32, i32* @PORT_CONTROL2, align 4
  %55 = call i32 @e6000sw_readreg(%struct.TYPE_17__* %48, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PORT_CONTROL2_DISC_TAGGED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %38
  %61 = load i32, i32* @ETHERSWITCH_PORT_DROPTAGGED, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %38
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PORT_CONTROL2_DISC_UNTAGGED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @ETHERSWITCH_PORT_DROPUNTAGGED, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  store i32 0, i32* %7, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @e6000sw_is_fixedport(%struct.TYPE_17__* %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %136

84:                                               ; preds = %77
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @e6000sw_is_cpuport(%struct.TYPE_17__* %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ETHERSWITCH_PORT_CPU, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store %struct.ifmediareq* %99, %struct.ifmediareq** %8, align 8
  %100 = load i32, i32* @IFM_ACTIVE, align 4
  %101 = load i32, i32* @IFM_AVALID, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %104 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %106 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @e6000sw_is_fixed25port(%struct.TYPE_17__* %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %97
  %114 = load i32, i32* @IFM_2500_T, align 4
  %115 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %116 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %121

117:                                              ; preds = %97
  %118 = load i32, i32* @IFM_1000_T, align 4
  %119 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %120 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* @IFM_ETHER, align 4
  %123 = load i32, i32* @IFM_FDX, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %126 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %130 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %133 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %135 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  br label %151

136:                                              ; preds = %77
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call %struct.mii_data* @e6000sw_miiforphy(%struct.TYPE_17__* %137, i64 %140)
  store %struct.mii_data* %141, %struct.mii_data** %6, align 8
  %142 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %143 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %148 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %147, i32 0, i32 0
  %149 = load i32, i32* @SIOCGIFMEDIA, align 4
  %150 = call i32 @ifmedia_ioctl(i32 %144, i32* %146, i32* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %136, %121
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = call i32 @E6000SW_UNLOCK(%struct.TYPE_17__* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %37, %28
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_17__* @device_get_softc(i32) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @e6000sw_is_portenabled(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @E6000SW_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @e6000sw_get_pvid(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @e6000sw_readreg(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @REG_PORT(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @e6000sw_is_fixedport(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @e6000sw_is_cpuport(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @e6000sw_is_fixed25port(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.mii_data* @e6000sw_miiforphy(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, i32*, i32) #1

declare dso_local i32 @E6000SW_UNLOCK(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
