; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/gnu/extr_gnu.c_ctl_uc_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/gnu/extr_gnu.c_ctl_uc_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_hooks = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@unicode_hook = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@ICONV_SET_HOOKS = common dso_local global i32 0, align 4
@uc_hook = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_uc_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_uc_hook() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.iconv_hooks, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i64 15, i64* %4, align 8
  store i64 40, i64* %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8** %7, i8*** %6, align 8
  %10 = load i32, i32* @unicode_hook, align 4
  %11 = getelementptr inbounds %struct.iconv_hooks, %struct.iconv_hooks* %2, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.iconv_hooks, %struct.iconv_hooks* %2, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = call i8* @malloc(i32 40)
  store i8* %13, i8** %9, align 8
  store i8** %9, i8*** %8, align 8
  %14 = call i64 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %42

18:                                               ; preds = %0
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @ICONV_SET_HOOKS, align 4
  %21 = bitcast %struct.iconv_hooks* %2 to i8*
  %22 = call i64 @iconvctl(i64 %19, i32 %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %42

25:                                               ; preds = %18
  %26 = load i64, i64* %3, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = call i64 @iconv(i64 %26, i8** %27, i64* %4, i8** %28, i64* %5)
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %1, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @iconv_close(i64 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %1, align 4
  br label %42

37:                                               ; preds = %32
  %38 = load i64, i64* @uc_hook, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %37, %36, %31, %24, %17
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @iconvctl(i64, i32, i8*) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
