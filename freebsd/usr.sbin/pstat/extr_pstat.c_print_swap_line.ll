; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_print_swap_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_print_swap_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%-15s %*jd \00", align 1
@humanflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%8s %8s %5.0f%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%8jd %8jd %5.0f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, float)* @print_swap_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_swap_line(i8* %0, i8* %1, i8* %2, i8* %3, float %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store float %4, float* %10, align 4
  %16 = call i32 (...) @getpagesize()
  store i32 %16, i32* %14, align 4
  %17 = call i32 @getbsize(i32* %13, i64* %15)
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @CONVERT(i8* %20)
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i64 %21)
  %23 = load i64, i64* @humanflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %5
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @CONVERT_BLOCKS(i8* %27)
  %29 = load i32, i32* @HN_AUTOSCALE, align 4
  %30 = load i32, i32* @HN_B, align 4
  %31 = load i32, i32* @HN_NOSPACE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HN_DECIMAL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @humanize_number(i8* %26, i32 5, i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %34)
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @CONVERT_BLOCKS(i8* %37)
  %39 = load i32, i32* @HN_AUTOSCALE, align 4
  %40 = load i32, i32* @HN_B, align 4
  %41 = load i32, i32* @HN_NOSPACE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @HN_DECIMAL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @humanize_number(i8* %36, i32 5, i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44)
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %48 = load float, float* %10, align 4
  %49 = fpext float %48 to double
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47, double %49)
  br label %61

51:                                               ; preds = %5
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @CONVERT(i8* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @CONVERT(i8* %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load float, float* %10, align 4
  %59 = fpext float %58 to double
  %60 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %57, double %59)
  br label %61

61:                                               ; preds = %51, %25
  ret void
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getbsize(i32*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @CONVERT(i8*) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @CONVERT_BLOCKS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
