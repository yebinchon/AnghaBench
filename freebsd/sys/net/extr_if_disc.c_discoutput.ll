; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_discoutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_discoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }
%struct.sockaddr = type { i64, i32 }
%struct.route = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* @discoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discoutput(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.route*, align 8
  %9 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.route* %3, %struct.route** %8, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %10)
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_UNSPEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bcopy(i32 %20, i64* %9, i32 8)
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @bpf_peers_present(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = call i32 @bpf_mtap2(i32 %35, i64* %9, i32 8, %struct.mbuf* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.ifnet* %39, %struct.ifnet** %42, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %45 = call i32 @if_inc_counter(%struct.ifnet* %43, i32 %44, i32 1)
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = call i32 @m_freem(%struct.mbuf* %53)
  ret i32 0
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32, i64*, i32) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local i32 @bpf_mtap2(i32, i64*, i32, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
