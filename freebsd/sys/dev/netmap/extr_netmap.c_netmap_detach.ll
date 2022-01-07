; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.netmap_adapter = type { i32 }

@NM_KR_LOCKED = common dso_local global i32 0, align 4
@NAF_NATIVE = common dso_local global i32 0, align 4
@NAF_ZOMBIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_detach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.netmap_adapter*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.netmap_adapter* @NA(%struct.ifnet* %4)
  store %struct.netmap_adapter* %5, %struct.netmap_adapter** %3, align 8
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %7 = icmp ne %struct.netmap_adapter* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = call i32 (...) @NMG_LOCK()
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %12 = load i32, i32* @NM_KR_LOCKED, align 4
  %13 = call i32 @netmap_set_all_rings(%struct.netmap_adapter* %11, i32 %12)
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NAF_NATIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %22 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %9
  %25 = load i32, i32* @NAF_ZOMBIE, align 4
  %26 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %32 = call i32 @netmap_enable_all_rings(%struct.ifnet* %31)
  %33 = call i32 (...) @NMG_UNLOCK()
  br label %34

34:                                               ; preds = %30, %8
  ret void
}

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @netmap_set_all_rings(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

declare dso_local i32 @netmap_enable_all_rings(%struct.ifnet*) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
