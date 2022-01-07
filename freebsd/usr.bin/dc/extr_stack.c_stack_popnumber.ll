; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_popnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_popnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32 }
%struct.stack = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.number* }

@BCODE_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"not a number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.number* @stack_popnumber(%struct.stack* %0) #0 {
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.stack*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  %4 = load %struct.stack*, %struct.stack** %3, align 8
  %5 = call i64 @stack_empty(%struct.stack* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.number* null, %struct.number** %2, align 8
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.stack*, %struct.stack** %3, align 8
  %10 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.stack*, %struct.stack** %3, align 8
  %13 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @array_free(i32* %17)
  %19 = load %struct.stack*, %struct.stack** %3, align 8
  %20 = getelementptr inbounds %struct.stack, %struct.stack* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.stack*, %struct.stack** %3, align 8
  %23 = getelementptr inbounds %struct.stack, %struct.stack* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.stack*, %struct.stack** %3, align 8
  %28 = getelementptr inbounds %struct.stack, %struct.stack* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.stack*, %struct.stack** %3, align 8
  %31 = getelementptr inbounds %struct.stack, %struct.stack* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BCODE_NUMBER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.number* null, %struct.number** %2, align 8
  br label %52

40:                                               ; preds = %8
  %41 = load %struct.stack*, %struct.stack** %3, align 8
  %42 = getelementptr inbounds %struct.stack, %struct.stack* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.stack*, %struct.stack** %3, align 8
  %45 = getelementptr inbounds %struct.stack, %struct.stack* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.number*, %struct.number** %50, align 8
  store %struct.number* %51, %struct.number** %2, align 8
  br label %52

52:                                               ; preds = %40, %38, %7
  %53 = load %struct.number*, %struct.number** %2, align 8
  ret %struct.number* %53
}

declare dso_local i64 @stack_empty(%struct.stack*) #1

declare dso_local i32 @array_free(i32*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
