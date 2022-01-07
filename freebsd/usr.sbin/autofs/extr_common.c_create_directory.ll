; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_create_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_create_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot create %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_directory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8* @checked_strdup(i8* %17)
  store i8* %18, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  %19 = call i8* @checked_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %43, %1
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %44

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @concat(i8* %26, i8 signext 47, i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @mkdir(i8* %32, i32 493)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EEXIST, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @log_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %47

43:                                               ; preds = %36, %25
  br label %20

44:                                               ; preds = %24
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @concat(i8*, i8 signext, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
