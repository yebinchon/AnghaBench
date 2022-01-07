; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_learn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rm_priotracker = type { i32 }
%union.vxlan_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, %struct.sockaddr*, i32*)* @vxlan_ftable_learn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ftable_learn(%struct.vxlan_softc* %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxlan_softc*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rm_priotracker, align 4
  %9 = alloca %union.vxlan_sockaddr, align 4
  %10 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = call i32 @vxlan_sockaddr_copy(%union.vxlan_sockaddr* %9, %struct.sockaddr* %11)
  %13 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %14 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %union.vxlan_sockaddr* %9 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = call i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %31 = call i32 @VXLAN_RLOCK(%struct.vxlan_softc* %30, %struct.rm_priotracker* %8)
  %32 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @vxlan_ftable_update_locked(%struct.vxlan_softc* %32, %union.vxlan_sockaddr* %9, i32* %33, %struct.rm_priotracker* %8)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  %36 = call i32 @VXLAN_UNLOCK(%struct.vxlan_softc* %35, %struct.rm_priotracker* %8)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @vxlan_sockaddr_copy(%union.vxlan_sockaddr*, %struct.sockaddr*) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #1

declare dso_local i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr*) #1

declare dso_local i32 @VXLAN_RLOCK(%struct.vxlan_softc*, %struct.rm_priotracker*) #1

declare dso_local i32 @vxlan_ftable_update_locked(%struct.vxlan_softc*, %union.vxlan_sockaddr*, i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @VXLAN_UNLOCK(%struct.vxlan_softc*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
