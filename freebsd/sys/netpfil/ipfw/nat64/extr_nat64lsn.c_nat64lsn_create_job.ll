; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_create_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_create_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_job_item = type { i32, i64 }
%struct.nat64lsn_cfg = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jmaxlen = common dso_local global i32 0, align 4
@nat64lsn_job_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@jnomem = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@DP_DROPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to create job\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat64lsn_job_item* (%struct.nat64lsn_cfg*, i32)* @nat64lsn_create_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat64lsn_job_item* @nat64lsn_create_job(%struct.nat64lsn_cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.nat64lsn_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nat64lsn_job_item*, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.nat64lsn_job_item* null, %struct.nat64lsn_job_item** %5, align 8
  %6 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @jmaxlen, align 4
  %18 = call i32 @NAT64STAT_INC(i32* %16, i32 %17)
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @nat64lsn_job_zone, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call %struct.nat64lsn_job_item* @uma_zalloc(i32 %20, i32 %21)
  store %struct.nat64lsn_job_item* %22, %struct.nat64lsn_job_item** %5, align 8
  %23 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %5, align 8
  %24 = icmp eq %struct.nat64lsn_job_item* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @jnomem, align 4
  %30 = call i32 @NAT64STAT_INC(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %5, align 8
  %34 = icmp eq %struct.nat64lsn_job_item* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %3, align 8
  %37 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @dropped, align 4
  %40 = call i32 @NAT64STAT_INC(i32* %38, i32 %39)
  %41 = load i32, i32* @DP_DROPS, align 4
  %42 = call i32 @DPRINTF(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %5, align 8
  %46 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %5, align 8
  %48 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %5, align 8
  ret %struct.nat64lsn_job_item* %50
}

declare dso_local i32 @NAT64STAT_INC(i32*, i32) #1

declare dso_local %struct.nat64lsn_job_item* @uma_zalloc(i32, i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
