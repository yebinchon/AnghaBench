; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_cpustates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_cpustates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_cpus = common dso_local global i32 0, align 4
@cpustate_names = common dso_local global i8** null, align 8
@cpustates_column = common dso_local global i64 0, align 8
@y_cpustates = common dso_local global i64 0, align 8
@lastline = common dso_local global i64 0, align 8
@lcpustates = common dso_local global i32* null, align 8
@num_cpustates = common dso_local global i32 0, align 4
@cpustate_columns = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%4.0f\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%4.1f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_cpustates(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %86, %1
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @num_cpus, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %89

15:                                               ; preds = %11
  %16 = load i8**, i8*** @cpustate_names, align 8
  store i8** %16, i8*** %4, align 8
  %17 = load i64, i64* @cpustates_column, align 8
  %18 = load i64, i64* @y_cpustates, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @Move_to(i64 %17, i64 %21)
  %23 = load i64, i64* @y_cpustates, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* @lastline, align 8
  %27 = load i32*, i32** @lcpustates, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @num_cpustates, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** @cpustate_columns, align 8
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %78, %15
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %4, align 8
  %37 = load i8*, i8** %35, align 8
  store i8* %37, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %85

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load i64, i64* @cpustates_column, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i64, i64* @y_cpustates, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @Move_to(i64 %55, i64 %59)
  %61 = load i64, i64* @y_cpustates, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  store i64 %64, i64* @lastline, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sge i32 %67, 1000
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %71 = load i32, i32* %3, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 1.000000e+01
  %74 = call i32 @printf(i8* %70, double %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %50, %44
  br label %78

78:                                               ; preds = %77, %39
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %2, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  br label %34

85:                                               ; preds = %34
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %11

89:                                               ; preds = %11
  %90 = load i32*, i32** %6, align 8
  store i32* %90, i32** %2, align 8
  ret void
}

declare dso_local i32 @Move_to(i64, i64) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
