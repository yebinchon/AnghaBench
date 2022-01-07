; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_flush_txagg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_flush_txagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.hn_tx_ring = type { i32, i32*, i64, i64, %struct.hn_txdesc*, i32 }
%struct.hn_txdesc = type { %struct.mbuf* }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no aggregate txdesc\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.hn_tx_ring*)* @hn_flush_txagg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_flush_txagg(%struct.ifnet* %0, %struct.hn_tx_ring* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.hn_tx_ring*, align 8
  %5 = alloca %struct.hn_txdesc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.hn_tx_ring* %1, %struct.hn_tx_ring** %4, align 8
  %9 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %9, i32 0, i32 4
  %11 = load %struct.hn_txdesc*, %struct.hn_txdesc** %10, align 8
  store %struct.hn_txdesc* %11, %struct.hn_txdesc** %5, align 8
  %12 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %13 = icmp ne %struct.hn_txdesc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %20 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %6, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %24 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %25 = call i32 @hn_txpkt(%struct.ifnet* %22, %struct.hn_tx_ring* %23, %struct.hn_txdesc* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = call i32 @m_freem(%struct.mbuf* %30)
  %32 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @if_inc_counter(%struct.ifnet* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %2
  %41 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %41, i32 0, i32 4
  store %struct.hn_txdesc* null, %struct.hn_txdesc** %42, align 8
  %43 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %48 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_txpkt(%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
