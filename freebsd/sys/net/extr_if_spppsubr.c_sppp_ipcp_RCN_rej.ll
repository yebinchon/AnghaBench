; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_ipcp_RCN_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_ipcp_RCN_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i32 }
%struct.lcp_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*, %struct.lcp_header*, i32)* @sppp_ipcp_RCN_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_ipcp_RCN_rej(%struct.sppp* %0, %struct.lcp_header* %1, i32 %2) #0 {
  %4 = alloca %struct.sppp*, align 8
  %5 = alloca %struct.lcp_header*, align 8
  %6 = alloca i32, align 4
  store %struct.sppp* %0, %struct.sppp** %4, align 8
  store %struct.lcp_header* %1, %struct.lcp_header** %5, align 8
  store i32 %2, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
