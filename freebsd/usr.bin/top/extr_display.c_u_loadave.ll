; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_loadave.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_loadave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lmpid = common dso_local global i32 0, align 4
@x_lastpid = common dso_local global i32 0, align 4
@y_lastpid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@x_loadave = common dso_local global i32 0, align 4
@x_loadave_nompid = common dso_local global i32 0, align 4
@y_loadave = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%5.2f\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_loadave(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @lmpid, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* @x_lastpid, align 4
  %14 = load i32, i32* @y_lastpid, align 4
  %15 = call i32 @Move_to(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* @lmpid, align 4
  br label %19

19:                                               ; preds = %12, %8
  %20 = load i32, i32* @x_loadave, align 4
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @x_loadave_nompid, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @y_loadave, align 4
  %26 = call i32 @Move_to(i32 %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %35 = load double*, double** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34, double %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  ret void
}

declare dso_local i32 @Move_to(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
