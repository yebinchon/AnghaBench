; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_lb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_lb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { i32, i64, i64, i32, i64 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.lagg_lb = type { %struct.lagg_port**, i32 }
%struct.lagg_port = type { i32 }

@LAGG_OPT_USE_FLOWID = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_softc*, %struct.mbuf*)* @lagg_lb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_lb_start(%struct.lagg_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lagg_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lagg_lb*, align 8
  %7 = alloca %struct.lagg_port*, align 8
  %8 = alloca i64, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %10 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.lagg_lb*
  store %struct.lagg_lb* %12, %struct.lagg_lb** %6, align 8
  store %struct.lagg_port* null, %struct.lagg_port** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LAGG_OPT_USE_FLOWID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %20)
  %22 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %28, %31
  store i64 %32, i64* %8, align 8
  br label %42

33:                                               ; preds = %19, %2
  %34 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %35 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = load %struct.lagg_lb*, %struct.lagg_lb** %6, align 8
  %39 = getelementptr inbounds %struct.lagg_lb, %struct.lagg_lb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @m_ether_tcpip_hash(i32 %36, %struct.mbuf* %37, i32 %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %44 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = urem i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.lagg_lb*, %struct.lagg_lb** %6, align 8
  %49 = getelementptr inbounds %struct.lagg_lb, %struct.lagg_lb* %48, i32 0, i32 0
  %50 = load %struct.lagg_port**, %struct.lagg_port*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.lagg_port*, %struct.lagg_port** %50, i64 %51
  %53 = load %struct.lagg_port*, %struct.lagg_port** %52, align 8
  store %struct.lagg_port* %53, %struct.lagg_port** %7, align 8
  %54 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %55 = load %struct.lagg_port*, %struct.lagg_port** %7, align 8
  %56 = call %struct.lagg_port* @lagg_link_active(%struct.lagg_softc* %54, %struct.lagg_port* %55)
  store %struct.lagg_port* %56, %struct.lagg_port** %7, align 8
  %57 = icmp eq %struct.lagg_port* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = call i32 @m_freem(%struct.mbuf* %59)
  %61 = load i32, i32* @ENETDOWN, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %42
  %63 = load %struct.lagg_port*, %struct.lagg_port** %7, align 8
  %64 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %67 = call i32 @lagg_enqueue(i32 %65, %struct.mbuf* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i64 @m_ether_tcpip_hash(i32, %struct.mbuf*, i32) #1

declare dso_local %struct.lagg_port* @lagg_link_active(%struct.lagg_softc*, %struct.lagg_port*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @lagg_enqueue(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
