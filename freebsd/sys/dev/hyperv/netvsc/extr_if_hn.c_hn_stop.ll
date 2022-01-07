; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ifnet* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"synthetic parts were not attached\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: VF is not attached\00", align 1
@HN_NVS_DATAPATH_SYNTH = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_stop(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %7, i32 0, i32 5
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %5, align 8
  %10 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %11 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %10)
  %12 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = call i32 @atomic_clear_int(i32* %19, i32 %20)
  %22 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %23 = call i32 @hn_polling(%struct.hn_softc* %22, i32 0)
  %24 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %2
  %31 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  %35 = zext i1 %34 to i32
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %35, i8* %40)
  %42 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %43 = call i32 @hn_xpnt_vf_setdisable(%struct.hn_softc* %42, i32 0)
  %44 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %45 = load i32, i32* @HN_NVS_DATAPATH_SYNTH, align 4
  %46 = call i32 @hn_nvs_set_datapath(%struct.hn_softc* %44, i32 %45)
  %47 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %48 = call i32 @hn_xpnt_vf_saveifflags(%struct.hn_softc* %47)
  %49 = load i32, i32* @IFF_UP, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %58 = call i32 @hn_xpnt_vf_iocsetflags(%struct.hn_softc* %57)
  br label %59

59:                                               ; preds = %30, %2
  %60 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %61 = call i32 @hn_suspend_data(%struct.hn_softc* %60)
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %65 = call i32 @atomic_clear_int(i32* %63, i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %80, %59
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %69 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %74 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %88 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @HN_FLAG_RXVF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %95 = call i32 @hn_rxfilter_config(%struct.hn_softc* %94)
  br label %96

96:                                               ; preds = %93, %86, %83
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @hn_polling(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_xpnt_vf_setdisable(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_nvs_set_datapath(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_xpnt_vf_saveifflags(%struct.hn_softc*) #1

declare dso_local i32 @hn_xpnt_vf_iocsetflags(%struct.hn_softc*) #1

declare dso_local i32 @hn_suspend_data(%struct.hn_softc*) #1

declare dso_local i32 @hn_rxfilter_config(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
