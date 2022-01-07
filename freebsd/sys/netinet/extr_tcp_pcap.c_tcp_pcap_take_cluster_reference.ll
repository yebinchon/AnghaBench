; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_take_cluster_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_take_cluster_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcp_pcap_clusters_referenced_cur = common dso_local global i32 0, align 4
@tcp_pcap_clusters_referenced_max = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tcp_pcap_take_cluster_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_pcap_take_cluster_reference() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @atomic_fetchadd_int(i32* @tcp_pcap_clusters_referenced_cur, i32 1)
  %3 = load i64, i64* @tcp_pcap_clusters_referenced_max, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @atomic_add_int(i32* @tcp_pcap_clusters_referenced_cur, i32 -1)
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
