; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_get_log_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_get_log_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32 }
%struct.mfi_evt_log_state = type { i32 }
%struct.mfi_command = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_DCMD_CTRL_EVENT_GETINFO = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get log state\0A\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_evt_log_state**)* @mfi_get_log_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_get_log_state(%struct.mfi_softc* %0, %struct.mfi_evt_log_state** %1) #0 {
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_evt_log_state**, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store %struct.mfi_evt_log_state** %1, %struct.mfi_evt_log_state*** %4, align 8
  store %struct.mfi_command* null, %struct.mfi_command** %5, align 8
  %7 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %7, i32 0, i32 2
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %12 = load i32, i32* @MFI_DCMD_CTRL_EVENT_GETINFO, align 4
  %13 = load %struct.mfi_evt_log_state**, %struct.mfi_evt_log_state*** %4, align 8
  %14 = bitcast %struct.mfi_evt_log_state** %13 to i8**
  %15 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %11, %struct.mfi_command** %5, i32 %12, i8** %14, i32 4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2
  %20 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %21 = load i32, i32* @MFI_CMD_POLLED, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %24 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %26 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %27 = call i32 @mfi_mapcmd(%struct.mfi_softc* %25, %struct.mfi_command* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %50

34:                                               ; preds = %19
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %39 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %42 = call i32 @bus_dmamap_sync(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %47 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_dmamap_unload(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %34, %29, %18
  %51 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %52 = icmp ne %struct.mfi_command* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %55 = call i32 @mfi_release_command(%struct.mfi_command* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
