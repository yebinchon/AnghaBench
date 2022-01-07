; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/fifo/extr_fifo_create.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/fifo/extr_fifo_create.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"must be run as root\00", align 1
@temp_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fifo_create.XXXXXXXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1
@atexit_temp_dir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i64 (...) @geteuid()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @temp_dir, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @temp_dir, align 4
  %11 = call i32* @mkdtemp(i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i32, i32* @atexit_temp_dir, align 4
  %17 = call i32 @atexit(i32 %16)
  %18 = load i32, i32* @temp_dir, align 4
  %19 = call i64 @chdir(i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @fifo_create_test(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @fifo_permission_test(i32 %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %24

35:                                               ; preds = %24
  ret i32 0
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @mkdtemp(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i64 @chdir(i32) #1

declare dso_local i32 @fifo_create_test(i32) #1

declare dso_local i32 @fifo_permission_test(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
