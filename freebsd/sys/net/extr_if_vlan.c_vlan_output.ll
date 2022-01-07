; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { {}*, %struct.ifvlan* }
%struct.ifvlan = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.route = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* @vlan_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_output(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca %struct.ifvlan*, align 8
  %11 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.route* %3, %struct.route** %9, align 8
  %12 = call i32 (...) @NET_EPOCH_ASSERT()
  %13 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 1
  %15 = load %struct.ifvlan*, %struct.ifvlan** %14, align 8
  store %struct.ifvlan* %15, %struct.ifvlan** %10, align 8
  %16 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %17 = call i32* @TRUNK(%struct.ifvlan* %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  %22 = load i32, i32* @ENETDOWN, align 4
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %25 = call %struct.ifnet* @PARENT(%struct.ifvlan* %24)
  store %struct.ifnet* %25, %struct.ifnet** %11, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)**
  %29 = load i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)*, i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)** %28, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = load %struct.route*, %struct.route** %9, align 8
  %34 = call i32 %29(%struct.ifnet* %30, %struct.mbuf* %31, %struct.sockaddr* %32, %struct.route* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %23, %19
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32* @TRUNK(%struct.ifvlan*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.ifnet* @PARENT(%struct.ifvlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
