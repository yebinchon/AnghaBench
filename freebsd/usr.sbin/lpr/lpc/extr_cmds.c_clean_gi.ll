; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_clean_gi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_clean_gi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cln_queuecnt = common dso_local global i64 0, align 8
@cln_now = common dso_local global i32 0, align 4
@cln_minage = common dso_local global double 0.000000e+00, align 8
@cln_filecnt = common dso_local global i64 0, align 8
@cln_sizecnt = common dso_local global i64 0, align 8
@cln_debug = common dso_local global i64 0, align 8
@cln_testonly = common dso_local global i64 0, align 8
@wrapup_clean = common dso_local global i32 0, align 4
@generic_wrapup = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@generic_nullarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid option '%s'\0A\00", align 1
@generic_initerr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_gi(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* @cln_queuecnt, align 8
  %5 = call i32 @time(i32* null)
  store i32 %5, i32* @cln_now, align 4
  store double 3.600000e+03, double* @cln_minage, align 8
  store i64 0, i64* @cln_filecnt, align 8
  store i64 0, i64* @cln_sizecnt, align 8
  store i64 0, i64* @cln_debug, align 8
  store i64 0, i64* @cln_testonly, align 8
  store i32* @wrapup_clean, i32** @generic_wrapup, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 45
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %36

16:                                               ; preds = %9
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* @cln_debug, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @cln_debug, align 8
  %24 = load i8*, i8** @generic_nullarg, align 8
  %25 = load i8**, i8*** %4, align 8
  store i8* %24, i8** %25, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 1, i32* @generic_initerr, align 4
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %4, align 8
  br label %6

36:                                               ; preds = %15, %6
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
