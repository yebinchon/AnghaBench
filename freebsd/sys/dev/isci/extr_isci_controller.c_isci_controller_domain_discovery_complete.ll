; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_domain_discovery_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_domain_discovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, i64, i32, i64, %struct.isci_softc* }
%struct.isci_softc = type { i64, i32, i32* }
%struct.ISCI_DOMAIN = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_controller_domain_discovery_complete(%struct.ISCI_CONTROLLER* %0, %struct.ISCI_DOMAIN* %1) #0 {
  %3 = alloca %struct.ISCI_CONTROLLER*, align 8
  %4 = alloca %struct.ISCI_DOMAIN*, align 8
  %5 = alloca %struct.isci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.ccb*, align 8
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %3, align 8
  store %struct.ISCI_DOMAIN* %1, %struct.ISCI_DOMAIN** %4, align 8
  %8 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %9 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %73, label %12

12:                                               ; preds = %2
  %13 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %4, align 8
  %14 = getelementptr inbounds %struct.ISCI_DOMAIN, %struct.ISCI_DOMAIN* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %19 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %23 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %12
  %27 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %28 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %27, i32 0, i32 4
  %29 = load %struct.isci_softc*, %struct.isci_softc** %28, align 8
  store %struct.isci_softc* %29, %struct.isci_softc** %5, align 8
  %30 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %31 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %36 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %38 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @TRUE, align 8
  %41 = call i32 @xpt_release_simq(i32 %39, i64 %40)
  %42 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %42, %union.ccb** %7, align 8
  %43 = load %union.ccb*, %union.ccb** %7, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %47 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cam_sim_path(i32 %48)
  %50 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %51 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %52 = call i32 @xpt_create_path(i32* %45, i32* null, i32 %49, i32 %50, i32 %51)
  %53 = load %union.ccb*, %union.ccb** %7, align 8
  %54 = call i32 @xpt_rescan(%union.ccb* %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %57 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %26
  %61 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %62 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @isci_controller_start(i32* %65)
  br label %71

67:                                               ; preds = %26
  %68 = load %struct.isci_softc*, %struct.isci_softc** %5, align 8
  %69 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %68, i32 0, i32 1
  %70 = call i32 @config_intrhook_disestablish(i32* %69)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %12
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

declare dso_local i32 @xpt_release_simq(i32, i64) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @isci_controller_start(i32*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
