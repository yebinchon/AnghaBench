; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_bymbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcbgroup.c_in6_pcbgroup_bymbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbgroup = type { i32 }
%struct.inpcbinfo = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcbgroup* @in6_pcbgroup_bymbuf(%struct.inpcbinfo* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.inpcbinfo*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = call i32 @M_HASHTYPE_GET(%struct.mbuf* %6)
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inpcbgroup* @in6_pcbgroup_byhash(%struct.inpcbinfo* %5, i32 %7, i32 %11)
  ret %struct.inpcbgroup* %12
}

declare dso_local %struct.inpcbgroup* @in6_pcbgroup_byhash(%struct.inpcbinfo*, i32, i32) #1

declare dso_local i32 @M_HASHTYPE_GET(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
