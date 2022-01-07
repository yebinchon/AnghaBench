; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_pwr_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_pwr_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_pwr_desc.pname = internal global [8 x i8*] [i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [33 x i8] c"Nominal operating supply voltage\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Minimum operating supply voltage\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Maximum operating supply voltage\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Continuous supply current\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Max current average over 1 second\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Max current average over 10 ms\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Power down supply current\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@print_pwr_desc.vexp = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"10uV\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"100uV\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1mV\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"10mV\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"100mV\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"1V\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"10V\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"100V\00", align 1
@print_pwr_desc.cexp = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"10nA\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1uA\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"10uA\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"100uA\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"1mA\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"10mA\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"100mA\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"1A\00", align 1
@print_pwr_desc.mant = internal global [16 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"4.5\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"5.5\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\09\09%s: \00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"%s x %s\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c", ext = 0x%x\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @print_pwr_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_pwr_desc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %2, align 8
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %5, align 4
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @print_pwr_desc.vexp, i64 0, i64 0), i8*** %6, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %64, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %67

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @print_pwr_desc.cexp, i64 0, i64 0), i8*** %6, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* @print_pwr_desc.pname, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i8*], [16 x i8*]* @print_pwr_desc.mant, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %38, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i8* %37, i8* %44)
  br label %46

46:                                               ; preds = %51, %25
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i32 %57)
  br label %46

59:                                               ; preds = %46
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %2, align 8
  br label %63

63:                                               ; preds = %59, %13
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %10

67:                                               ; preds = %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
