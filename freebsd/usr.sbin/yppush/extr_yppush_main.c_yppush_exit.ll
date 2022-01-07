; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobs = type { i64, i32, i8*, %struct.jobs*, i32 }

@yppush_joblist = common dso_local global %struct.jobs* null, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s has not responded\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s has responded\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%d transfer%sstill pending\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@YPPUSH_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"all transfers complete\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"warning: exiting with transfer to %s (transid = %lu) still pending\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @yppush_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yppush_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jobs*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %73, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %74

13:                                               ; preds = %11
  %14 = load %struct.jobs*, %struct.jobs** @yppush_joblist, align 8
  store %struct.jobs* %14, %struct.jobs** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %43, %13
  %16 = load %struct.jobs*, %struct.jobs** %3, align 8
  %17 = icmp ne %struct.jobs* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.jobs*, %struct.jobs** %3, align 8
  %20 = getelementptr inbounds %struct.jobs, %struct.jobs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @verbose, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.jobs*, %struct.jobs** %3, align 8
  %30 = getelementptr inbounds %struct.jobs, %struct.jobs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %43

34:                                               ; preds = %18
  %35 = load i32, i32* @verbose, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.jobs*, %struct.jobs** %3, align 8
  %39 = getelementptr inbounds %struct.jobs, %struct.jobs* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.jobs*, %struct.jobs** %3, align 8
  %45 = getelementptr inbounds %struct.jobs, %struct.jobs* %44, i32 0, i32 3
  %46 = load %struct.jobs*, %struct.jobs** %45, align 8
  store %struct.jobs* %46, %struct.jobs** %3, align 8
  br label %15

47:                                               ; preds = %15
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* @verbose, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* @YPPUSH_RESPONSE_TIMEOUT, align 4
  %62 = call i64 @yppush_svc_run(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %73

67:                                               ; preds = %47
  %68 = load i32, i32* @verbose, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  br label %74

73:                                               ; preds = %66
  br label %5

74:                                               ; preds = %72, %11
  %75 = load %struct.jobs*, %struct.jobs** @yppush_joblist, align 8
  store %struct.jobs* %75, %struct.jobs** %3, align 8
  br label %76

76:                                               ; preds = %92, %74
  %77 = load %struct.jobs*, %struct.jobs** %3, align 8
  %78 = icmp ne %struct.jobs* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load %struct.jobs*, %struct.jobs** %3, align 8
  %81 = getelementptr inbounds %struct.jobs, %struct.jobs* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.jobs*, %struct.jobs** %3, align 8
  %86 = getelementptr inbounds %struct.jobs, %struct.jobs* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.jobs*, %struct.jobs** %3, align 8
  %89 = getelementptr inbounds %struct.jobs, %struct.jobs* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %87, i8* %90)
  br label %92

92:                                               ; preds = %84, %79
  %93 = load %struct.jobs*, %struct.jobs** %3, align 8
  %94 = getelementptr inbounds %struct.jobs, %struct.jobs* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @svc_unregister(i32 %95, i32 1)
  %97 = load %struct.jobs*, %struct.jobs** %3, align 8
  %98 = getelementptr inbounds %struct.jobs, %struct.jobs* %97, i32 0, i32 3
  %99 = load %struct.jobs*, %struct.jobs** %98, align 8
  store %struct.jobs* %99, %struct.jobs** %3, align 8
  br label %76

100:                                              ; preds = %76
  %101 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i64 @yppush_svc_run(i32) #1

declare dso_local i32 @svc_unregister(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
