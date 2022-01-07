; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_sys_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_sys_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32 }
%struct.mfi_command = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mfi_pd_info = type { i32 }
%struct.mfi_system_pending = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pd_link = common dso_local global i32 0, align 4
@MFI_DCMD_PD_GET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocated for MFI_DCMD_PD_GET_INFO %d\0A\00", align 1
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get physical drive info %d\0A\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, i32)* @mfi_add_sys_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_add_sys_pd(%struct.mfi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca %struct.mfi_dcmd_frame*, align 8
  %8 = alloca %struct.mfi_pd_info*, align 8
  %9 = alloca %struct.mfi_system_pending*, align 8
  %10 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mfi_dcmd_frame* null, %struct.mfi_dcmd_frame** %7, align 8
  store %struct.mfi_pd_info* null, %struct.mfi_pd_info** %8, align 8
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 3
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load i32, i32* @M_MFIBUF, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.mfi_system_pending* @malloc(i32 4, i32 %15, i32 %18)
  store %struct.mfi_system_pending* %19, %struct.mfi_system_pending** %9, align 8
  %20 = load %struct.mfi_system_pending*, %struct.mfi_system_pending** %9, align 8
  %21 = icmp ne %struct.mfi_system_pending* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mfi_system_pending*, %struct.mfi_system_pending** %9, align 8
  %25 = getelementptr inbounds %struct.mfi_system_pending, %struct.mfi_system_pending* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %26, i32 0, i32 2
  %28 = load %struct.mfi_system_pending*, %struct.mfi_system_pending** %9, align 8
  %29 = load i32, i32* @pd_link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.mfi_system_pending* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %33 = load i32, i32* @MFI_DCMD_PD_GET_INFO, align 4
  %34 = bitcast %struct.mfi_pd_info** %8 to i8**
  %35 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %32, %struct.mfi_command** %6, i32 %33, i8** %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %8, align 8
  %45 = icmp ne %struct.mfi_pd_info* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %8, align 8
  %48 = load i32, i32* @M_MFIBUF, align 4
  %49 = call i32 @free(%struct.mfi_pd_info* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %107

52:                                               ; preds = %31
  %53 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %54 = load i32, i32* @MFI_CMD_POLLED, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %57 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %59 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %61, %struct.mfi_dcmd_frame** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %64 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %68 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %71 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %74 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %75 = call i32 @mfi_mapcmd(%struct.mfi_softc* %73, %struct.mfi_command* %74)
  store i32 %75, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %52
  %78 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %79 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %8, align 8
  %84 = load i32, i32* @M_MFIBUF, align 4
  %85 = call i32 @free(%struct.mfi_pd_info* %83, i32 %84)
  %86 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %87 = call i32 @mfi_release_command(%struct.mfi_command* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %107

89:                                               ; preds = %52
  %90 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %94 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %97 = call i32 @bus_dmamap_sync(i32 %92, i32 %95, i32 %96)
  %98 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %102 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bus_dmamap_unload(i32 %100, i32 %103)
  %105 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %106 = call i32 @mfi_add_sys_pd_complete(%struct.mfi_command* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %89, %77, %50
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_system_pending* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mfi_system_pending*, i32) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.mfi_pd_info*, i32) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mfi_add_sys_pd_complete(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
