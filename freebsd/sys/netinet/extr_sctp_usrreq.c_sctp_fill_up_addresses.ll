; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_fill_up_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_fill_up_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sctp_inpcb*, %struct.sctp_tcb*, i64, %struct.sockaddr_storage*)* @sctp_fill_up_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sctp_fill_up_addresses(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, i64 %2, %struct.sockaddr_storage* %3) #0 {
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i64, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 (...) @SCTP_IPI_ADDR_RLOCK()
  %11 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %15 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sctp_fill_up_addresses_vrf(%struct.sctp_inpcb* %11, %struct.sctp_tcb* %12, i64 %13, %struct.sockaddr_storage* %14, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = call i32 (...) @SCTP_IPI_ADDR_RUNLOCK()
  %20 = load i64, i64* %9, align 8
  ret i64 %20
}

declare dso_local i32 @SCTP_IPI_ADDR_RLOCK(...) #1

declare dso_local i64 @sctp_fill_up_addresses_vrf(%struct.sctp_inpcb*, %struct.sctp_tcb*, i64, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @SCTP_IPI_ADDR_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
