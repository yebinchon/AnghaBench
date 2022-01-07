; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i32, i32*, %struct.netmap_adapter*, i32* }
%struct.netmap_adapter = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NM_SYNC_KLOOP_STOPPING = common dso_local global i32 0, align 4
@NR_RX = common dso_local global i64 0, align 8
@NM_SYNC_KLOOP_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_sync_kloop_stop(%struct.netmap_priv_d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_priv_d*, align 8
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %8 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  %14 = call i32 (...) @mb()
  %15 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %16 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %15, i32 0, i32 2
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %16, align 8
  store %struct.netmap_adapter* %17, %struct.netmap_adapter** %4, align 8
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %19 = call i32 @nm_netmap_on(%struct.netmap_adapter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %13
  %24 = call i32 (...) @NMG_LOCK()
  %25 = load i32, i32* @NM_SYNC_KLOOP_STOPPING, align 4
  %26 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = call i32 (...) @NMG_UNLOCK()
  %31 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %32 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NR_RX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nm_os_selwakeup(i32 %36)
  br label %38

38:                                               ; preds = %41, %23
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = call i32 @usleep_range(i32 1000, i32 1500)
  %43 = call i32 (...) @NMG_LOCK()
  %44 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %3, align 8
  %45 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @NM_ACCESS_ONCE(i32 %46)
  %48 = load i32, i32* @NM_SYNC_KLOOP_RUNNING, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = call i32 (...) @NMG_UNLOCK()
  br label %38

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %21, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

declare dso_local i32 @nm_os_selwakeup(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @NM_ACCESS_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
