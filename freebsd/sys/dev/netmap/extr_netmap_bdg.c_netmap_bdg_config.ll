; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_ifreq = type { i32 }
%struct.nm_bridge = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nm_ifreq*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_bdg_config(%struct.nm_ifreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm_ifreq*, align 8
  %4 = alloca %struct.nm_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.nm_ifreq* %0, %struct.nm_ifreq** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @NMG_LOCK()
  %8 = load %struct.nm_ifreq*, %struct.nm_ifreq** %3, align 8
  %9 = getelementptr inbounds %struct.nm_ifreq, %struct.nm_ifreq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nm_bridge* @nm_find_bridge(i32 %10, i32 0, i32* null)
  store %struct.nm_bridge* %11, %struct.nm_bridge** %4, align 8
  %12 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %13 = icmp ne %struct.nm_bridge* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 (...) @NMG_UNLOCK()
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = call i32 (...) @NMG_UNLOCK()
  %19 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %20 = call i32 @BDG_RLOCK(%struct.nm_bridge* %19)
  %21 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %22 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nm_ifreq*)*, i32 (%struct.nm_ifreq*)** %23, align 8
  %25 = icmp ne i32 (%struct.nm_ifreq*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %28 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.nm_ifreq*)*, i32 (%struct.nm_ifreq*)** %29, align 8
  %31 = load %struct.nm_ifreq*, %struct.nm_ifreq** %3, align 8
  %32 = call i32 %30(%struct.nm_ifreq* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %17
  %34 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %35 = call i32 @BDG_RUNLOCK(%struct.nm_bridge* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local %struct.nm_bridge* @nm_find_bridge(i32, i32, i32*) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

declare dso_local i32 @BDG_RLOCK(%struct.nm_bridge*) #1

declare dso_local i32 @BDG_RUNLOCK(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
