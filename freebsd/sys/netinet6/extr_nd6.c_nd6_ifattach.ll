; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_ifattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_ifinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i64, i32 }

@M_IP6NDP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPV6_DEFHLIM = common dso_local global i32 0, align 4
@REACHABLE_TIME = common dso_local global i32 0, align 4
@RETRANS_TIMER = common dso_local global i32 0, align 4
@ND6_IFF_PERFORMNUD = common dso_local global i32 0, align 4
@V_ip6_auto_linklocal = common dso_local global i64 0, align 8
@IFT_BRIDGE = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ND6_IFF_AUTO_LINKLOCAL = common dso_local global i32 0, align 4
@V_ip6_accept_rtadv = common dso_local global i64 0, align 8
@ND6_IFF_ACCEPT_RTADV = common dso_local global i32 0, align 4
@V_ip6_no_radr = common dso_local global i64 0, align 8
@ND6_IFF_NO_RADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_ifinfo* @nd6_ifattach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load i32, i32* @M_IP6NDP, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.nd_ifinfo* @malloc(i32 24, i32 %4, i32 %7)
  store %struct.nd_ifinfo* %8, %struct.nd_ifinfo** %3, align 8
  %9 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %10 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @IPV6_DEFHLIM, align 4
  %12 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %13 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @REACHABLE_TIME, align 4
  %15 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %16 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %18 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_COMPUTE_RTIME(i32 %19)
  %21 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %22 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @RETRANS_TIMER, align 4
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %25 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ND6_IFF_PERFORMNUD, align 4
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* @V_ip6_auto_linklocal, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IFT_BRIDGE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFF_LOOPBACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %31
  %45 = load i32, i32* @ND6_IFF_AUTO_LINKLOCAL, align 4
  %46 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %47 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i64, i64* @V_ip6_accept_rtadv, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IFF_LOOPBACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %53
  %61 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IFT_BRIDGE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @ND6_IFF_ACCEPT_RTADV, align 4
  %68 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %69 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60, %53, %50
  %73 = load i64, i64* @V_ip6_no_radr, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IFF_LOOPBACK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ND6_IFF_NO_RADR, align 4
  %84 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %85 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %75, %72
  %89 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %90 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %91 = call i32 @nd6_setmtu0(%struct.ifnet* %89, %struct.nd_ifinfo* %90)
  %92 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  ret %struct.nd_ifinfo* %92
}

declare dso_local %struct.nd_ifinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @ND_COMPUTE_RTIME(i32) #1

declare dso_local i32 @nd6_setmtu0(%struct.ifnet*, %struct.nd_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
