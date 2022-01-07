; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_SetLink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_SetLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { i32, i32 }
%struct.link = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_SetLink(%struct.ncp* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.ncp*, align 8
  %4 = alloca %struct.link*, align 8
  store %struct.ncp* %0, %struct.ncp** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %5 = load %struct.ncp*, %struct.ncp** %3, align 8
  %6 = getelementptr inbounds %struct.ncp, %struct.ncp* %5, i32 0, i32 1
  %7 = load %struct.link*, %struct.link** %4, align 8
  %8 = call i32 @ipcp_SetLink(i32* %6, %struct.link* %7)
  %9 = load %struct.ncp*, %struct.ncp** %3, align 8
  %10 = getelementptr inbounds %struct.ncp, %struct.ncp* %9, i32 0, i32 0
  %11 = load %struct.link*, %struct.link** %4, align 8
  %12 = call i32 @ipv6cp_SetLink(i32* %10, %struct.link* %11)
  ret void
}

declare dso_local i32 @ipcp_SetLink(i32*, %struct.link*) #1

declare dso_local i32 @ipv6cp_SetLink(i32*, %struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
