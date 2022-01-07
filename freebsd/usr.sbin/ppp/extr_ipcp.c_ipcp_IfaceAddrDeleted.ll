; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_IfaceAddrDeleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_IfaceAddrDeleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bundle* }
%struct.bundle = type { i32 }
%struct.iface_addr = type { i32 }

@OPT_PROXY = common dso_local global i32 0, align 4
@OPT_PROXYALL = common dso_local global i32 0, align 4
@arp_ClearProxy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcp_IfaceAddrDeleted(%struct.ipcp* %0, %struct.iface_addr* %1) #0 {
  %3 = alloca %struct.ipcp*, align 8
  %4 = alloca %struct.iface_addr*, align 8
  %5 = alloca %struct.bundle*, align 8
  store %struct.ipcp* %0, %struct.ipcp** %3, align 8
  store %struct.iface_addr* %1, %struct.iface_addr** %4, align 8
  %6 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %7 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.bundle*, %struct.bundle** %8, align 8
  store %struct.bundle* %9, %struct.bundle** %5, align 8
  %10 = load %struct.bundle*, %struct.bundle** %5, align 8
  %11 = load i32, i32* @OPT_PROXY, align 4
  %12 = call i64 @Enabled(%struct.bundle* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.bundle*, %struct.bundle** %5, align 8
  %16 = load i32, i32* @OPT_PROXYALL, align 4
  %17 = call i64 @Enabled(%struct.bundle* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %2
  %20 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %21 = load i32, i32* @arp_ClearProxy, align 4
  %22 = load %struct.iface_addr*, %struct.iface_addr** %4, align 8
  %23 = call i32 @ipcp_proxyarp(%struct.ipcp* %20, i32 %21, %struct.iface_addr* %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @ipcp_proxyarp(%struct.ipcp*, i32, %struct.iface_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
