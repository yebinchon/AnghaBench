; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_line_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_line_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i32, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_intr, i32* }
%struct.sfxge_intr = type { i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"intr == NULL\00", align 1
@EFX_INTR_LINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"intr->type != EFX_INTR_LINE\00", align 1
@SFXGE_INTR_STARTED = common dso_local global i64 0, align 8
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sfxge_intr_line_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_line_filter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sfxge_evq*, align 8
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sfxge_intr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %11, %struct.sfxge_evq** %4, align 8
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %12, i32 0, i32 3
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %13, align 8
  store %struct.sfxge_softc* %14, %struct.sfxge_softc** %5, align 8
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %16 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 0
  store %struct.sfxge_intr* %19, %struct.sfxge_intr** %7, align 8
  %20 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %21 = icmp ne %struct.sfxge_intr* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %25 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EFX_INTR_LINE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %32 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SFXGE_INTR_STARTED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %37, i32* %2, align 4
  br label %91

38:                                               ; preds = %1
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @efx_intr_status_line(i32* %39, i64* %8, i64* %9)
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @efx_intr_disable(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @efx_intr_fatal(i32* %46)
  %48 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %54 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %55, i32* %2, align 4
  br label %91

56:                                               ; preds = %49
  %57 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %58 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %64 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %70 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %73 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @efx_ev_qpending(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %68
  %80 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %81 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sfxge_evq*, %struct.sfxge_evq** %4, align 8
  %84 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @efx_ev_qprime(i32 %82, i32 %85)
  %87 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %87, i32* %2, align 4
  br label %91

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88, %56
  %90 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %79, %77, %52, %43, %36
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_intr_status_line(i32*, i64*, i64*) #1

declare dso_local i32 @efx_intr_disable(i32*) #1

declare dso_local i32 @efx_intr_fatal(i32*) #1

declare dso_local i64 @efx_ev_qpending(i32, i32) #1

declare dso_local i32 @efx_ev_qprime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
