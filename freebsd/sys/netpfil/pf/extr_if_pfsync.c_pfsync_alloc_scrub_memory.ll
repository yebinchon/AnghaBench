; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_alloc_scrub_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_alloc_scrub_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_state_peer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pf_state_peer = type { i32* }

@V_pf_state_scrub_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_state_peer*, %struct.pf_state_peer*)* @pfsync_alloc_scrub_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_alloc_scrub_memory(%struct.pfsync_state_peer* %0, %struct.pf_state_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfsync_state_peer*, align 8
  %5 = alloca %struct.pf_state_peer*, align 8
  store %struct.pfsync_state_peer* %0, %struct.pfsync_state_peer** %4, align 8
  store %struct.pf_state_peer* %1, %struct.pf_state_peer** %5, align 8
  %6 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %7 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.pf_state_peer*, %struct.pf_state_peer** %5, align 8
  %13 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i32, i32* @V_pf_state_scrub_z, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @uma_zalloc(i32 %17, i32 %20)
  %22 = load %struct.pf_state_peer*, %struct.pf_state_peer** %5, align 8
  %23 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.pf_state_peer*, %struct.pf_state_peer** %5, align 8
  %25 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %11, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
