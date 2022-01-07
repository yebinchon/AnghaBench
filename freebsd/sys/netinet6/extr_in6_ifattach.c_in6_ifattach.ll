; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_ifattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, i32** }
%struct.in6_ifaddr = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@ND6_IFF_AUTO_LINKLOCAL = common dso_local global i32 0, align 4
@ND6_IFF_NO_DAD = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"in6_ifattach: %s is not multicast capable, IPv6 not enabled\0A\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@V_in6_maxmtu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_ifattach(%struct.ifnet* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 3
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* @AF_INET6, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %111

15:                                               ; preds = %2
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %33 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @ND6_IFF_AUTO_LINKLOCAL, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = call %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @ND6_IFF_NO_DAD, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = call %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %34

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_MULTICAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @LOG_INFO, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %44 = call i32 @if_name(%struct.ifnet* %43)
  %45 = call i32 @nd6log(i32 %44)
  br label %111

46:                                               ; preds = %34
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_LOOPBACK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = call %struct.in6_ifaddr* @in6ifa_ifwithaddr(i32* @in6addr_loopback, i32 0)
  store %struct.in6_ifaddr* %54, %struct.in6_ifaddr** %5, align 8
  %55 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %56 = icmp eq %struct.in6_ifaddr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = call i32 @in6_ifattach_loopback(%struct.ifnet* %58)
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %62 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %61, i32 0, i32 0
  %63 = call i32 @ifa_free(i32* %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %67 = call %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %65
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = call %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ND6_IFF_AUTO_LINKLOCAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NET_EPOCH_ENTER(i32 %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = call %struct.in6_ifaddr* @in6ifa_ifpforlinklocal(%struct.ifnet* %85, i32 0)
  store %struct.in6_ifaddr* %86, %struct.in6_ifaddr** %5, align 8
  %87 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @NET_EPOCH_EXIT(i32 %88)
  %90 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %91 = icmp eq %struct.in6_ifaddr* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = call i32 @in6_ifattach_linklocal(%struct.ifnet* %93, %struct.ifnet* %94)
  br label %100

96:                                               ; preds = %81
  %97 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %98 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %97, i32 0, i32 0
  %99 = call i32 @ifa_free(i32* %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %73, %65
  %102 = load i64, i64* @V_in6_maxmtu, align 8
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* @V_in6_maxmtu, align 8
  br label %111

111:                                              ; preds = %14, %41, %107, %101
  ret void
}

declare dso_local %struct.TYPE_2__* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifwithaddr(i32*, i32) #1

declare dso_local i32 @in6_ifattach_loopback(%struct.ifnet*) #1

declare dso_local i32 @ifa_free(i32*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpforlinklocal(%struct.ifnet*, i32) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @in6_ifattach_linklocal(%struct.ifnet*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
