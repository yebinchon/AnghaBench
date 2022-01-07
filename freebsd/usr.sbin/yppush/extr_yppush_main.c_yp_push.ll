; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yp_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yp_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobs = type { i64, i64, i64, %struct.jobs*, i64, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@yppush_xfrrespprog_1 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"can't register yppush_xfrrespprog_1\00", align 1
@yppush_joblist = common dso_local global %struct.jobs* null, align 8
@verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"initiating transfer: %s -> %s (transid = %lu)\00", align 1
@yppush_mapname = common dso_local global i32 0, align 4
@YPPUSH_YPSERV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s has been called\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @yp_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yp_push(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.jobs*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i64 @malloc(i32 64)
  %13 = inttoptr i64 %12 to %struct.jobs*
  store %struct.jobs* %13, %struct.jobs** %10, align 8
  %14 = icmp eq %struct.jobs* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @yppush_exit(i32 1)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_4__* @svcudp_create(i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  store i64 1073741824, i64* %7, align 8
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %22, 1610612735
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @yppush_xfrrespprog_1, align 4
  %28 = load i32, i32* @IPPROTO_UDP, align 4
  %29 = call i64 @svc_register(%struct.TYPE_4__* %25, i64 %26, i32 1, i32 %27, i32 %28)
  %30 = load i64, i64* @TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %21

37:                                               ; preds = %32, %21
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 1610612735
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @yppush_exit(i32 1)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.jobs*, %struct.jobs** %10, align 8
  %45 = getelementptr inbounds %struct.jobs, %struct.jobs* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.jobs*, %struct.jobs** %10, align 8
  %48 = getelementptr inbounds %struct.jobs, %struct.jobs* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.jobs*, %struct.jobs** %10, align 8
  %53 = getelementptr inbounds %struct.jobs, %struct.jobs* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = load %struct.jobs*, %struct.jobs** %10, align 8
  %57 = getelementptr inbounds %struct.jobs, %struct.jobs* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @strdup(i8* %58)
  %60 = load %struct.jobs*, %struct.jobs** %10, align 8
  %61 = getelementptr inbounds %struct.jobs, %struct.jobs* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.jobs*, %struct.jobs** %10, align 8
  %64 = getelementptr inbounds %struct.jobs, %struct.jobs* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.jobs*, %struct.jobs** %10, align 8
  %66 = getelementptr inbounds %struct.jobs, %struct.jobs* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.jobs*, %struct.jobs** @yppush_joblist, align 8
  %68 = load %struct.jobs*, %struct.jobs** %10, align 8
  %69 = getelementptr inbounds %struct.jobs, %struct.jobs* %68, i32 0, i32 3
  store %struct.jobs* %67, %struct.jobs** %69, align 8
  %70 = load %struct.jobs*, %struct.jobs** %10, align 8
  store %struct.jobs* %70, %struct.jobs** @yppush_joblist, align 8
  %71 = load i32, i32* @verbose, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %43
  %74 = load i32, i32* @yppush_mapname, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %43
  %79 = load %struct.jobs*, %struct.jobs** %10, align 8
  %80 = call i64 @yppush_send_xfr(%struct.jobs* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load %struct.jobs*, %struct.jobs** %10, align 8
  %84 = getelementptr inbounds %struct.jobs, %struct.jobs* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.jobs*, %struct.jobs** %10, align 8
  %89 = getelementptr inbounds %struct.jobs, %struct.jobs* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  br label %93

91:                                               ; preds = %82
  %92 = load i64, i64* @YPPUSH_YPSERV, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = phi i64 [ %90, %87 ], [ %92, %91 ]
  %95 = load %struct.jobs*, %struct.jobs** %10, align 8
  %96 = getelementptr inbounds %struct.jobs, %struct.jobs* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @yppush_show_status(i64 %94, i64 %97)
  br label %106

99:                                               ; preds = %78
  %100 = load i32, i32* @verbose, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %93
  ret i32 0
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i32 @yppush_exit(i32) #1

declare dso_local %struct.TYPE_4__* @svcudp_create(i32) #1

declare dso_local i64 @svc_register(%struct.TYPE_4__*, i64, i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @yppush_send_xfr(%struct.jobs*) #1

declare dso_local i32 @yppush_show_status(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
