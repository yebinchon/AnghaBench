; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_adj_cluster_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_adj_cluster_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

@M_EXT = common dso_local global i32 0, align 4
@tcp_pcap_clusters_referenced_cur = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32)* @tcp_pcap_adj_cluster_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_pcap_adj_cluster_reference(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = icmp ne %struct.mbuf* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @M_EXT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @atomic_add_int(i32* @tcp_pcap_clusters_referenced_cur, i32 %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 1
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %3, align 8
  br label %5

22:                                               ; preds = %5
  ret void
}

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
