; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_syncache_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_syncache_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32 }
%struct.tcpopt = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toe_syncache_expand(%struct.in_conninfo* %0, %struct.tcpopt* %1, %struct.tcphdr* %2, %struct.socket** %3) #0 {
  %5 = alloca %struct.in_conninfo*, align 8
  %6 = alloca %struct.tcpopt*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.socket**, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %5, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store %struct.socket** %3, %struct.socket*** %8, align 8
  %9 = call i32 (...) @NET_EPOCH_ASSERT()
  %10 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %11 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %12 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %13 = load %struct.socket**, %struct.socket*** %8, align 8
  %14 = call i32 @syncache_expand(%struct.in_conninfo* %10, %struct.tcpopt* %11, %struct.tcphdr* %12, %struct.socket** %13, i32* null)
  ret i32 %14
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @syncache_expand(%struct.in_conninfo*, %struct.tcpopt*, %struct.tcphdr*, %struct.socket**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
