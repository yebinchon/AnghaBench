; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_set_active_vq_pairs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_set_active_vq_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, i32, i32 }

@VTNET_FLAG_MULTIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot set active queue pairs to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_set_active_vq_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_set_active_vq_pairs(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %5 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VTNET_FLAG_MULTIQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @vtnet_ctrl_mq_cmd(%struct.vtnet_softc* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %14
  ret void
}

declare dso_local i64 @vtnet_ctrl_mq_cmd(%struct.vtnet_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
