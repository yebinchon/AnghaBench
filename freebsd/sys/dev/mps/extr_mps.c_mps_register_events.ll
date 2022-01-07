; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_register_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_register_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_event_handle = type { i8*, i32* }

@M_MPT2 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MPS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot allocate event memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@eh_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_register_events(%struct.mps_softc* %0, i32* %1, i32* %2, i8* %3, %struct.mps_event_handle** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mps_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mps_event_handle**, align 8
  %12 = alloca %struct.mps_event_handle*, align 8
  %13 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.mps_event_handle** %4, %struct.mps_event_handle*** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @M_MPT2, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.mps_event_handle* @malloc(i32 16, i32 %14, i32 %17)
  store %struct.mps_event_handle* %18, %struct.mps_event_handle** %12, align 8
  %19 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %20 = icmp ne %struct.mps_event_handle* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.mps_softc*, %struct.mps_softc** %7, align 8
  %23 = load i32, i32* @MPS_ERROR, align 4
  %24 = call i32 @mps_dprint(%struct.mps_softc* %22, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %6, align 4
  br label %49

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %29 = getelementptr inbounds %struct.mps_event_handle, %struct.mps_event_handle* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %32 = getelementptr inbounds %struct.mps_event_handle, %struct.mps_event_handle* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mps_softc*, %struct.mps_softc** %7, align 8
  %34 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %33, i32 0, i32 0
  %35 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %36 = load i32, i32* @eh_list, align 4
  %37 = call i32 @TAILQ_INSERT_TAIL(i32* %34, %struct.mps_event_handle* %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.mps_softc*, %struct.mps_softc** %7, align 8
  %42 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @mps_update_events(%struct.mps_softc* %41, %struct.mps_event_handle* %42, i32* %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %40, %26
  %46 = load %struct.mps_event_handle*, %struct.mps_event_handle** %12, align 8
  %47 = load %struct.mps_event_handle**, %struct.mps_event_handle*** %11, align 8
  store %struct.mps_event_handle* %46, %struct.mps_event_handle** %47, align 8
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %21
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.mps_event_handle* @malloc(i32, i32, i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mps_event_handle*, i32) #1

declare dso_local i32 @mps_update_events(%struct.mps_softc*, %struct.mps_event_handle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
