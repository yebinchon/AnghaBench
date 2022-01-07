; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_opendev.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_opendev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"open failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @opendev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opendev(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32, i32* @_PATH_DEV, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EX_OSERR, align 4
  %28 = call i32 @errx(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @open(i8* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %29, %15, %11
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @EX_NOINPUT, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @err(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
