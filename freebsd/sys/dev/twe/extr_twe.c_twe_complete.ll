; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32, i32 (%struct.twe_request*)* }

@.str = private unnamed_addr constant [27 x i8] c"call completion handler %p\00", align 1
@TWE_CMD_SLEEPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wake up command owner on %p\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"command left for owner\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_softc*)* @twe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_complete(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca %struct.twe_request*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %4 = call i32 @debug_called(i32 5)
  br label %5

5:                                                ; preds = %41, %1
  %6 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %7 = call %struct.twe_request* @twe_dequeue_complete(%struct.twe_softc* %6)
  store %struct.twe_request* %7, %struct.twe_request** %3, align 8
  %8 = icmp ne %struct.twe_request* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %11 = call i32 @twe_unmap_request(%struct.twe_request* %10)
  %12 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %13 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %12, i32 0, i32 1
  %14 = load i32 (%struct.twe_request*)*, i32 (%struct.twe_request*)** %13, align 8
  %15 = icmp ne i32 (%struct.twe_request*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %18 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %17, i32 0, i32 1
  %19 = load i32 (%struct.twe_request*)*, i32 (%struct.twe_request*)** %18, align 8
  %20 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 (%struct.twe_request*)* %19)
  %21 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %22 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %21, i32 0, i32 1
  %23 = load i32 (%struct.twe_request*)*, i32 (%struct.twe_request*)** %22, align 8
  %24 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %25 = call i32 %23(%struct.twe_request* %24)
  br label %41

26:                                               ; preds = %9
  %27 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %28 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TWE_CMD_SLEEPER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %35 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.twe_request* %34)
  %36 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %37 = call i32 @wakeup_one(%struct.twe_request* %36)
  br label %40

38:                                               ; preds = %26
  %39 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %16
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.twe_request* @twe_dequeue_complete(%struct.twe_softc*) #1

declare dso_local i32 @twe_unmap_request(%struct.twe_request*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @wakeup_one(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
