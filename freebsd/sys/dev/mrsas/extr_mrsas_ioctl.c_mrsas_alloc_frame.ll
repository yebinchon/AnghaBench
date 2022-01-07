; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_alloc_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_alloc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32 }
%struct.mrsas_mfi_cmd = type { i8*, i32, i32 }

@MRSAS_MFI_FRAME_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot alloc MFI frame memory\0A\00", align 1
@mrsas_alloc_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot load IO request memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mrsas_alloc_frame(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %5, align 8
  %7 = load i32, i32* @MRSAS_MFI_FRAME_SIZE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %14 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %14, i32 0, i32 2
  %16 = call i64 @bus_dmamem_alloc(i32 %10, i8** %12, i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @mrsas_alloc_cb, align 4
  %35 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %38 = call i64 @bus_dmamap_load(i32 %26, i32 %29, i8* %32, i32 %33, i32 %34, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %49

45:                                               ; preds = %23
  %46 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %45, %40, %18
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
