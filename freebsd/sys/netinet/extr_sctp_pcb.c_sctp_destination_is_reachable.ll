; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_destination_is_reachable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_destination_is_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_inpcb* }
%struct.sctp_inpcb = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@SCTP_PCB_FLAGS_BOUNDALL = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_destination_is_reachable(%struct.sctp_tcb* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sctp_inpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %8, i32 0, i32 0
  %10 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  store %struct.sctp_inpcb* %10, %struct.sctp_inpcb** %6, align 8
  %11 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SCTP_PCB_FLAGS_BOUNDALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %22 [
  ]

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
