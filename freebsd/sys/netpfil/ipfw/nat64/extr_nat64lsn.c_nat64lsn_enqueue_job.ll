; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_enqueue_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_enqueue_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nat64lsn_job_item = type { i32 }

@entries = common dso_local global i32 0, align 4
@jrequests = common dso_local global i32 0, align 4
@nat64lsn_do_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat64lsn_cfg*, %struct.nat64lsn_job_item*)* @nat64lsn_enqueue_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_enqueue_job(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_job_item* %1) #0 {
  %3 = alloca %struct.nat64lsn_cfg*, align 8
  %4 = alloca %struct.nat64lsn_job_item*, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %3, align 8
  store %struct.nat64lsn_job_item* %1, %struct.nat64lsn_job_item** %4, align 8
  %5 = call i32 (...) @JQUEUE_LOCK()
  %6 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %6, i32 0, i32 3
  %8 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %4, align 8
  %9 = load i32, i32* @entries, align 4
  %10 = call i32 @STAILQ_INSERT_TAIL(i32* %7, %struct.nat64lsn_job_item* %8, i32 %9)
  %11 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %12 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @jrequests, align 4
  %15 = call i32 @NAT64STAT_INC(i32* %13, i32 %14)
  %16 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %20, i32 0, i32 0
  %22 = call i64 @callout_pending(i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %26 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* @nat64lsn_do_request, align 4
  %28 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %29 = call i32 @callout_reset(i32* %26, i32 1, i32 %27, %struct.nat64lsn_cfg* %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = call i32 (...) @JQUEUE_UNLOCK()
  ret void
}

declare dso_local i32 @JQUEUE_LOCK(...) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.nat64lsn_job_item*, i32) #1

declare dso_local i32 @NAT64STAT_INC(i32*, i32) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nat64lsn_cfg*) #1

declare dso_local i32 @JQUEUE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
