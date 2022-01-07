; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_syncache_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_syncache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32 }
%struct.tcpopt = type { i32 }
%struct.tcphdr = type { i32 }
%struct.inpcb = type { %struct.socket* }
%struct.socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toe_syncache_add(%struct.in_conninfo* %0, %struct.tcpopt* %1, %struct.tcphdr* %2, %struct.inpcb* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.in_conninfo*, align 8
  %8 = alloca %struct.tcpopt*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.socket*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %7, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store %struct.inpcb* %3, %struct.inpcb** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 0
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %16, %struct.socket** %13, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %18 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %17)
  %19 = load %struct.in_conninfo*, %struct.in_conninfo** %7, align 8
  %20 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %22 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @syncache_add(%struct.in_conninfo* %19, %struct.tcpopt* %20, %struct.tcphdr* %21, %struct.inpcb* %22, %struct.socket** %13, i32* null, i8* %23, i8* %24)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @syncache_add(%struct.in_conninfo*, %struct.tcpopt*, %struct.tcphdr*, %struct.inpcb*, %struct.socket**, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
