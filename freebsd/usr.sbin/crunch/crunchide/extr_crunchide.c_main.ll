; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"k:f:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

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
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @pname, align 8
  br label %14

14:                                               ; preds = %10, %2
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %29 [
    i32 107, label %22
    i32 102, label %25
    i32 118, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @add_to_keep_list(i32 %23)
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @add_file_to_keep_list(i32 %26)
  br label %31

28:                                               ; preds = %20
  store i32 1, i32* @verbose, align 4
  br label %31

29:                                               ; preds = %20
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %28, %25, %22
  br label %15

32:                                               ; preds = %15
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %32
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @hide_syms(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %5, align 8
  br label %46

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_to_keep_list(i32) #1

declare dso_local i32 @add_file_to_keep_list(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @hide_syms(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
