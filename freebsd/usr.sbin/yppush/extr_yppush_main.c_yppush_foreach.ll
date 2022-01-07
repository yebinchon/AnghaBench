; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YP_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@skip_master = common dso_local global i64 0, align 8
@yppush_master = common dso_local global i32 0, align 4
@yppush_running_jobs = common dso_local global i64 0, align 8
@yppush_jobs = common dso_local global i64 0, align 8
@yppush_timeout = common dso_local global i32 0, align 4
@yppush_mapname = common dso_local global i32 0, align 4
@yppush_transid = common dso_local global i32 0, align 4
@yp_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32, i8*)* @yppush_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yppush_foreach(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @YP_TRUE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %7, align 4
  br label %67

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %67

27:                                               ; preds = %20
  %28 = load i64, i64* @skip_master, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* @yppush_master, align 4
  %33 = call i64 @strcasecmp(i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @free(i8* %36)
  store i32 0, i32* %7, align 4
  br label %67

38:                                               ; preds = %30, %27
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i64, i64* @yppush_running_jobs, align 8
  %41 = load i64, i64* @yppush_jobs, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @yppush_timeout, align 4
  %45 = call i64 @yppush_svc_run(i32 %44)
  %46 = icmp sgt i64 %45, 0
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %39

50:                                               ; preds = %47
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* @yppush_mapname, align 4
  %53 = load i32, i32* @yppush_transid, align 4
  %54 = call i64 @yp_push(i8* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* @yp_errno, align 4
  store i32 %59, i32* %7, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load i64, i64* @yppush_running_jobs, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @yppush_running_jobs, align 8
  %63 = load i32, i32* @yppush_transid, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @yppush_transid, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @free(i8* %65)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %56, %35, %26, %18
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @yppush_svc_run(i32) #1

declare dso_local i64 @yp_push(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
