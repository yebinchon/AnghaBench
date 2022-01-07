; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_deact_sharedkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_deact_sharedkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@SCTP_NOTIFY_AUTH_FREE_KEY = common dso_local global i32 0, align 4
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_deact_sharedkey(%struct.sctp_tcb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %8 = icmp eq %struct.sctp_tcb* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %42

19:                                               ; preds = %10
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_7__* @sctp_find_sharedkey(i32* %22, i64 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @SCTP_NOTIFY_AUTH_FREE_KEY, align 4
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %38 = call i32 @sctp_ulp_notify(i32 %34, %struct.sctp_tcb* %35, i64 %36, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %27, %18, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_7__* @sctp_find_sharedkey(i32*, i64) #1

declare dso_local i32 @sctp_ulp_notify(i32, %struct.sctp_tcb*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
