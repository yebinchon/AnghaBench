; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c__nm_may_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c__nm_may_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@netmap_fwd = common dso_local global i64 0, align 8
@NR_FORWARD = common dso_local global i32 0, align 4
@NAF_HOST_RINGS = common dso_local global i32 0, align 4
@NR_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*)* @_nm_may_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nm_may_forward(%struct.netmap_kring* %0) #0 {
  %2 = alloca %struct.netmap_kring*, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %2, align 8
  %3 = load i64, i64* @netmap_fwd, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %7 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NR_FORWARD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5, %1
  %15 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %16 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAF_HOST_RINGS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %25 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NR_RX, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %14, %5
  %30 = phi i1 [ false, %14 ], [ false, %5 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
