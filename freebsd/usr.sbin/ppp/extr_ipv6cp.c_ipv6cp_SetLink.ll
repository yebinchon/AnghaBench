; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_SetLink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_SetLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6cp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.link* }
%struct.link = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6cp_SetLink(%struct.ipv6cp* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.ipv6cp*, align 8
  %4 = alloca %struct.link*, align 8
  store %struct.ipv6cp* %0, %struct.ipv6cp** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %5 = load %struct.link*, %struct.link** %4, align 8
  %6 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %7 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.link* %5, %struct.link** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
