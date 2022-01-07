; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_unget_na.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_unget_na.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.ifnet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_unget_na(%struct.netmap_adapter* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %6 = icmp ne %struct.ifnet* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call i32 @if_rele(%struct.ifnet* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %12 = icmp ne %struct.netmap_adapter* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @if_rele(%struct.ifnet*) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
