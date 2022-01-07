; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.thread = type { i32 }
%struct.timespec = type { i32, i32 }

@settime.maxtime = internal global %struct.timeval zeroinitializer, align 8
@settime.laststep = internal global %struct.timeval zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"Time adjustment clamped to -1 second\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Time adjustment clamped to +1 second\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.timeval*)* @settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @settime(%struct.thread* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timespec, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %10 = call i32 @microtime(%struct.timeval* %7)
  %11 = load %struct.timeval*, %struct.timeval** %5, align 8
  %12 = bitcast %struct.timeval* %6 to i8*
  %13 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = call i32 @timevalsub(%struct.timeval* %6, %struct.timeval* %7)
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @securelevel_gt(i32 %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @settime.maxtime, i32 0, i32 0), align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @settime.maxtime to i8*), i8* align 8 %34, i64 16, i1 false)
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.timeval*, %struct.timeval** %5, align 8
  %37 = bitcast %struct.timeval* %8 to i8*
  %38 = bitcast %struct.timeval* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = call i32 @timevalsub(%struct.timeval* %8, %struct.timeval* @settime.maxtime)
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, -1
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @settime.maxtime, i32 0, i32 0), align 8
  %45 = sub nsw i64 %44, 1
  %46 = load %struct.timeval*, %struct.timeval** %5, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %35
  br label %71

50:                                               ; preds = %24
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @settime.laststep, i32 0, i32 0), align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @EPERM, align 4
  store i32 %56, i32* %3, align 4
  br label %86

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.timeval*, %struct.timeval** %5, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %61, %57
  %69 = load %struct.timeval*, %struct.timeval** %5, align 8
  %70 = bitcast %struct.timeval* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @settime.laststep to i8*), i8* align 8 %70, i64 16, i1 false)
  br label %71

71:                                               ; preds = %68, %49
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.timeval*, %struct.timeval** %5, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.timeval*, %struct.timeval** %5, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %80, 1000
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = call i32 @tc_setclock(%struct.timespec* %9)
  %85 = call i32 (...) @resettodr()
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %72, %55
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @microtime(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @securelevel_gt(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tc_setclock(%struct.timespec*) #1

declare dso_local i32 @resettodr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
