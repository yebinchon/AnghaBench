; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_rx_hash_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_rx_hash_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, %struct.ena_adapter* }
%struct.ena_adapter = type { i32 }
%struct.ena_com_rx_ctx = type { i32, i32, i64, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENA_FLAG_RSS_ACTIVE = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE_HASH = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_com_rx_ctx*, %struct.mbuf*)* @ena_rx_hash_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_rx_hash_mbuf(%struct.ena_ring* %0, %struct.ena_com_rx_ctx* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_com_rx_ctx*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ena_adapter*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store %struct.ena_com_rx_ctx* %1, %struct.ena_com_rx_ctx** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 1
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %9, align 8
  store %struct.ena_adapter* %10, %struct.ena_adapter** %7, align 8
  %11 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %13 = call i32 @ENA_FLAG_ISSET(i32 %11, %struct.ena_adapter* %12)
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %3
  %17 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 130
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = load i32, i32* @M_HASHTYPE_OPAQUE_HASH, align 4
  %35 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %33, i32 %34)
  br label %93

36:                                               ; preds = %27, %16
  %37 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %78 [
    i32 132, label %40
    i32 131, label %57
    i32 130, label %74
  ]

40:                                               ; preds = %36
  %41 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %52 [
    i32 129, label %44
    i32 128, label %48
  ]

44:                                               ; preds = %40
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV4, align 4
  %47 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %45, i32 %46)
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %50 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV4, align 4
  %51 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %49, i32 %50)
  br label %56

52:                                               ; preds = %40
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load i32, i32* @M_HASHTYPE_RSS_IPV4, align 4
  %55 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48, %44
  br label %82

57:                                               ; preds = %36
  %58 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %69 [
    i32 129, label %61
    i32 128, label %65
  ]

61:                                               ; preds = %57
  %62 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %63 = load i32, i32* @M_HASHTYPE_RSS_TCP_IPV6, align 4
  %64 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %62, i32 %63)
  br label %73

65:                                               ; preds = %57
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = load i32, i32* @M_HASHTYPE_RSS_UDP_IPV6, align 4
  %68 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %66, i32 %67)
  br label %73

69:                                               ; preds = %57
  %70 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %71 = load i32, i32* @M_HASHTYPE_RSS_IPV6, align 4
  %72 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65, %61
  br label %82

74:                                               ; preds = %36
  %75 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %76 = load i32, i32* @M_HASHTYPE_NONE, align 4
  %77 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %75, i32 %76)
  br label %82

78:                                               ; preds = %36
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = load i32, i32* @M_HASHTYPE_OPAQUE_HASH, align 4
  %81 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74, %73, %56
  br label %93

83:                                               ; preds = %3
  %84 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %85 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %91 = load i32, i32* @M_HASHTYPE_NONE, align 4
  %92 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %90, i32 %91)
  br label %93

93:                                               ; preds = %32, %83, %82
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
