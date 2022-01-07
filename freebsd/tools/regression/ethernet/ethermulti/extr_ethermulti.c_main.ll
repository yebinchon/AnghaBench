; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"i:rv\00", align 1
@optarg = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@dorandom = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"1..1\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Not running as root, can't run tests as non-root\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Running tests with ruid %d euid %d sock uid 0\0A\00", align 1
@PRIV_ASIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ok 1 - ethermulti\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %18 [
    i32 105, label %14
    i32 114, label %16
    i32 118, label %17
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** @optarg, align 8
  store i32* %15, i32** @ifname, align 8
  br label %20

16:                                               ; preds = %12
  store i32 1, i32* @dorandom, align 4
  br label %20

17:                                               ; preds = %12
  store i32 1, i32* @verbose, align 4
  br label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %17, %16, %14
  br label %7

21:                                               ; preds = %7
  %22 = load i32*, i32** @ifname, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @geteuid()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (...) @getuid()
  %35 = call i32 (...) @geteuid()
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @PRIV_ASIS, align 4
  %38 = call i32 @testsuite(i32 %37)
  br label %39

39:                                               ; preds = %32, %30
  %40 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @testsuite(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
