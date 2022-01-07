; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_kern_sem_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_kern_sem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timespec = type { i32 }
%struct.timeval = type { i64 }
%struct.file = type { i32, %struct.ksem* }
%struct.ksem = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c">>> kern_sem_wait entered! pid=%d\0A\00", align 1
@CAP_SEM_WAIT = common dso_local global i32 0, align 4
@sem_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c">>> kern_sem_wait critical section entered! pid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"kern_sem_wait value = %d, tryflag %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"kern_sem_wait value post-decrement = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"<<< kern_sem_wait leaving, pid=%d, error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, %struct.timespec*)* @kern_sem_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_sem_wait(%struct.thread* %0, i32 %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.ksem*, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DP(i8* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @AUDIT_ARG_FD(i32 %26)
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CAP_SEM_WAIT, align 4
  %31 = call i32 @cap_rights_init(i32* %13, i32 %30)
  %32 = call i32 @ksem_get(%struct.thread* %28, i32 %29, i32 %31, %struct.file** %14)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %5, align 4
  br label %142

37:                                               ; preds = %4
  %38 = load %struct.file*, %struct.file** %14, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = load %struct.ksem*, %struct.ksem** %39, align 8
  store %struct.ksem* %40, %struct.ksem** %15, align 8
  %41 = call i32 @mtx_lock(i32* @sem_lock)
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DP(i8* %49)
  %51 = load %struct.ksem*, %struct.ksem** %15, align 8
  %52 = getelementptr inbounds %struct.ksem, %struct.ksem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @DP(i8* %56)
  %58 = load %struct.ksem*, %struct.ksem** %15, align 8
  %59 = getelementptr inbounds %struct.ksem, %struct.ksem* %58, i32 0, i32 3
  %60 = call i32 @vfs_timestamp(i32* %59)
  br label %61

61:                                               ; preds = %115, %37
  %62 = load %struct.ksem*, %struct.ksem** %15, align 8
  %63 = getelementptr inbounds %struct.ksem, %struct.ksem* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %61
  %67 = load %struct.ksem*, %struct.ksem** %15, align 8
  %68 = getelementptr inbounds %struct.ksem, %struct.ksem* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @EAGAIN, align 4
  store i32 %74, i32* %16, align 4
  br label %107

75:                                               ; preds = %66
  %76 = load %struct.timespec*, %struct.timespec** %9, align 8
  %77 = icmp eq %struct.timespec* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.ksem*, %struct.ksem** %15, align 8
  %80 = getelementptr inbounds %struct.ksem, %struct.ksem* %79, i32 0, i32 2
  %81 = call i32 @cv_wait_sig(i32* %80, i32* @sem_lock)
  store i32 %81, i32* %16, align 4
  br label %106

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %104, %82
  %84 = load %struct.timespec*, %struct.timespec** %9, align 8
  %85 = bitcast %struct.timespec* %10 to i8*
  %86 = bitcast %struct.timespec* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = call i32 @getnanotime(%struct.timespec* %11)
  %88 = call i32 @timespecsub(%struct.timespec* %10, %struct.timespec* %11, %struct.timespec* %10)
  %89 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.timespec* %10)
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %94, i32* %16, align 4
  br label %105

95:                                               ; preds = %83
  %96 = load %struct.ksem*, %struct.ksem** %15, align 8
  %97 = getelementptr inbounds %struct.ksem, %struct.ksem* %96, i32 0, i32 2
  %98 = call i32 @tvtohz(%struct.timeval* %12)
  %99 = call i32 @cv_timedwait_sig(i32* %97, i32* @sem_lock, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @EWOULDBLOCK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %105

104:                                              ; preds = %95
  br label %83

105:                                              ; preds = %103, %93
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %73
  %108 = load %struct.ksem*, %struct.ksem** %15, align 8
  %109 = getelementptr inbounds %struct.ksem, %struct.ksem* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %126

115:                                              ; preds = %107
  br label %61

116:                                              ; preds = %61
  %117 = load %struct.ksem*, %struct.ksem** %15, align 8
  %118 = getelementptr inbounds %struct.ksem, %struct.ksem* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.ksem*, %struct.ksem** %15, align 8
  %122 = getelementptr inbounds %struct.ksem, %struct.ksem* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @DP(i8* %124)
  store i32 0, i32* %16, align 4
  br label %126

126:                                              ; preds = %116, %114
  %127 = call i32 @mtx_unlock(i32* @sem_lock)
  %128 = load %struct.file*, %struct.file** %14, align 8
  %129 = load %struct.thread*, %struct.thread** %6, align 8
  %130 = call i32 @fdrop(%struct.file* %128, %struct.thread* %129)
  %131 = load %struct.thread*, %struct.thread** %6, align 8
  %132 = getelementptr inbounds %struct.thread, %struct.thread* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @DP(i8* %139)
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %126, %35
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @DP(i8*) #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @ksem_get(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
