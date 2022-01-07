; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_IfaceAddrAdded.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_IfaceAddrAdded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { i32, i32 }
%struct.iface_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_IfaceAddrAdded(%struct.ncp* %0, %struct.iface_addr* %1) #0 {
  %3 = alloca %struct.ncp*, align 8
  %4 = alloca %struct.iface_addr*, align 8
  store %struct.ncp* %0, %struct.ncp** %3, align 8
  store %struct.iface_addr* %1, %struct.iface_addr** %4, align 8
  %5 = load %struct.iface_addr*, %struct.iface_addr** %4, align 8
  %6 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %5, i32 0, i32 0
  %7 = call i32 @ncprange_family(i32* %6)
  switch i32 %7, label %18 [
    i32 129, label %8
    i32 128, label %13
  ]

8:                                                ; preds = %2
  %9 = load %struct.ncp*, %struct.ncp** %3, align 8
  %10 = getelementptr inbounds %struct.ncp, %struct.ncp* %9, i32 0, i32 1
  %11 = load %struct.iface_addr*, %struct.iface_addr** %4, align 8
  %12 = call i32 @ipcp_IfaceAddrAdded(i32* %10, %struct.iface_addr* %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.ncp*, %struct.ncp** %3, align 8
  %15 = getelementptr inbounds %struct.ncp, %struct.ncp* %14, i32 0, i32 0
  %16 = load %struct.iface_addr*, %struct.iface_addr** %4, align 8
  %17 = call i32 @ipv6cp_IfaceAddrAdded(i32* %15, %struct.iface_addr* %16)
  br label %18

18:                                               ; preds = %2, %13, %8
  ret void
}

declare dso_local i32 @ncprange_family(i32*) #1

declare dso_local i32 @ipcp_IfaceAddrAdded(i32*, %struct.iface_addr*) #1

declare dso_local i32 @ipv6cp_IfaceAddrAdded(i32*, %struct.iface_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
