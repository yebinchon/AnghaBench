; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checkstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checkstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@g_testdesc = common dso_local global i8* null, align 8
@g_total = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@g_pass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1
@g_errbuf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c" : Expected %s, but got %s\00", align 1
@g_fail = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" %d - %s (%s)\00", align 1
@g_funcname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkstr(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @LINESIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = load i32, i32* @LINESIZE, align 4
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = load i8*, i8** @g_testdesc, align 8
  %20 = load i32, i32* @LINESIZE, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 %20, i8* %21)
  store i32 1, i32* %10, align 4
  %23 = load i32, i32* @g_total, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @g_total, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @strncmp(i8* %25, i8* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @LINESIZE, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @g_pass, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @g_pass, align 4
  store i32 0, i32* %10, align 4
  br label %45

35:                                               ; preds = %4
  %36 = load i32, i32* @LINESIZE, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** @g_errbuf, align 8
  %39 = load i32, i32* @LINESIZE, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i32, i32* @g_fail, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @g_fail, align 4
  br label %45

45:                                               ; preds = %35, %30
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %16, i64 %47
  %49 = load i32, i32* @LINESIZE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* @g_total, align 4
  %53 = load i8*, i8** @g_funcname, align 8
  %54 = load i8*, i8** @g_testdesc, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %53, i8* %54)
  %56 = call i32 @printf(i8* %16)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i8*, i8** @g_errbuf, align 8
  %61 = call i32 @printf(i8* %60)
  br label %62

62:                                               ; preds = %59, %45
  %63 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 @fflush(i32* null)
  %65 = load i8*, i8** @g_errbuf, align 8
  %66 = load i32, i32* @LINESIZE, align 4
  %67 = call i32 @memset(i8* %65, i32 0, i32 %66)
  %68 = load i8*, i8** @g_testdesc, align 8
  %69 = load i32, i32* @LINESIZE, align 4
  %70 = call i32 @memset(i8* %68, i32 0, i32 %69)
  %71 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
