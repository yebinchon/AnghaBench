; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"NLM: host %s (sysid %d) has NSM state %d\0A\00", align 1
@NLM_UNMONITORED = common dso_local global i64 0, align 8
@NLM_MONITORED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"NLM: monitoring %s (sysid %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@NLM_PROG = common dso_local global i32 0, align 4
@NLM_SM = common dso_local global i32 0, align 4
@NLM_SM_NOTIFY = common dso_local global i32 0, align 4
@nlm_nsm = common dso_local global i32 0, align 4
@SM_MON = common dso_local global i32 0, align 4
@xdr_mon = common dso_local global i64 0, align 8
@xdr_sm_stat = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to contact local NSM - rpc error %d\0A\00", align 1
@stat_fail = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Local NSM refuses to monitor %s\0A\00", align 1
@NLM_MONITOR_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_host_monitor(%struct.nlm_host* %0, i32 %1) #0 {
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %13 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %19 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %21 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %24 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @NLM_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %16, %11, %2
  %29 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %30 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %29, i32 0, i32 3
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %33 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NLM_UNMONITORED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %39 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %38, i32 0, i32 3
  %40 = call i32 @mtx_unlock(i32* %39)
  br label %120

41:                                               ; preds = %28
  %42 = load i8*, i8** @NLM_MONITORED, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %45 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %47 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %46, i32 0, i32 3
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %50 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %53 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, i32, ...) @NLM_DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %57 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @NLM_PROG, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @NLM_SM, align 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @NLM_SM_NOTIFY, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %79 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %78, i32 0, i32 4
  %80 = call i32 @memcpy(i32 %77, i32* %79, i32 4)
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 25, i32* %81, align 8
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @nlm_nsm, align 4
  %84 = load i32, i32* @SM_MON, align 4
  %85 = load i64, i64* @xdr_mon, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* @xdr_sm_stat, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @CLNT_CALL(i32 %83, i32 %84, i32 %86, %struct.TYPE_10__* %5, i32 %88, %struct.TYPE_9__* %6, %struct.timeval* byval(%struct.timeval) align 8 %7)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RPC_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %41
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @NLM_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %120

96:                                               ; preds = %41
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @stat_fail, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %103 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @NLM_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %107 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %106, i32 0, i32 3
  %108 = call i32 @mtx_lock(i32* %107)
  %109 = load i64, i64* @NLM_MONITOR_FAILED, align 8
  %110 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %111 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %113 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %112, i32 0, i32 3
  %114 = call i32 @mtx_unlock(i32* %113)
  br label %120

115:                                              ; preds = %96
  %116 = load i8*, i8** @NLM_MONITORED, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %119 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %101, %93, %37
  ret void
}

declare dso_local i32 @NLM_DEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @CLNT_CALL(i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @NLM_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
