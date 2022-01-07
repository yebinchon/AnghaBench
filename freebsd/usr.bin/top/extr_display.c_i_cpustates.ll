; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_cpustates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_cpustates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_cpus = common dso_local global i32 0, align 4
@cpustate_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"\0ACPU: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0ACPU %d: \00", align 1
@cpustates_column = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@lastline = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%s%4.0f%% %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s%4.1f%% %s\00", align 1
@num_cpustates = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@lcpustates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_cpustates(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  store i32* %9, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @num_cpus, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load i8**, i8*** @cpustate_names, align 8
  store i8** %15, i8*** %5, align 8
  %16 = load i32, i32* @num_cpus, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %28, %20
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @cpustates_column, align 4
  %27 = icmp sle i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %23

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* @lastline, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @lastline, align 4
  br label %34

34:                                               ; preds = %65, %31
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  %37 = load i8*, i8** %35, align 8
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %2, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 1000
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @num_cpustates, align 4
  %55 = srem i32 %52, %54
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %59 = load i32, i32* %4, align 4
  %60 = sitofp i32 %59 to float
  %61 = fpext float %60 to double
  %62 = fdiv double %61, 1.000000e+01
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, ...) @printf(i8* %51, i8* %58, double %62, i8* %63)
  br label %65

65:                                               ; preds = %44, %39
  br label %34

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32*, i32** %7, align 8
  store i32* %71, i32** %2, align 8
  %72 = load i32, i32* @lcpustates, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @num_cpustates, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = load i32, i32* @num_cpus, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32 %72, i32* %73, i32 %80)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
