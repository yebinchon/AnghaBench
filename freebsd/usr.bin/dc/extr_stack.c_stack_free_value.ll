; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_free_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_free_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_free_value(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %3 = load %struct.value*, %struct.value** %2, align 8
  %4 = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %19 [
    i32 130, label %6
    i32 129, label %7
    i32 128, label %13
  ]

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load %struct.value*, %struct.value** %2, align 8
  %9 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free_number(i32 %11)
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.value*, %struct.value** %2, align 8
  %15 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @free(i32 %17)
  br label %19

19:                                               ; preds = %1, %13, %7, %6
  %20 = load %struct.value*, %struct.value** %2, align 8
  %21 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @array_free(i32* %22)
  %24 = load %struct.value*, %struct.value** %2, align 8
  %25 = getelementptr inbounds %struct.value, %struct.value* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @free_number(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @array_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
