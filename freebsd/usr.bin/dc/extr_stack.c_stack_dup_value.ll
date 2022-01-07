; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_dup_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_dup_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @stack_dup_value(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = getelementptr inbounds %struct.value, %struct.value* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.value*, %struct.value** %4, align 8
  %9 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.value*, %struct.value** %3, align 8
  %11 = getelementptr inbounds %struct.value, %struct.value* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %40 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %23
  ]

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.value*, %struct.value** %3, align 8
  %16 = getelementptr inbounds %struct.value, %struct.value* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dup_number(i32 %18)
  %20 = load %struct.value*, %struct.value** %4, align 8
  %21 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.value*, %struct.value** %3, align 8
  %25 = getelementptr inbounds %struct.value, %struct.value* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @strdup(i32* %27)
  %29 = load %struct.value*, %struct.value** %4, align 8
  %30 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.value*, %struct.value** %4, align 8
  %33 = getelementptr inbounds %struct.value, %struct.value* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = call i32 @err(i32 1, i32* null)
  br label %39

39:                                               ; preds = %37, %23
  br label %40

40:                                               ; preds = %2, %39, %14, %13
  %41 = load %struct.value*, %struct.value** %3, align 8
  %42 = getelementptr inbounds %struct.value, %struct.value* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = load %struct.value*, %struct.value** %3, align 8
  %48 = getelementptr inbounds %struct.value, %struct.value* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @array_dup(i32* %49)
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i32* [ null, %45 ], [ %50, %46 ]
  %53 = load %struct.value*, %struct.value** %4, align 8
  %54 = getelementptr inbounds %struct.value, %struct.value* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %55
}

declare dso_local i32 @dup_number(i32) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32* @array_dup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
