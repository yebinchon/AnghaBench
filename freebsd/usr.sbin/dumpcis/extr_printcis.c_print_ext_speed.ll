; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_ext_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_ext_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_ext_speed.mant = internal global [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"4.5\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"5.5\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"7.0\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"8.0\00", align 1
@print_ext_speed.exp = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"1 ns\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"10 ns\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"100 ns\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"1 us\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"10 us\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"100 us\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"1 ms\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"10 ms\00", align 1
@print_ext_speed.scale_name = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"1,000\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"10,000\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"100,000\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"1,000,000\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"10,000,000\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Speed = %s x %s\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c", scaled by %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_ext_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ext_speed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 3
  %7 = and i32 %6, 15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [16 x i8*], [16 x i8*]* @print_ext_speed.mant, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8*], [8 x i8*]* @print_ext_speed.exp, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* %10, i8* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8*], [8 x i8*]* @print_ext_speed.scale_name, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
