; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_release_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_release_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { i32*, %struct.mbuf**, i32 }
%struct.mbuf = type { i32 }

@NET_RX_RING_SIZE = common dso_local global i32 0, align 4
@GRANT_REF_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_rxq*)* @xn_release_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_release_rx_bufs(%struct.netfront_rxq* %0) #0 {
  %2 = alloca %struct.netfront_rxq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NET_RX_RING_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %12 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %11, i32 0, i32 1
  %13 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %13, i64 %15
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %5, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %55

21:                                               ; preds = %10
  %22 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %23 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GRANT_REF_INVALID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %55

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @gnttab_end_foreign_access_ref(i32 %34)
  %36 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %37 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %36, i32 0, i32 2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gnttab_release_grant_reference(i32* %37, i32 %38)
  %40 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %41 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %40, i32 0, i32 1
  %42 = load %struct.mbuf**, %struct.mbuf*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %42, i64 %44
  store %struct.mbuf* null, %struct.mbuf** %45, align 8
  %46 = load i32, i32* @GRANT_REF_INVALID, align 4
  %47 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %48 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = call i32 @m_freem(%struct.mbuf* %53)
  br label %55

55:                                               ; preds = %33, %32, %20
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @gnttab_end_foreign_access_ref(i32) #1

declare dso_local i32 @gnttab_release_grant_reference(i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
