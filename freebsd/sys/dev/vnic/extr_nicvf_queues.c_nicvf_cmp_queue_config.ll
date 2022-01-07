; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_cmp_queue_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_cmp_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.queue_set = type { %struct.cmp_queue* }
%struct.cmp_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cq_cfg = type { i32, i64, i32, i64, i64 }

@NIC_QSET_CQ_0_7_CFG = common dso_local global i32 0, align 4
@NICVF_CQ_RESET = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_BASE = common dso_local global i32 0, align 4
@CMP_QSIZE = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_THRESH = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32, i32)* @nicvf_cmp_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_cmp_queue_config(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmp_queue*, align 8
  %10 = alloca %struct.cq_cfg, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.queue_set* %1, %struct.queue_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %12 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %11, i32 0, i32 0
  %13 = load %struct.cmp_queue*, %struct.cmp_queue** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %13, i64 %15
  store %struct.cmp_queue* %16, %struct.cmp_queue** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.cmp_queue*, %struct.cmp_queue** %9, align 8
  %19 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cmp_queue*, %struct.cmp_queue** %9, align 8
  %21 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %26 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nicvf_reclaim_cmp_queue(%struct.nicvf* %25, %struct.queue_set* %26, i32 %27)
  br label %70

29:                                               ; preds = %4
  %30 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %31 = load i32, i32* @NIC_QSET_CQ_0_7_CFG, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NICVF_CQ_RESET, align 4
  %34 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %36 = load i32, i32* @NIC_QSET_CQ_0_7_BASE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cmp_queue*, %struct.cmp_queue** %9, align 8
  %39 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %35, i32 %36, i32 %37, i32 %42)
  %44 = getelementptr inbounds %struct.cq_cfg, %struct.cq_cfg* %10, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.cq_cfg, %struct.cq_cfg* %10, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.cq_cfg, %struct.cq_cfg* %10, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @CMP_QSIZE, align 4
  %48 = getelementptr inbounds %struct.cq_cfg, %struct.cq_cfg* %10, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.cq_cfg, %struct.cq_cfg* %10, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %51 = load i32, i32* @NIC_QSET_CQ_0_7_CFG, align 4
  %52 = load i32, i32* %7, align 4
  %53 = bitcast %struct.cq_cfg* %10 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %50, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %57 = load i32, i32* @NIC_QSET_CQ_0_7_THRESH, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cmp_queue*, %struct.cmp_queue** %9, align 8
  %60 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %64 = load i32, i32* @NIC_QSET_CQ_0_7_CFG2, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %67 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %63, i32 %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @nicvf_reclaim_cmp_queue(%struct.nicvf*, %struct.queue_set*, i32) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
