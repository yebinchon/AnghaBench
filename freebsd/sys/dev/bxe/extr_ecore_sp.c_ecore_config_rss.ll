; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_config_rss_params = type { i32, %struct.ecore_rss_config_obj* }
%struct.ecore_rss_config_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_config_rss_params.1*)*, %struct.ecore_raw_obj }
%struct.bxe_softc.0 = type opaque
%struct.ecore_config_rss_params.1 = type opaque
%struct.ecore_raw_obj = type { i32 (%struct.bxe_softc.2*, %struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)* }
%struct.bxe_softc.2 = type opaque

@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Not configuring RSS ramrod_flags=%lx\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_config_rss(%struct.bxe_softc* %0, %struct.ecore_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_config_rss_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_rss_config_obj*, align 8
  %8 = alloca %struct.ecore_raw_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_config_rss_params* %1, %struct.ecore_config_rss_params** %5, align 8
  %9 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %10, align 8
  store %struct.ecore_rss_config_obj* %11, %struct.ecore_rss_config_obj** %7, align 8
  %12 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %12, i32 0, i32 1
  store %struct.ecore_raw_obj* %13, %struct.ecore_raw_obj** %8, align 8
  %14 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %15 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %15, i32 0, i32 0
  %17 = call i64 @ECORE_TEST_BIT(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %21 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ECORE_MSG(%struct.bxe_softc* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %28 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %27, i32 0, i32 2
  %29 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %28, align 8
  %30 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %31 = call i32 %29(%struct.ecore_raw_obj* %30)
  %32 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %32, i32 0, i32 0
  %34 = load i32 (%struct.bxe_softc.0*, %struct.ecore_config_rss_params.1*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_config_rss_params.1*)** %33, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = bitcast %struct.bxe_softc* %35 to %struct.bxe_softc.0*
  %37 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %38 = bitcast %struct.ecore_config_rss_params* %37 to %struct.ecore_config_rss_params.1*
  %39 = call i32 %34(%struct.bxe_softc.0* %36, %struct.ecore_config_rss_params.1* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %44 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %43, i32 0, i32 1
  %45 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %44, align 8
  %46 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %47 = call i32 %45(%struct.ecore_raw_obj* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %26
  %50 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %51 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %51, i32 0, i32 0
  %53 = call i64 @ECORE_TEST_BIT(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %57 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %56, i32 0, i32 0
  %58 = load i32 (%struct.bxe_softc.2*, %struct.ecore_raw_obj*)*, i32 (%struct.bxe_softc.2*, %struct.ecore_raw_obj*)** %57, align 8
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %60 = bitcast %struct.bxe_softc* %59 to %struct.bxe_softc.2*
  %61 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %8, align 8
  %62 = call i32 %58(%struct.bxe_softc.2* %60, %struct.ecore_raw_obj* %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %49
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %42, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
