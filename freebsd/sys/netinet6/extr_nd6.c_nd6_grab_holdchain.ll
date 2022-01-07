; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_grab_holdchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_grab_holdchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i64, %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@ND6_LLINFO_STALE = common dso_local global i64 0, align 8
@ND6_LLINFO_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_grab_holdchain(%struct.llentry* %0, %struct.mbuf** %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.llentry* %0, %struct.llentry** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %6, align 8
  %7 = load %struct.llentry*, %struct.llentry** %4, align 8
  %8 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %7)
  %9 = load %struct.llentry*, %struct.llentry** %4, align 8
  %10 = getelementptr inbounds %struct.llentry, %struct.llentry* %9, i32 0, i32 1
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %12 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %11, %struct.mbuf** %12, align 8
  %13 = load %struct.llentry*, %struct.llentry** %4, align 8
  %14 = getelementptr inbounds %struct.llentry, %struct.llentry* %13, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  %15 = load %struct.llentry*, %struct.llentry** %4, align 8
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %17 = bitcast %struct.sockaddr_in6* %16 to %struct.sockaddr*
  %18 = call i32 @lltable_fill_sa_entry(%struct.llentry* %15, %struct.sockaddr* %17)
  %19 = load %struct.llentry*, %struct.llentry** %4, align 8
  %20 = getelementptr inbounds %struct.llentry, %struct.llentry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ND6_LLINFO_STALE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.llentry*, %struct.llentry** %4, align 8
  %26 = load i32, i32* @ND6_LLINFO_DELAY, align 4
  %27 = call i32 @nd6_llinfo_setstate(%struct.llentry* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @lltable_fill_sa_entry(%struct.llentry*, %struct.sockaddr*) #1

declare dso_local i32 @nd6_llinfo_setstate(%struct.llentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
