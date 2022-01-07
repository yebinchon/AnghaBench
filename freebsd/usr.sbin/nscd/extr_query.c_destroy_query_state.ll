; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_destroy_query_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_destroy_query_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32 (%struct.query_state*)*, %struct.query_state*, %struct.query_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_query_state(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.query_state*)* @destroy_query_state)
  %4 = load %struct.query_state*, %struct.query_state** %2, align 8
  %5 = getelementptr inbounds %struct.query_state, %struct.query_state* %4, i32 0, i32 2
  %6 = load %struct.query_state*, %struct.query_state** %5, align 8
  %7 = icmp ne %struct.query_state* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.query_state*, %struct.query_state** %2, align 8
  %10 = getelementptr inbounds %struct.query_state, %struct.query_state* %9, i32 0, i32 2
  %11 = load %struct.query_state*, %struct.query_state** %10, align 8
  %12 = call i32 @free(%struct.query_state* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.query_state*, %struct.query_state** %2, align 8
  %15 = getelementptr inbounds %struct.query_state, %struct.query_state* %14, i32 0, i32 1
  %16 = load %struct.query_state*, %struct.query_state** %15, align 8
  %17 = icmp ne %struct.query_state* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.query_state*, %struct.query_state** %2, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 1
  %21 = load %struct.query_state*, %struct.query_state** %20, align 8
  %22 = call i32 @free(%struct.query_state* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.query_state*, %struct.query_state** %2, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 0
  %26 = load i32 (%struct.query_state*)*, i32 (%struct.query_state*)** %25, align 8
  %27 = load %struct.query_state*, %struct.query_state** %2, align 8
  %28 = call i32 %26(%struct.query_state* %27)
  %29 = load %struct.query_state*, %struct.query_state** %2, align 8
  %30 = call i32 @free(%struct.query_state* %29)
  %31 = call i32 @TRACE_OUT(void (%struct.query_state*)* @destroy_query_state)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.query_state*)*) #1

declare dso_local i32 @free(%struct.query_state*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
