; ModuleID = '/home/carl/AnghaBench/git/extr_alloc.c_clear_alloc_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_alloc.c_clear_alloc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_state = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_alloc_state(%struct.alloc_state* %0) #0 {
  %2 = alloca %struct.alloc_state*, align 8
  store %struct.alloc_state* %0, %struct.alloc_state** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.alloc_state*, %struct.alloc_state** %2, align 8
  %5 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = load %struct.alloc_state*, %struct.alloc_state** %2, align 8
  %10 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.alloc_state*, %struct.alloc_state** %2, align 8
  %14 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.alloc_state*, %struct.alloc_state** %2, align 8
  %17 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  br label %3

22:                                               ; preds = %3
  %23 = load %struct.alloc_state*, %struct.alloc_state** %2, align 8
  %24 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @FREE_AND_NULL(i32* %25)
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @FREE_AND_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
