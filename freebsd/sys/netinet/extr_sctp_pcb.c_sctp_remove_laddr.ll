; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_remove_laddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_remove_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_laddr = type { i32 }

@sctp_nxt_addr = common dso_local global i32 0, align 4
@ipi_zone_laddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_laddr*)* @sctp_remove_laddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_remove_laddr(%struct.sctp_laddr* %0) #0 {
  %2 = alloca %struct.sctp_laddr*, align 8
  store %struct.sctp_laddr* %0, %struct.sctp_laddr** %2, align 8
  %3 = load %struct.sctp_laddr*, %struct.sctp_laddr** %2, align 8
  %4 = load i32, i32* @sctp_nxt_addr, align 4
  %5 = call i32 @LIST_REMOVE(%struct.sctp_laddr* %3, i32 %4)
  %6 = load %struct.sctp_laddr*, %struct.sctp_laddr** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_laddr, %struct.sctp_laddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sctp_free_ifa(i32 %8)
  %10 = load i32, i32* @ipi_zone_laddr, align 4
  %11 = call i32 @SCTP_BASE_INFO(i32 %10)
  %12 = load %struct.sctp_laddr*, %struct.sctp_laddr** %2, align 8
  %13 = call i32 @SCTP_ZONE_FREE(i32 %11, %struct.sctp_laddr* %12)
  %14 = call i32 (...) @SCTP_DECR_LADDR_COUNT()
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.sctp_laddr*, i32) #1

declare dso_local i32 @sctp_free_ifa(i32) #1

declare dso_local i32 @SCTP_ZONE_FREE(i32, %struct.sctp_laddr*) #1

declare dso_local i32 @SCTP_BASE_INFO(i32) #1

declare dso_local i32 @SCTP_DECR_LADDR_COUNT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
