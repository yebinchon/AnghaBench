; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getutimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getutimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.timespec = type { i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, i32, %struct.timespec*)* @getutimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getutimes(%struct.timeval* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca [2 x %struct.timeval], align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %11 = load %struct.timeval*, %struct.timeval** %5, align 8
  %12 = icmp eq %struct.timeval* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.timespec*, %struct.timespec** %7, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i64 0
  %16 = call i32 @vfs_timestamp(%struct.timespec* %15)
  %17 = load %struct.timespec*, %struct.timespec** %7, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i64 1
  %19 = load %struct.timespec*, %struct.timespec** %7, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0
  %21 = bitcast %struct.timespec* %18 to i8*
  %22 = bitcast %struct.timespec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %75

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UIO_SYSSPACE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load %struct.timeval*, %struct.timeval** %5, align 8
  store %struct.timeval* %28, %struct.timeval** %9, align 8
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.timeval*, %struct.timeval** %5, align 8
  %31 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %32 = call i32 @copyin(%struct.timeval* %30, %struct.timeval* %31, i32 8)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %29
  %37 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  store %struct.timeval* %37, %struct.timeval** %9, align 8
  br label %38

38:                                               ; preds = %36, %27
  %39 = load %struct.timeval*, %struct.timeval** %9, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i64 0
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = load %struct.timeval*, %struct.timeval** %9, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i64 0
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 1000000
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.timeval*, %struct.timeval** %9, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %51, i64 1
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.timeval*, %struct.timeval** %9, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %57, i64 1
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 1000000
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50, %44, %38
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %56
  %65 = load %struct.timeval*, %struct.timeval** %9, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i64 0
  %67 = load %struct.timespec*, %struct.timespec** %7, align 8
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %67, i64 0
  %69 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %66, %struct.timespec* %68)
  %70 = load %struct.timeval*, %struct.timeval** %9, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 1
  %72 = load %struct.timespec*, %struct.timespec** %7, align 8
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %72, i64 1
  %74 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %71, %struct.timespec* %73)
  br label %75

75:                                               ; preds = %64, %13
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %62, %34
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copyin(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
