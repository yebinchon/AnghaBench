; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.worker = type { i32, i32, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.addrinfo = type { i32 }

@_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RES_INIT = common dso_local global i32 0, align 4
@RES_DNSRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"org\00", align 1
@__const.work.suffixes = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@max_random_sleep = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%s%s.%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"www.\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@randwords = common dso_local global i8** null, align 8
@nrandwords = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@hints = common dso_local global i32 0, align 4
@workers_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.worker*
  store %struct.worker* %13, %struct.worker** %4, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_res, i32 0, i32 0), align 4
  %15 = load i32, i32* @RES_INIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = call i64 (...) @res_init()
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @RES_DNSRCH, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_res, i32 0, i32 0), align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_res, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %21, %18
  br label %27

27:                                               ; preds = %137, %26
  %28 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([3 x i8*]* @__const.work.suffixes to i8*), i64 24, i1 false)
  store i64 3, i64* %6, align 8
  %29 = load i32, i32* @max_random_sleep, align 4
  %30 = call i32 @randomsleep(i32 %29)
  %31 = call i64 (...) @my_arc4random_r()
  %32 = urem i64 %31, 2
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %36 = load i8**, i8*** @randwords, align 8
  %37 = call i64 (...) @my_arc4random_r()
  %38 = load i64, i64* @nrandwords, align 8
  %39 = urem i64 %37, %38
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 (...) @my_arc4random_r()
  %43 = urem i64 %42, 3
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load i8**, i8*** @randwords, align 8
  %47 = call i64 (...) @my_arc4random_r()
  %48 = load i64, i64* @nrandwords, align 8
  %49 = urem i64 %47, %48
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i8* [ %51, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %52 ]
  %55 = call i64 (...) @my_arc4random_r()
  %56 = urem i64 %55, 3
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %35, i8* %41, i8* %54, i8* %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %137

62:                                               ; preds = %53
  %63 = load i32, i32* @CLOCK_REALTIME, align 4
  %64 = call i32 @clock_gettime(i32 %63, %struct.timespec* %7)
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @hints, align 4
  %67 = call i32 @getaddrinfo(i8* %65, i32* null, i32 %66, %struct.addrinfo** %9)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @CLOCK_REALTIME, align 4
  %69 = call i32 @clock_gettime(i32 %68, %struct.timespec* %8)
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %71
  store i64 %74, i64* %72, align 8
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %62
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1000000000
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %83, %62
  %91 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.worker*, %struct.worker** %4, align 8
  %94 = getelementptr inbounds %struct.worker, %struct.worker* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %92, %96
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.worker*, %struct.worker** %4, align 8
  %102 = getelementptr inbounds %struct.worker, %struct.worker* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %100, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.worker*, %struct.worker** %4, align 8
  %110 = getelementptr inbounds %struct.worker, %struct.worker* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.timespec, %struct.timespec* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %108, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106, %90
  %115 = load %struct.worker*, %struct.worker** %4, align 8
  %116 = getelementptr inbounds %struct.worker, %struct.worker* %115, i32 0, i32 2
  %117 = bitcast %struct.timespec* %116 to i8*
  %118 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 16, i1 false)
  br label %119

119:                                              ; preds = %114, %106, %98
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.worker*, %struct.worker** %4, align 8
  %126 = getelementptr inbounds %struct.worker, %struct.worker* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %130 = call i32 @freeaddrinfo(%struct.addrinfo* %129)
  br label %136

131:                                              ; preds = %119
  %132 = load %struct.worker*, %struct.worker** %4, align 8
  %133 = getelementptr inbounds %struct.worker, %struct.worker* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %131, %124
  br label %137

137:                                              ; preds = %136, %61
  %138 = load i32, i32* @workers_stop, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %27, label %141

141:                                              ; preds = %137
  %142 = call i32 @pthread_exit(i32* null)
  %143 = load i8*, i8** %2, align 8
  ret i8* %143
}

declare dso_local i64 @res_init(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @randomsleep(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @my_arc4random_r(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, i32, %struct.addrinfo**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
