; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_lock_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_lock_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.nlm4_lockargs = type { i32, i32, i32, i32, i32, i32 }

@nlm_lock_1_svc.res = internal global %struct.TYPE_7__ zeroinitializer, align 4
@debug_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"nlm_lock\00", align 1
@LOCK_MON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @nlm_lock_1_svc(%struct.TYPE_8__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.nlm4_lockargs, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 5
  %9 = call i32 @nlmtonlm4(i32* %7, i32* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nlm4_lockargs, %struct.nlm4_lockargs* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* @debug_level, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %34 = call i32 @log_from_addr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nlm_lock_1_svc.res, i32 0, i32 1), align 4
  %39 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %40 = load i32, i32* @LOCK_MON, align 4
  %41 = call i32 @getlock(%struct.nlm4_lockargs* %5, %struct.svc_req* %39, i32 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nlm_lock_1_svc.res, i32 0, i32 0, i32 0), align 4
  ret %struct.TYPE_7__* @nlm_lock_1_svc.res
}

declare dso_local i32 @nlmtonlm4(i32*, i32*) #1

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local i32 @getlock(%struct.nlm4_lockargs*, %struct.svc_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
