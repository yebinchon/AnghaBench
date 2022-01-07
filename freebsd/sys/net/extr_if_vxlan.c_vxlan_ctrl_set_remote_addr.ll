; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_remote_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_remote_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { %union.vxlan_sockaddr }
%union.vxlan_sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_remote_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_remote_addr(%struct.vxlan_softc* %0, i8* %1) #0 {
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
  br label %48

18:                                               ; preds = %2
  %19 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %20 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %24 = call i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %32 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %31)
  %33 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %34 = call i64 @vxlan_can_change_config(%struct.vxlan_softc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %37, i32 0, i32 0
  %39 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %40 = bitcast %union.vxlan_sockaddr* %39 to i32*
  %41 = call i32 @vxlan_sockaddr_in_copy(i32* %38, i32* %40)
  store i32 0, i32* %8, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %46 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %27, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @VXLAN_SOCKADDR_IS_IPV46(%union.vxlan_sockaddr*) #1

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
