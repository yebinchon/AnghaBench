; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [options] bytes:label\0A\00", align 1
@pgm = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"       %s [options] -m bytes1:label1 path1 [bytes2:label2 path2 ...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"OPTIONS:\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09%-14s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-a text\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Append text. Displayed below file progress indicators.\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"-b backtitle\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"String to be displayed on the backdrop, at top-left.\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Debug. Write to standard output instead of dialog.\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Use dialog(1) instead of dialog(3) [default].\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Produce this output on standard error and exit.\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"-i format\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Customize status line format. See fdpv(1) for details.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"-I format\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-L size\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"Label size. Must be a number greater than 0, or -1.\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Enable processing of multiple file argiments.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"-n num\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Display at-most num files per screen. Default is -1.\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-N\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"No overrun. Stop reading input at stated length, if any.\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"-o file\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"Output data to file. First %s replaced with label text.\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"-p text\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"Prefix text. Displayed above file progress indicators.\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"-P size\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"Mini-progressbar size. Must be a number greater than 3.\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"-t title\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"Title string to be displayed at top of dialog(1) box.\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"Test mode. Don't actually read any data, but fake it.\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"-U num\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"Update status line num times per-second. Default is 2.\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Wide. Width of `-p' and `-a' text bump dialog(1) width.\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"-x cmd\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"Send data to executed cmd. First %s replaced with label.\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"X11. Use Xdialog(1) instead of dialog(1).\00", align 1
@OPTFMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i64, i64* @debug, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @EXIT_FAILURE, align 4
  %5 = call i32 @exit(i32 %4) #3
  unreachable

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8*, i8** @pgm, align 8
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @pgm, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i64 0, i64 0))
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i64 0, i64 0))
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0))
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.40, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0))
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
