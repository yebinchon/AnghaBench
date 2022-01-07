; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_clear_native_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_clear_native_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@NAF_NETMAP_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nm_clear_native_flags(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %4 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %4, i32 0, i32 2
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %14 = call i32 @nm_update_hostrings_mode(%struct.netmap_adapter* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i32 @nm_os_onexit(%struct.ifnet* %15)
  %17 = load i32, i32* @NAF_NETMAP_ON, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @nm_update_hostrings_mode(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_os_onexit(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
