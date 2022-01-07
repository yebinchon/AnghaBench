; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_command = type { i32, i32 (%struct.mfi_command*)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_CMD_MAPPED = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_STP = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@MFI_CMD_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_complete(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %4, align 8
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 1
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %11 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MFI_CMD_MAPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %17 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %18 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MFI_CMD_STP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23, %16
  %33 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %38 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %52 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @bus_dmamap_sync(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %60 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bus_dmamap_unload(i32 %58, i32 %61)
  %63 = load i32, i32* @MFI_CMD_MAPPED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %66 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %47, %2
  %70 = load i32, i32* @MFI_CMD_COMPLETED, align 4
  %71 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %72 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %76 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %75, i32 0, i32 1
  %77 = load i32 (%struct.mfi_command*)*, i32 (%struct.mfi_command*)** %76, align 8
  %78 = icmp ne i32 (%struct.mfi_command*)* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %81 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %80, i32 0, i32 1
  %82 = load i32 (%struct.mfi_command*)*, i32 (%struct.mfi_command*)** %81, align 8
  %83 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %84 = call i32 %82(%struct.mfi_command* %83)
  br label %88

85:                                               ; preds = %69
  %86 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %87 = call i32 @wakeup(%struct.mfi_command* %86)
  br label %88

88:                                               ; preds = %85, %79
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @wakeup(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
