; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_setsockaddrs_inpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_setsockaddrs_inpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%union.sockaddr_union = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i8*, i8*, %struct.TYPE_2__, i32, i8* }

@AF_INET = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, %union.sockaddr_union*, %union.sockaddr_union*, i64)* @ipsec_setsockaddrs_inpcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_setsockaddrs_inpcb(%struct.inpcb* %0, %union.sockaddr_union* %1, %union.sockaddr_union* %2, i64 %3) #0 {
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %union.sockaddr_union*, align 8
  %7 = alloca %union.sockaddr_union*, align 8
  %8 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %union.sockaddr_union* %1, %union.sockaddr_union** %6, align 8
  store %union.sockaddr_union* %2, %union.sockaddr_union** %7, align 8
  store i64 %3, i64* %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
