; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_make_zombie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_make_zombie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.netmap_adapter = type { i32 }

@NM_KR_LOCKED = common dso_local global i32 0, align 4
@NAF_ZOMBIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_make_zombie(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.netmap_adapter*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call i64 @NM_NA_VALID(%struct.ifnet* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call %struct.netmap_adapter* @NA(%struct.ifnet* %8)
  store %struct.netmap_adapter* %9, %struct.netmap_adapter** %3, align 8
  %10 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %11 = load i32, i32* @NM_KR_LOCKED, align 4
  %12 = call i32 @netmap_set_all_rings(%struct.netmap_adapter* %10, i32 %11)
  %13 = load i32, i32* @NAF_ZOMBIE, align 4
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %19 = call i32 @netmap_set_all_rings(%struct.netmap_adapter* %18, i32 0)
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @NM_NA_VALID(%struct.ifnet*) #1

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i32 @netmap_set_all_rings(%struct.netmap_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
