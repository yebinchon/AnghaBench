; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptokeytest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptokeytest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"d:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@crid = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"test %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 100, label %15
    i32 118, label %18
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @optarg, align 4
  %17 = call i32 @crlookup(i32 %16)
  store i32 %17, i32* @crid, align 4
  br label %24

18:                                               ; preds = %13
  store i32 1, i32* @verbose, align 4
  br label %24

19:                                               ; preds = %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @usage(i8* %22)
  br label %24

24:                                               ; preds = %19, %18, %15
  br label %8

25:                                               ; preds = %8
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %42, %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 1000
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 (...) @testit()
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %34

45:                                               ; preds = %34
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @crlookup(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @testit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
