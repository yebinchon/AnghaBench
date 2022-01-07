; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_test_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_test_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.nlm4_lock = type { i32 }
%struct.nlm4_holder = type { i32, i32 }

@nlm_test_1_svc.res = internal global %struct.TYPE_10__ zeroinitializer, align 4
@debug_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"nlm_test\00", align 1
@nlm_granted = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @nlm_test_1_svc(%struct.TYPE_11__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.nlm4_lock, align 4
  %6 = alloca %struct.nlm4_holder*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = call i32 @nlmtonlm4(i32* %8, %struct.nlm4_lock* %5)
  %10 = load i64, i64* @debug_level, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %14 = call i32 @log_from_addr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nlm4_holder* @testlock(%struct.nlm4_lock* %5, i32 %18, i32 0)
  store %struct.nlm4_holder* %19, %struct.nlm4_holder** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 1), align 4
  %23 = load %struct.nlm4_holder*, %struct.nlm4_holder** %6, align 8
  %24 = icmp eq %struct.nlm4_holder* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @nlm_granted, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 0, i32 1), align 4
  br label %37

27:                                               ; preds = %15
  %28 = load i32, i32* @nlm_denied, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 0, i32 1), align 4
  %29 = load %struct.nlm4_holder*, %struct.nlm4_holder** %6, align 8
  %30 = call i32 @memcpy(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 0, i32 0, i32 0), %struct.nlm4_holder* %29, i32 4)
  %31 = load %struct.nlm4_holder*, %struct.nlm4_holder** %6, align 8
  %32 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %34 = load %struct.nlm4_holder*, %struct.nlm4_holder** %6, align 8
  %35 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm_test_1_svc.res, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  br label %37

37:                                               ; preds = %27, %25
  ret %struct.TYPE_10__* @nlm_test_1_svc.res
}

declare dso_local i32 @nlmtonlm4(i32*, %struct.nlm4_lock*) #1

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local %struct.nlm4_holder* @testlock(%struct.nlm4_lock*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.nlm4_holder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
