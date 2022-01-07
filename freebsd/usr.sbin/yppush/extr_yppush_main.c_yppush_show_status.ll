; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_show_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_show_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobs = type { i64, i32, i32, i32, i32, %struct.jobs* }

@yppush_joblist = common dso_local global %struct.jobs* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"warning: received callback with invalid transaction ID: %lu\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"warning: received callback with duplicate transaction ID: %lu\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"checking return status: transaction ID: %lu\00", align 1
@YPXFR_SUCC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"transfer of map %s to server %s %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"status returned by ypxfr: %s\00", align 1
@YPXFR_AGE = common dso_local global i64 0, align 8
@yppush_running_jobs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @yppush_show_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yppush_show_status(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jobs*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.jobs*, %struct.jobs** @yppush_joblist, align 8
  store %struct.jobs* %7, %struct.jobs** %6, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load %struct.jobs*, %struct.jobs** %6, align 8
  %10 = icmp ne %struct.jobs* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.jobs*, %struct.jobs** %6, align 8
  %13 = getelementptr inbounds %struct.jobs, %struct.jobs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.jobs*, %struct.jobs** %6, align 8
  %20 = getelementptr inbounds %struct.jobs, %struct.jobs* %19, i32 0, i32 5
  %21 = load %struct.jobs*, %struct.jobs** %20, align 8
  store %struct.jobs* %21, %struct.jobs** %6, align 8
  br label %8

22:                                               ; preds = %17, %8
  %23 = load %struct.jobs*, %struct.jobs** %6, align 8
  %24 = icmp eq %struct.jobs* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i8*, i64, ...) @yp_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 0, i32* %3, align 4
  br label %86

28:                                               ; preds = %22
  %29 = load %struct.jobs*, %struct.jobs** %6, align 8
  %30 = getelementptr inbounds %struct.jobs, %struct.jobs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i32 (i8*, i64, ...) @yp_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  store i32 0, i32* %3, align 4
  br label %86

36:                                               ; preds = %28
  %37 = load i32, i32* @verbose, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.jobs*, %struct.jobs** %6, align 8
  %41 = getelementptr inbounds %struct.jobs, %struct.jobs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, i64, ...) @yp_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @YPXFR_SUCC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @verbose, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48, %44
  %52 = load %struct.jobs*, %struct.jobs** %6, align 8
  %53 = getelementptr inbounds %struct.jobs, %struct.jobs* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.jobs*, %struct.jobs** %6, align 8
  %57 = getelementptr inbounds %struct.jobs, %struct.jobs* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @YPXFR_SUCC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %64 = call i32 (i8*, i64, ...) @yp_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %55, i32 %58, i8* %63)
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @YPXFR_AGE, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @yppusherr_string(i64 %69)
  br label %74

71:                                               ; preds = %51
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @ypxfrerr_string(i64 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i64 [ %70, %68 ], [ %73, %71 ]
  %76 = call i32 (i8*, i64, ...) @yp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %74, %48
  %78 = load %struct.jobs*, %struct.jobs** %6, align 8
  %79 = getelementptr inbounds %struct.jobs, %struct.jobs* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load %struct.jobs*, %struct.jobs** %6, align 8
  %81 = getelementptr inbounds %struct.jobs, %struct.jobs* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @svc_unregister(i32 %82, i32 1)
  %84 = load i32, i32* @yppush_running_jobs, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @yppush_running_jobs, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %33, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @yp_error(i8*, i64, ...) #1

declare dso_local i64 @yppusherr_string(i64) #1

declare dso_local i64 @ypxfrerr_string(i64) #1

declare dso_local i32 @svc_unregister(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
