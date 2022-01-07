; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_cloner_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_cloner_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.ifnet = type { i32, %struct.adapter* }
%struct.adapter = type { i32, i32, i32* }

@t4_trace_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, %struct.ifnet*)* @t4_cloner_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_cloner_destroy(%struct.if_clone* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.if_clone*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = call i32 @sx_xlock(i32* @t4_trace_lock)
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = icmp ne %struct.adapter* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 1
  store %struct.adapter* null, %struct.adapter** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = call i32 @ifmedia_removeall(i32* %28)
  br label %30

30:                                               ; preds = %16, %2
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @ether_ifdetach(%struct.ifnet* %31)
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = call i32 @if_free(%struct.ifnet* %33)
  %35 = load %struct.if_clone*, %struct.if_clone** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ifc_free_unit(%struct.if_clone* %35, i32 %36)
  %38 = call i32 @sx_xunlock(i32* @t4_trace_lock)
  ret i32 0
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @ifc_free_unit(%struct.if_clone*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
