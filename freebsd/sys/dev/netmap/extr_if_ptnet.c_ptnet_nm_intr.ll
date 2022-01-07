; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.ptnet_softc = type { i32, %struct.ptnet_queue* }
%struct.ptnet_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_adapter*, i32)* @ptnet_nm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_nm_intr(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptnet_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptnet_queue*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ptnet_softc* @if_getsoftc(i32 %10)
  store %struct.ptnet_softc* %11, %struct.ptnet_softc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %19, i32 0, i32 1
  %21 = load %struct.ptnet_queue*, %struct.ptnet_queue** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %21, i64 %23
  store %struct.ptnet_queue* %24, %struct.ptnet_queue** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ptnet_queue*, %struct.ptnet_queue** %7, align 8
  %27 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %12

33:                                               ; preds = %12
  ret void
}

declare dso_local %struct.ptnet_softc* @if_getsoftc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
