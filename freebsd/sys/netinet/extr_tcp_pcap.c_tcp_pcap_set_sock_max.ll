; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_set_sock_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_pcap.c_tcp_pcap_set_sock_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbufq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_pcap_set_sock_max(%struct.mbufq* %0, i32 %1) #0 {
  %3 = alloca %struct.mbufq*, align 8
  %4 = alloca i32, align 4
  store %struct.mbufq* %0, %struct.mbufq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %7 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  br label %8

8:                                                ; preds = %16, %2
  %9 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %10 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %13 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %18 = call i32 @mbufq_dequeue(%struct.mbufq* %17)
  %19 = call i32 @tcp_pcap_m_freem(i32 %18)
  br label %8

20:                                               ; preds = %8
  ret void
}

declare dso_local i32 @tcp_pcap_m_freem(i32) #1

declare dso_local i32 @mbufq_dequeue(%struct.mbufq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
