; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_vi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_vi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vi_info*)* @cxgbe_vi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbe_vi_detach(%struct.vi_info* %0) #0 {
  %2 = alloca %struct.vi_info*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.vi_info* %0, %struct.vi_info** %2, align 8
  %4 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %5 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @ether_ifdetach(%struct.ifnet* %7)
  %9 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %10 = call i32 @cxgbe_uninit_synchronized(%struct.vi_info* %9)
  %11 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %12 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %11, i32 0, i32 1
  %13 = call i32 @callout_drain(i32* %12)
  %14 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %15 = call i32 @vi_full_uninit(%struct.vi_info* %14)
  %16 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %17 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %19 = call i32 @if_free(%struct.ifnet* %18)
  %20 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %21 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %20, i32 0, i32 0
  store %struct.ifnet* null, %struct.ifnet** %21, align 8
  ret void
}

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @cxgbe_uninit_synchronized(%struct.vi_info*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @vi_full_uninit(%struct.vi_info*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
