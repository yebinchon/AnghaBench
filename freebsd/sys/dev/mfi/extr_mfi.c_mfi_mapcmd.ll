; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_mapcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_mapcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32 }
%struct.mfi_command = type { i32, i32, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_CMD_STP = common dso_local global i64 0, align 8
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MFI_CMD_CCB = common dso_local global i32 0, align 4
@mfi_data_cb = common dso_local global i32 0, align 4
@MFI_CMD_BIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@MFI_FLAGS_QFRZN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_mapcmd(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %8, i32 0, i32 2
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %13 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %107

16:                                               ; preds = %2
  %17 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %18 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MFI_CMD_STP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %107

25:                                               ; preds = %16
  %26 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %27 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MFI_CMD_POLLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %38 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MFI_CMD_CCB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %48 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %51 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @mfi_data_cb, align 4
  %54 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bus_dmamap_load_ccb(i32 %46, i32 %49, i32* %52, i32 %53, %struct.mfi_command* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %96

57:                                               ; preds = %35
  %58 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %59 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MFI_CMD_BIO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %69 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %72 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @mfi_data_cb, align 4
  %75 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @bus_dmamap_load_bio(i32 %67, i32 %70, i32 %73, i32 %74, %struct.mfi_command* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %95

78:                                               ; preds = %57
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %83 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %86 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %89 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @mfi_data_cb, align 4
  %92 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @bus_dmamap_load(i32 %81, i32 %84, i32* %87, i32 %90, i32 %91, %struct.mfi_command* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %78, %64
  br label %96

96:                                               ; preds = %95, %43
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EINPROGRESS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @MFI_FLAGS_QFRZN, align 4
  %102 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %113

106:                                              ; preds = %96
  br label %111

107:                                              ; preds = %16, %2
  %108 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %109 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %110 = call i32 @mfi_send_frame(%struct.mfi_softc* %108, %struct.mfi_command* %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %106
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %100
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32*, i32, %struct.mfi_command*, i32) #1

declare dso_local i32 @bus_dmamap_load_bio(i32, i32, i32, i32, %struct.mfi_command*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mfi_command*, i32) #1

declare dso_local i32 @mfi_send_frame(%struct.mfi_softc*, %struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
