; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checknum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_test_subr.c_checknum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@g_testdesc = common dso_local global i8* null, align 8
@g_total = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@g_pass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1
@g_errbuf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c" : Expected %d, but got %d\00", align 1
@g_fail = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" %d - %s (%s)\00", align 1
@g_funcname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checknum(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @LINESIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* @LINESIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load i8*, i8** @g_testdesc, align 8
  %21 = load i32, i32* @LINESIZE, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %21, i8* %22)
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @g_total, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @g_total, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %45 [
    i32 0, label %27
    i32 1, label %33
    i32 -1, label %39
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %10, align 4
  br label %45

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %10, align 4
  br label %45

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %4, %39, %33, %27
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @LINESIZE, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @g_pass, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @g_pass, align 4
  store i32 0, i32* %11, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load i32, i32* @LINESIZE, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** @g_errbuf, align 8
  %57 = load i32, i32* @LINESIZE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @g_fail, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @g_fail, align 4
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  %67 = load i32, i32* @LINESIZE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* @g_total, align 4
  %71 = load i8*, i8** @g_funcname, align 8
  %72 = load i8*, i8** @g_testdesc, align 8
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %71, i8* %72)
  %74 = call i32 @printf(i8* %17)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load i8*, i8** @g_errbuf, align 8
  %79 = call i32 @printf(i8* %78)
  br label %80

80:                                               ; preds = %77, %63
  %81 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @fflush(i32* null)
  %83 = load i8*, i8** @g_errbuf, align 8
  %84 = load i32, i32* @LINESIZE, align 4
  %85 = call i32 @memset(i8* %83, i32 0, i32 %84)
  %86 = load i8*, i8** @g_testdesc, align 8
  %87 = load i32, i32* @LINESIZE, align 4
  %88 = call i32 @memset(i8* %86, i32 0, i32 %87)
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
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
