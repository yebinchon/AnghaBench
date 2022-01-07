; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_devat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_devat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ifvlantrunk* }
%struct.ifvlantrunk = type { i32 }
%struct.ifvlan = type { %struct.ifnet* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifnet* (%struct.ifnet*, i32)* @vlan_devat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifnet* @vlan_devat(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifvlantrunk*, align 8
  %7 = alloca %struct.ifvlan*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @NET_EPOCH_ASSERT()
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %10, align 8
  store %struct.ifvlantrunk* %11, %struct.ifvlantrunk** %6, align 8
  %12 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %6, align 8
  %13 = icmp eq %struct.ifvlantrunk* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  br label %27

15:                                               ; preds = %2
  store %struct.ifnet* null, %struct.ifnet** %4, align 8
  %16 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.ifvlan* @vlan_gethash(%struct.ifvlantrunk* %16, i32 %17)
  store %struct.ifvlan* %18, %struct.ifvlan** %7, align 8
  %19 = load %struct.ifvlan*, %struct.ifvlan** %7, align 8
  %20 = icmp ne %struct.ifvlan* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.ifvlan*, %struct.ifvlan** %7, align 8
  %23 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %22, i32 0, i32 0
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  store %struct.ifnet* %24, %struct.ifnet** %4, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  store %struct.ifnet* %26, %struct.ifnet** %3, align 8
  br label %27

27:                                               ; preds = %25, %14
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  ret %struct.ifnet* %28
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.ifvlan* @vlan_gethash(%struct.ifvlantrunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
