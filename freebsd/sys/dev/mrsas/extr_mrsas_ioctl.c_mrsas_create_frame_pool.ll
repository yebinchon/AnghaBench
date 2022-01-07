; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_create_frame_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_ioctl.c_mrsas_create_frame_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, %struct.mrsas_mfi_cmd**, i32, i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MRSAS_MFI_FRAME_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot create MFI frame tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MRSAS_MAX_MFI_CMDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot alloc MFI frame memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_create_frame_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_create_frame_pool(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %6 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load i32, i32* @MRSAS_MFI_FRAME_SIZE, align 4
  %12 = load i32, i32* @MRSAS_MFI_FRAME_SIZE, align 4
  %13 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %14, i32 0, i32 2
  %16 = call i64 @bus_dma_tag_create(i32 %8, i32 1, i32 0, i32 %9, i32 %10, i32* null, i32* null, i32 %11, i32 1, i32 %12, i32 %13, i32* null, i32* null, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MRSAS_MAX_MFI_CMDS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %30, i32 0, i32 1
  %32 = load %struct.mrsas_mfi_cmd**, %struct.mrsas_mfi_cmd*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %32, i64 %34
  %36 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %35, align 8
  store %struct.mrsas_mfi_cmd* %36, %struct.mrsas_mfi_cmd** %5, align 8
  %37 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %38 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %39 = call %struct.TYPE_5__* @mrsas_alloc_frame(%struct.mrsas_softc* %37, %struct.mrsas_mfi_cmd* %38)
  %40 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %40, i32 0, i32 0
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %29
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %75

52:                                               ; preds = %29
  %53 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* @MRSAS_MFI_FRAME_SIZE, align 4
  %57 = call i32 @memset(%struct.TYPE_5__* %55, i32 0, i32 %56)
  %58 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 8
  %66 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %25

74:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %46, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @mrsas_alloc_frame(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
