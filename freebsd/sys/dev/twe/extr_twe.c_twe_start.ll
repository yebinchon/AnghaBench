; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i32, i32*, i32, %struct.twe_softc* }
%struct.twe_softc = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dumping = common dso_local global i32 0, align 4
@TWE_CMD_BUSY = common dso_local global i32 0, align 4
@TWE_STATUS_COMMAND_QUEUE_FULL = common dso_local global i32 0, align 4
@TWE_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TWE_CMD_SLEEPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twe_start(%struct.twe_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twe_request*, align 8
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twe_request* %0, %struct.twe_request** %3, align 8
  %8 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %9 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %8, i32 0, i32 3
  %10 = load %struct.twe_softc*, %struct.twe_softc** %9, align 8
  store %struct.twe_softc* %10, %struct.twe_softc** %4, align 8
  %11 = call i32 @debug_called(i32 4)
  %12 = load i32, i32* @dumping, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %16 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @TWE_CMD_BUSY, align 4
  %19 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %20 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %22 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  store i32 100000, i32* %6, align 4
  br label %23

23:                                               ; preds = %56, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %28 = call i32 @TWE_STATUS(%struct.twe_softc* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @twe_check_bits(%struct.twe_softc* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TWE_STATUS_COMMAND_QUEUE_FULL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %38 = call i32 @twe_enqueue_busy(%struct.twe_request* %37)
  %39 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %40 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %41 = call i32 @TWE_FIND_COMMANDPHYS(%struct.twe_request* %40)
  %42 = call i32 @TWE_COMMAND_QUEUE(%struct.twe_softc* %39, i32 %41)
  store i32 0, i32* %2, align 4
  br label %61

43:                                               ; preds = %26
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TWE_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %53 = call i32 @twe_done(%struct.twe_softc* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %48, %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %36
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i32 @twe_check_bits(%struct.twe_softc*, i32) #1

declare dso_local i32 @twe_enqueue_busy(%struct.twe_request*) #1

declare dso_local i32 @TWE_COMMAND_QUEUE(%struct.twe_softc*, i32) #1

declare dso_local i32 @TWE_FIND_COMMANDPHYS(%struct.twe_request*) #1

declare dso_local i32 @twe_done(%struct.twe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
