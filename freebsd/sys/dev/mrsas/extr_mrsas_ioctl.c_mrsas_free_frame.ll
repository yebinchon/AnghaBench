; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_free_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_free_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32 }
%struct.mrsas_mfi_cmd = type { i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_free_frame(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mfi_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %4, align 8
  %5 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_dmamap_unload(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bus_dmamem_free(i32 %25, i32* %28, i32 %31)
  br label %33

33:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
