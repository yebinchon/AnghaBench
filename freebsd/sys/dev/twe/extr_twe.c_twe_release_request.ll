; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_release_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_release_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i32, i32* }

@dumping = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tr_private != NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_request*)* @twe_release_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_release_request(%struct.twe_request* %0) #0 {
  %2 = alloca %struct.twe_request*, align 8
  store %struct.twe_request* %0, %struct.twe_request** %2, align 8
  %3 = call i32 @debug_called(i32 4)
  %4 = load i32, i32* @dumping, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %8 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @TWE_IO_ASSERT_LOCKED(i32 %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %13 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %18 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @twe_panic(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %23 = call i32 @twe_enqueue_free(%struct.twe_request* %22)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(i32) #1

declare dso_local i32 @twe_panic(i32, i8*) #1

declare dso_local i32 @twe_enqueue_free(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
