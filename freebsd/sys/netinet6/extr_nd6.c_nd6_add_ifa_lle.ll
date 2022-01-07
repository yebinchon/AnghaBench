; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_add_ifa_lle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_add_ifa_lle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.llentry = type { i32 }
%struct.sockaddr = type { i32 }

@nd6_rtrequest = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@lle_event = common dso_local global i32 0, align 4
@LLENTRY_EXPIRED = common dso_local global i32 0, align 4
@LLENTRY_RESOLVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_add_ifa_lle(%struct.in6_ifaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.llentry*, align 8
  %6 = alloca %struct.llentry*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %3, align 8
  %8 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %9 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = call i64 @nd6_need_cache(%struct.ifnet* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load i32, i32* @nd6_rtrequest, align 4
  %18 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %19 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %22 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %7, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = call i32 @LLTABLE6(%struct.ifnet* %24)
  %26 = load i32, i32* @LLE_IFADDR, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = call %struct.llentry* @lltable_alloc_entry(i32 %25, i32 %26, %struct.sockaddr* %27)
  store %struct.llentry* %28, %struct.llentry** %5, align 8
  %29 = load %struct.llentry*, %struct.llentry** %5, align 8
  %30 = icmp eq %struct.llentry* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @ENOBUFS, align 4
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %16
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %34)
  %36 = load %struct.llentry*, %struct.llentry** %5, align 8
  %37 = call i32 @LLE_WLOCK(%struct.llentry* %36)
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = call i32 @LLTABLE6(%struct.ifnet* %38)
  %40 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %41 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %42 = call %struct.llentry* @lla_lookup(i32 %39, i32 %40, %struct.sockaddr* %41)
  store %struct.llentry* %42, %struct.llentry** %6, align 8
  %43 = load %struct.llentry*, %struct.llentry** %6, align 8
  %44 = icmp ne %struct.llentry* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = call i32 @LLTABLE6(%struct.ifnet* %46)
  %48 = load %struct.llentry*, %struct.llentry** %6, align 8
  %49 = call i32 @lltable_unlink_entry(i32 %47, %struct.llentry* %48)
  br label %50

50:                                               ; preds = %45, %33
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = call i32 @LLTABLE6(%struct.ifnet* %51)
  %53 = load %struct.llentry*, %struct.llentry** %5, align 8
  %54 = call i32 @lltable_link_entry(i32 %52, %struct.llentry* %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %55)
  %57 = load %struct.llentry*, %struct.llentry** %6, align 8
  %58 = icmp ne %struct.llentry* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @lle_event, align 4
  %61 = load %struct.llentry*, %struct.llentry** %6, align 8
  %62 = load i32, i32* @LLENTRY_EXPIRED, align 4
  %63 = call i32 @EVENTHANDLER_INVOKE(i32 %60, %struct.llentry* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load i32, i32* @lle_event, align 4
  %66 = load %struct.llentry*, %struct.llentry** %5, align 8
  %67 = load i32, i32* @LLENTRY_RESOLVED, align 4
  %68 = call i32 @EVENTHANDLER_INVOKE(i32 %65, %struct.llentry* %66, i32 %67)
  %69 = load %struct.llentry*, %struct.llentry** %5, align 8
  %70 = call i32 @LLE_WUNLOCK(%struct.llentry* %69)
  %71 = load %struct.llentry*, %struct.llentry** %6, align 8
  %72 = icmp ne %struct.llentry* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.llentry*, %struct.llentry** %6, align 8
  %75 = call i32 @llentry_free(%struct.llentry* %74)
  br label %76

76:                                               ; preds = %73, %64
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %31, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @nd6_need_cache(%struct.ifnet*) #1

declare dso_local %struct.llentry* @lltable_alloc_entry(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE6(%struct.ifnet*) #1

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local %struct.llentry* @lla_lookup(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @lltable_unlink_entry(i32, %struct.llentry*) #1

declare dso_local i32 @lltable_link_entry(i32, %struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.llentry*, i32) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @llentry_free(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
