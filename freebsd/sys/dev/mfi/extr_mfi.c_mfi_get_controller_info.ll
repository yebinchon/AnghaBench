; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_get_controller_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_get_controller_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.mfi_command = type { i32, i32 }
%struct.mfi_ctrl_info = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MFI_DCMD_CTRL_GETINFO = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get controller info\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*)* @mfi_get_controller_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_get_controller_info(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_softc*, align 8
  %3 = alloca %struct.mfi_command*, align 8
  %4 = alloca %struct.mfi_ctrl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %2, align 8
  store %struct.mfi_command* null, %struct.mfi_command** %3, align 8
  store %struct.mfi_ctrl_info* null, %struct.mfi_ctrl_info** %4, align 8
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %8, i32 0, i32 2
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %12 = load i32, i32* @MFI_DCMD_CTRL_GETINFO, align 4
  %13 = bitcast %struct.mfi_ctrl_info** %4 to i8**
  %14 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %11, %struct.mfi_command** %3, i32 %12, i8** %13, i32 16)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %83

18:                                               ; preds = %1
  %19 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %20 = load i32, i32* @MFI_CMD_POLLED, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %23 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %25 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %26 = call i32 @mfi_mapcmd(%struct.mfi_softc* %24, %struct.mfi_command* %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %18
  %29 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %40 = sdiv i32 %38, %39
  %41 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %7, align 4
  br label %83

43:                                               ; preds = %18
  %44 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %48 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %50)
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %56 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bus_dmamap_unload(i32 %54, i32 %57)
  %59 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %60 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %65 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %69 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %77 = getelementptr inbounds %struct.mfi_ctrl_info, %struct.mfi_ctrl_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %82 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %43, %28, %17
  %84 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %85 = icmp ne %struct.mfi_ctrl_info* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.mfi_ctrl_info*, %struct.mfi_ctrl_info** %4, align 8
  %88 = load i32, i32* @M_MFIBUF, align 4
  %89 = call i32 @free(%struct.mfi_ctrl_info* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %92 = icmp ne %struct.mfi_command* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %95 = call i32 @mfi_release_command(%struct.mfi_command* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %98 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %97, i32 0, i32 2
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free(%struct.mfi_ctrl_info*, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
