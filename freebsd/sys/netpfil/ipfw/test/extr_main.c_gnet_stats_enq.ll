; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_gnet_stats_enq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_gnet_stats_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { %struct.dn_sch_inst* }
%struct.dn_sch_inst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.dn_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg_s*, %struct.mbuf*)* @gnet_stats_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnet_stats_enq(%struct.cfg_s* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.cfg_s*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  store %struct.cfg_s* %0, %struct.cfg_s** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %8 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %7, i32 0, i32 0
  %9 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  store %struct.dn_sch_inst* %9, %struct.dn_sch_inst** %5, align 8
  %10 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dn_queue* @FI2Q(%struct.cfg_s* %10, i32 %13)
  store %struct.dn_queue* %14, %struct.dn_queue** %6, align 8
  %15 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %16 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %22 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %25 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %29 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.dn_queue* @FI2Q(%struct.cfg_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
