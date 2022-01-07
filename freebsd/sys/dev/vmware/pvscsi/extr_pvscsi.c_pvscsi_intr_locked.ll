; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PVSCSI_INTR_ALL_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*)* @pvscsi_intr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_intr_locked(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %4 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %9 = call i32 @pvscsi_read_intr_status(%struct.pvscsi_softc* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PVSCSI_INTR_ALL_SUPPORTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PVSCSI_INTR_ALL_SUPPORTED, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @pvscsi_write_intr_status(%struct.pvscsi_softc* %15, i32 %18)
  %20 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %21 = call i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc* %20)
  %22 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %23 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %28 = call i32 @pvscsi_process_msg_ring(%struct.pvscsi_softc* %27)
  br label %29

29:                                               ; preds = %26, %14
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @pvscsi_read_intr_status(%struct.pvscsi_softc*) #1

declare dso_local i32 @pvscsi_write_intr_status(%struct.pvscsi_softc*, i32) #1

declare dso_local i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc*) #1

declare dso_local i32 @pvscsi_process_msg_ring(%struct.pvscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
