; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_flatprofheader.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_flatprofheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bflag = common dso_local global i64 0, align 8
@_PATH_FLAT_BLURB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0Agranularity: each sample hit covers %g byte(s)\00", align 1
@scale = common dso_local global double 0.000000e+00, align 8
@HISTORICAL_SCALE_2 = common dso_local global double 0.000000e+00, align 8
@totime = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c" for %.2f%% of %.2f seconds\0A\0A\00", align 1
@hz = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c" no time accumulated\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%5.5s %10.10s %8.8s %8.8s %8.8s %8.8s  %-8.8s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%  \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cumulative\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"self  \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"total \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"seconds \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ns/call\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"us/call\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ms/call\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flatprofheader() #0 {
  %1 = load i64, i64* @bflag, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @_PATH_FLAT_BLURB, align 4
  %5 = call i32 @printblurb(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load double, double* @scale, align 8
  %8 = load double, double* @HISTORICAL_SCALE_2, align 8
  %9 = fmul double %7, %8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), double %9)
  %11 = load double, double* @totime, align 8
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load double, double* @totime, align 8
  %15 = fdiv double 1.000000e+02, %14
  %16 = load double, double* @totime, align 8
  %17 = load double, double* @hz, align 8
  %18 = fdiv double %16, %17
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double %15, double %18)
  br label %22

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store double 1.000000e+00, double* @totime, align 8
  br label %22

22:                                               ; preds = %20, %13
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %24 = load double, double* @hz, align 8
  %25 = fcmp oge double %24, 1.000000e+07
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %22
  %28 = load double, double* @hz, align 8
  %29 = fcmp oge double %28, 1.000000e+04
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %26 ], [ %31, %27 ]
  %34 = load double, double* @hz, align 8
  %35 = fcmp oge double %34, 1.000000e+07
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %42

37:                                               ; preds = %32
  %38 = load double, double* @hz, align 8
  %39 = fcmp oge double %38, 1.000000e+04
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %36 ], [ %41, %37 ]
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %33, i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printblurb(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
