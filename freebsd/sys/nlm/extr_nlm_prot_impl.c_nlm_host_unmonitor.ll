; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_unmonitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_unmonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"NLM: unmonitoring %s (sysid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@NLM_PROG = common dso_local global i32 0, align 4
@NLM_SM = common dso_local global i32 0, align 4
@NLM_SM_NOTIFY = common dso_local global i32 0, align 4
@nlm_nsm = common dso_local global i32 0, align 4
@SM_UNMON = common dso_local global i32 0, align 4
@xdr_mon = common dso_local global i64 0, align 8
@xdr_sm_stat = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to contact local NSM - rpc error %d\0A\00", align 1
@stat_fail = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Local NSM refuses to unmonitor %s\0A\00", align 1
@NLM_UNMONITORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*)* @nlm_host_unmonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_host_unmonitor(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NLM_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %15 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @NLM_PROG, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @NLM_SM, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @NLM_SM_NOTIFY, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 25, i32* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @nlm_nsm, align 4
  %32 = load i32, i32* @SM_UNMON, align 4
  %33 = load i64, i64* @xdr_mon, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @xdr_sm_stat, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @CLNT_CALL(i32 %31, i32 %32, i32 %34, %struct.TYPE_8__* %3, i32 %36, %struct.TYPE_7__* %4, %struct.timeval* byval(%struct.timeval) align 8 %5)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RPC_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @NLM_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %58

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @stat_fail, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %51 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NLM_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @NLM_UNMONITORED, align 4
  %56 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %57 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %49, %41
  ret void
}

declare dso_local i32 @NLM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @CLNT_CALL(i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @NLM_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
