; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_check_siginfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_check_siginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_info = common dso_local global i64 0, align 8
@infile = common dso_local global i8* null, align 8
@infile_total = common dso_local global i32 0, align 4
@infile_current = common dso_local global double 0.000000e+00, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: done %llu/%llu bytes %d%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: done %llu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_siginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_siginfo() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @print_info, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %34

5:                                                ; preds = %0
  %6 = load i8*, i8** @infile, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i32, i32* @infile_total, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load double, double* @infile_current, align 8
  %13 = fmul double 1.000000e+02, %12
  %14 = load i32, i32* @infile_total, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %13, %15
  %17 = fptosi double %16 to i32
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @infile, align 8
  %20 = load double, double* @infile_current, align 8
  %21 = fptoui double %20 to i64
  %22 = load i32, i32* @infile_total, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %21, i64 %23, i32 %24)
  br label %32

26:                                               ; preds = %8
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** @infile, align 8
  %29 = load double, double* @infile_current, align 8
  %30 = fptoui double %29 to i64
  %31 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %28, i64 %30)
  br label %32

32:                                               ; preds = %26, %11
  br label %33

33:                                               ; preds = %32, %5
  store i64 0, i64* @print_info, align 8
  br label %34

34:                                               ; preds = %33, %4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
