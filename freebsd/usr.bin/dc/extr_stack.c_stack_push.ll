; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.value = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_push(%struct.stack* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %5 = load %struct.value*, %struct.value** %4, align 8
  %6 = getelementptr inbounds %struct.value, %struct.value* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %33 [
    i32 130, label %8
    i32 129, label %19
    i32 128, label %26
  ]

8:                                                ; preds = %2
  %9 = load %struct.stack*, %struct.stack** %3, align 8
  %10 = call i32 @stack_grow(%struct.stack* %9)
  %11 = load %struct.stack*, %struct.stack** %3, align 8
  %12 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.stack*, %struct.stack** %3, align 8
  %15 = getelementptr inbounds %struct.stack, %struct.stack* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 130, i32* %18, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.stack*, %struct.stack** %3, align 8
  %21 = load %struct.value*, %struct.value** %4, align 8
  %22 = getelementptr inbounds %struct.value, %struct.value* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stack_pushnumber(%struct.stack* %20, i32 %24)
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.stack*, %struct.stack** %3, align 8
  %28 = load %struct.value*, %struct.value** %4, align 8
  %29 = getelementptr inbounds %struct.value, %struct.value* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @stack_pushstring(%struct.stack* %27, i32 %31)
  br label %33

33:                                               ; preds = %2, %26, %19, %8
  %34 = load %struct.value*, %struct.value** %4, align 8
  %35 = getelementptr inbounds %struct.value, %struct.value* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33
  %40 = load %struct.value*, %struct.value** %4, align 8
  %41 = getelementptr inbounds %struct.value, %struct.value* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @array_dup(i32* %42)
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32* [ null, %38 ], [ %43, %39 ]
  %46 = load %struct.stack*, %struct.stack** %3, align 8
  %47 = getelementptr inbounds %struct.stack, %struct.stack* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.stack*, %struct.stack** %3, align 8
  %50 = getelementptr inbounds %struct.stack, %struct.stack* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32* %45, i32** %53, align 8
  ret void
}

declare dso_local i32 @stack_grow(%struct.stack*) #1

declare dso_local i32 @stack_pushnumber(%struct.stack*, i32) #1

declare dso_local i32 @stack_pushstring(%struct.stack*, i32) #1

declare dso_local i32* @array_dup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
