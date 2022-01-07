; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_push_to_contains_stack.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_push_to_contains_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.contains_stack = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.commit* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.contains_stack*)* @push_to_contains_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_to_contains_stack(%struct.commit* %0, %struct.contains_stack* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.contains_stack*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.contains_stack* %1, %struct.contains_stack** %4, align 8
  %5 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %6 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %9 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %13 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %7, i32 %11, i32 %14)
  %16 = load %struct.commit*, %struct.commit** %3, align 8
  %17 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %18 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %21 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.commit* %16, %struct.commit** %25, align 8
  %26 = load %struct.commit*, %struct.commit** %3, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %30 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.contains_stack*, %struct.contains_stack** %4, align 8
  %33 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %28, i32* %38, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
