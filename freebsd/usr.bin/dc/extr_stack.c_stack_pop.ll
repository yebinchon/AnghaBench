; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.stack = type { i32, %struct.value* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @stack_pop(%struct.stack* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.stack*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  %4 = load %struct.stack*, %struct.stack** %3, align 8
  %5 = call i64 @stack_empty(%struct.stack* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.value* null, %struct.value** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.stack*, %struct.stack** %3, align 8
  %10 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 1
  %11 = load %struct.value*, %struct.value** %10, align 8
  %12 = load %struct.stack*, %struct.stack** %3, align 8
  %13 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.value, %struct.value* %11, i64 %16
  store %struct.value* %17, %struct.value** %2, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %19
}

declare dso_local i64 @stack_empty(%struct.stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
