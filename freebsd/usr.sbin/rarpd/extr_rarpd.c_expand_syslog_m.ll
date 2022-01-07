; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_expand_syslog_m.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_expand_syslog_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%.*s%s\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @expand_syslog_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_syslog_m(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %17, i32 %23, i8* %24, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %58

34:                                               ; preds = %16
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %6, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i8*, i8** %8, align 8
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %51, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
