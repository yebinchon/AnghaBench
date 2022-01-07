; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_local_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_local_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { %union.vxlan_sockaddr }
%union.vxlan_sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_local_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_local_addr(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifvxlancmd*, align 8
  %7 = alloca %union.vxlan_sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %10, %struct.ifvxlancmd** %6, align 8
  %11 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %6, align 8
  %12 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %11, i32 0, i32 0
  store %union.vxlan_sockaddr* %12, %union.vxlan_sockaddr** %7, align 8
  %13 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %14 = call i32 @VXLAN_SOCKADDR_IS_IPV46(%union.vxlan_sockaddr* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %20 = call i64 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %18
  %25 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %26 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %30 = call i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %38 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %37)
  %39 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %40 = call i64 @vxlan_can_change_config(%struct.vxlan_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %44 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %43, i32 0, i32 0
  %45 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %46 = bitcast %union.vxlan_sockaddr* %45 to i32*
  %47 = call i32 @vxlan_sockaddr_in_copy(i32* %44, i32* %46)
  store i32 0, i32* %8, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %52 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %33, %22, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @VXLAN_SOCKADDR_IS_IPV46(%union.vxlan_sockaddr*) #1

declare dso_local i64 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr*) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #1

declare dso_local i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr*) #1

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i64 @vxlan_can_change_config(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_sockaddr_in_copy(i32*, i32*) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
