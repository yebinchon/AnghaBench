; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_rtcc_tsn_acknowledged.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_rtcc_tsn_acknowledged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_nets = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_tmit_chunk = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_nets*, %struct.sctp_tmit_chunk*)* @sctp_cwnd_update_rtcc_tsn_acknowledged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_update_rtcc_tsn_acknowledged(%struct.sctp_nets* %0, %struct.sctp_tmit_chunk* %1) #0 {
  %3 = alloca %struct.sctp_nets*, align 8
  %4 = alloca %struct.sctp_tmit_chunk*, align 8
  store %struct.sctp_nets* %0, %struct.sctp_nets** %3, align 8
  store %struct.sctp_tmit_chunk* %1, %struct.sctp_tmit_chunk** %4, align 8
  %5 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %6 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sctp_nets*, %struct.sctp_nets** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %7
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
