; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_knrdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_knrdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }
%struct.netmap_priv_d = type { %struct.nm_selinfo** }
%struct.nm_selinfo = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NR_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"kqueue_user underflow on %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"kqueue users for %s: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @netmap_knrdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_knrdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.netmap_priv_d*, align 8
  %4 = alloca %struct.nm_selinfo*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.netmap_priv_d*
  store %struct.netmap_priv_d* %8, %struct.netmap_priv_d** %3, align 8
  %9 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %10 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %9, i32 0, i32 0
  %11 = load %struct.nm_selinfo**, %struct.nm_selinfo*** %10, align 8
  %12 = load i64, i64* @NR_RX, align 8
  %13 = getelementptr inbounds %struct.nm_selinfo*, %struct.nm_selinfo** %11, i64 %12
  %14 = load %struct.nm_selinfo*, %struct.nm_selinfo** %13, align 8
  store %struct.nm_selinfo* %14, %struct.nm_selinfo** %4, align 8
  %15 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %16 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.knote*, %struct.knote** %2, align 8
  %19 = call i32 @knlist_remove(i32* %17, %struct.knote* %18, i32 0)
  %20 = call i32 (...) @NMG_LOCK()
  %21 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %22 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %27 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %33 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %37 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nm_selinfo*, %struct.nm_selinfo** %4, align 8
  %40 = getelementptr inbounds %struct.nm_selinfo, %struct.nm_selinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @nm_prinf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %41)
  %43 = call i32 (...) @NMG_UNLOCK()
  ret void
}

declare dso_local i32 @knlist_remove(i32*, %struct.knote*, i32) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @nm_prinf(i8*, i32, i64) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
