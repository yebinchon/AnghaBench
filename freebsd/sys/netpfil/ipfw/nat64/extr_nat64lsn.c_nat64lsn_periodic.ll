; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_job_item = type { i32, i32, i32, i32, i32 }
%struct.nat64lsn_cfg = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nat64lsn_job_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@JTYPE_DESTROY = common dso_local global i32 0, align 4
@nat64lsn_job_destroy = common dso_local global i32 0, align 4
@jnomem = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@PERIODIC_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nat64lsn_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nat64lsn_job_item*, align 8
  %4 = alloca %struct.nat64lsn_cfg*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nat64lsn_cfg*
  store %struct.nat64lsn_cfg* %6, %struct.nat64lsn_cfg** %4, align 8
  %7 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @CURVNET_SET(i32 %9)
  %11 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load i32, i32* @nat64lsn_job_zone, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = call %struct.nat64lsn_job_item* @uma_zalloc(i32 %16, i32 %17)
  store %struct.nat64lsn_job_item* %18, %struct.nat64lsn_job_item** %3, align 8
  %19 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %20 = icmp ne %struct.nat64lsn_job_item* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load i32, i32* @JTYPE_DESTROY, align 4
  %23 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %26 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %25, i32 0, i32 3
  %27 = call i32 @CK_SLIST_INIT(i32* %26)
  %28 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %29 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %28, i32 0, i32 2
  %30 = call i32 @CK_SLIST_INIT(i32* %29)
  %31 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %32 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %33 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %32, i32 0, i32 3
  %34 = call i32 @nat64lsn_expire_hosts(%struct.nat64lsn_cfg* %31, i32* %33)
  %35 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %36 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %37 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %36, i32 0, i32 2
  %38 = call i32 @nat64lsn_expire_portgroups(%struct.nat64lsn_cfg* %35, i32* %37)
  %39 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %40 = call i32 @nat64lsn_expire_pgchunk(%struct.nat64lsn_cfg* %39)
  %41 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %42 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %3, align 8
  %44 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %43, i32 0, i32 0
  %45 = load i32, i32* @nat64lsn_job_destroy, align 4
  %46 = call i32 @NAT64LSN_EPOCH_CALL(i32* %44, i32 %45)
  br label %53

47:                                               ; preds = %15
  %48 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* @jnomem, align 4
  %52 = call i32 @NAT64STAT_INC(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %21
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* @hz, align 4
  %58 = load i32, i32* @PERIODIC_DELAY, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @callout_schedule(i32* %56, i32 %59)
  %61 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local %struct.nat64lsn_job_item* @uma_zalloc(i32, i32) #1

declare dso_local i32 @CK_SLIST_INIT(i32*) #1

declare dso_local i32 @nat64lsn_expire_hosts(%struct.nat64lsn_cfg*, i32*) #1

declare dso_local i32 @nat64lsn_expire_portgroups(%struct.nat64lsn_cfg*, i32*) #1

declare dso_local i32 @nat64lsn_expire_pgchunk(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @NAT64LSN_EPOCH_CALL(i32*, i32) #1

declare dso_local i32 @NAT64STAT_INC(i32*, i32) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
