; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_check_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_check_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Checking objects\00", align 1
@progress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @get_max_object_index()
  store i32 %4, i32* %2, align 4
  %5 = load i64, i64* @verbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @start_delayed_progress(i32 %8, i32 %9)
  store i32 %10, i32* @progress, align 4
  br label %11

11:                                               ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @get_indexed_object(i32 %17)
  %19 = call i64 @check_object(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @progress, align 4
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 1
  %27 = call i32 @display_progress(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %1, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %12

31:                                               ; preds = %12
  %32 = call i32 @stop_progress(i32* @progress)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @get_max_object_index(...) #1

declare dso_local i32 @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @check_object(i32) #1

declare dso_local i32 @get_indexed_object(i32) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
