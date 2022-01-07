; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_mod_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@newreno_cc_algo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@htcp_cc_algo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@HTCP_RTT_REF = common dso_local global i32 0, align 4
@TCP_RTT_SCALE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@htcp_rtt_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @htcp_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcp_mod_init() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @newreno_cc_algo, i32 0, i32 0), align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @htcp_cc_algo, i32 0, i32 0), align 4
  %2 = load i32, i32* @HTCP_RTT_REF, align 4
  %3 = load i32, i32* @TCP_RTT_SCALE, align 4
  %4 = mul nsw i32 %2, %3
  %5 = load i32, i32* @hz, align 4
  %6 = mul nsw i32 %4, %5
  %7 = sdiv i32 %6, 1000
  store i32 %7, i32* @htcp_rtt_ref, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
