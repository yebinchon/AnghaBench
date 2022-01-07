; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.sigval = type { i32 }
%struct.TYPE_8__ = type { i32, %union.sigval, i32, i32, i32, i32 }
%struct.proc = type { i32 }

@_SIG_MAXSIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@KSI_SIGQ = common dso_local global i32 0, align 4
@SI_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sigqueue(%struct.thread* %0, i64 %1, i32 %2, %union.sigval* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.sigval*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.sigval* %3, %union.sigval** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @_SIG_MAXSIG, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %72

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %72

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.proc* @pfind_any(i64 %25)
  store %struct.proc* %26, %struct.proc** %11, align 8
  %27 = icmp eq %struct.proc* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %24
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = load %struct.proc*, %struct.proc** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @p_cansignal(%struct.thread* %31, %struct.proc* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = call i32 @ksiginfo_init(%struct.TYPE_8__* %10)
  %42 = load i32, i32* @KSI_SIGQ, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @SI_QUEUE, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.thread*, %struct.thread** %6, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %61 = load %union.sigval*, %union.sigval** %9, align 8
  %62 = bitcast %union.sigval* %60 to i8*
  %63 = bitcast %union.sigval* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.proc*, %struct.proc** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pksignal(%struct.proc* %64, i32 %66, %struct.TYPE_8__* %10)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %40, %37, %30
  %69 = load %struct.proc*, %struct.proc** %11, align 8
  %70 = call i32 @PROC_UNLOCK(%struct.proc* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %28, %22, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.proc* @pfind_any(i64) #1

declare dso_local i32 @p_cansignal(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pksignal(%struct.proc*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
