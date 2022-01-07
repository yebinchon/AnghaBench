; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_move_rx_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_move_rx_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { %struct.TYPE_4__, i8**, %struct.mbuf** }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"mbufs != NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_rxq*, %struct.mbuf*, i8*)* @xn_move_rx_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_move_rx_slot(%struct.netfront_rxq* %0, %struct.mbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.netfront_rxq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %9 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xn_rxidx(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %13, i32 0, i32 2
  %15 = load %struct.mbuf**, %struct.mbuf*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %15, i64 %17
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %20 = icmp eq %struct.mbuf* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %25 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %24, i32 0, i32 2
  %26 = load %struct.mbuf**, %struct.mbuf*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %26, i64 %28
  store %struct.mbuf* %23, %struct.mbuf** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %32 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %39 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %38, i32 0, i32 0
  %40 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %41 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__* %39, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %37, i32* %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %48 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %47, i32 0, i32 0
  %49 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %50 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__* %48, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %46, i8** %54, align 8
  %55 = load %struct.netfront_rxq*, %struct.netfront_rxq** %4, align 8
  %56 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local i32 @xn_rxidx(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
