; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"twereset\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"controller reset in progress...\0A\00", align 1
@TWE_MAX_RESET_TRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"reset %d failed, trying again\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't reset controller, giving up\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"controller reset done, %d commands restarted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_softc*)* @twe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_reset(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca %struct.twe_request*, align 8
  %4 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %5 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %6 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %6, i32 0, i32 0
  %8 = load i32, i32* @PRIBIO, align 4
  %9 = load i32, i32* @hz, align 4
  %10 = call i32 @mtx_sleep(%struct.twe_softc* %5, i32* %7, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %12 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %14 = call i32 @twe_disable_interrupts(%struct.twe_softc* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TWE_MAX_RESET_TRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %28 = call i32 @twe_soft_reset(%struct.twe_softc* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %15

35:                                               ; preds = %30, %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TWE_MAX_RESET_TRIES, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %41 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %58

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %47, %42
  %44 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %45 = call %struct.twe_request* @twe_dequeue_busy(%struct.twe_softc* %44)
  store %struct.twe_request* %45, %struct.twe_request** %3, align 8
  %46 = icmp ne %struct.twe_request* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %49 = call i32 @twe_enqueue_ready(%struct.twe_request* %48)
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %43

52:                                               ; preds = %43
  %53 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %54 = call i32 @twe_startio(%struct.twe_softc* %53)
  %55 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %39
  %59 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %60 = call i32 @twe_enable_interrupts(%struct.twe_softc* %59)
  ret void
}

declare dso_local i32 @mtx_sleep(%struct.twe_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i32 @twe_disable_interrupts(%struct.twe_softc*) #1

declare dso_local i32 @twe_soft_reset(%struct.twe_softc*) #1

declare dso_local %struct.twe_request* @twe_dequeue_busy(%struct.twe_softc*) #1

declare dso_local i32 @twe_enqueue_ready(%struct.twe_request*) #1

declare dso_local i32 @twe_startio(%struct.twe_softc*) #1

declare dso_local i32 @twe_enable_interrupts(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
