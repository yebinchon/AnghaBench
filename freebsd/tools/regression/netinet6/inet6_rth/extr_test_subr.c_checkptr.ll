; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checkptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checkptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@g_testdesc = common dso_local global i8* null, align 8
@g_total = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@g_pass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1
@g_errbuf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" : Expected %#x, but got %#x\00", align 1
@g_fail = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" %d - %s (%s)\00", align 1
@g_funcname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkptr(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @LINESIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* @LINESIZE, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load i8*, i8** @g_testdesc, align 8
  %18 = load i32, i32* @LINESIZE, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* %19)
  store i32 1, i32* %8, align 4
  %21 = load i32, i32* @g_total, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g_total, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @LINESIZE, align 4
  %28 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @g_pass, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g_pass, align 4
  store i32 0, i32* %8, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load i32, i32* @LINESIZE, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** @g_errbuf, align 8
  %35 = load i32, i32* @LINESIZE, align 4
  %36 = load i64, i64* %4, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load i32, i32* @g_fail, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @g_fail, align 4
  br label %43

43:                                               ; preds = %31, %26
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %14, i64 %45
  %47 = load i32, i32* @LINESIZE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* @g_total, align 4
  %51 = load i8*, i8** @g_funcname, align 8
  %52 = load i8*, i8** @g_testdesc, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %50, i8* %51, i8* %52)
  %54 = call i32 @printf(i8* %14)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i8*, i8** @g_errbuf, align 8
  %59 = call i32 @printf(i8* %58)
  br label %60

60:                                               ; preds = %57, %43
  %61 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @fflush(i32* null)
  %63 = load i8*, i8** @g_errbuf, align 8
  %64 = load i32, i32* @LINESIZE, align 4
  %65 = call i32 @memset(i8* %63, i32 0, i32 %64)
  %66 = load i8*, i8** @g_testdesc, align 8
  %67 = load i32, i32* @LINESIZE, align 4
  %68 = call i32 @memset(i8* %66, i32 0, i32 %67)
  %69 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

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
