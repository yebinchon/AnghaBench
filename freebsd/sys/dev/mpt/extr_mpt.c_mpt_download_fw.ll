; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_download_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i32, i32, i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No PIO resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Downloading Firmware - Image Size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not enter diagnostic mode!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MPT_OFFSET_DIAGNOSTIC = common dso_local global i32 0, align 4
@MPI_DIAG_RW_ENABLE = common dso_local global i64 0, align 8
@MPI_DIAG_DISABLE_ARM = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@MPT_OFFSET_DIAG_ADDR = common dso_local global i32 0, align 4
@MPT_OFFSET_DIAG_DATA = common dso_local global i32 0, align 4
@MPT_DIAG_MEM_CFG_BASE = common dso_local global i64 0, align 8
@MPT_DIAG_MEM_CFG_BADFL = common dso_local global i64 0, align 8
@MPI_DIAG_PREVENT_IOC_BOOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_download_fw(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %176

17:                                               ; preds = %1
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = call i32 @mpt_enable_diag_mode(%struct.mpt_softc* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %29 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %2, align 4
  br label %176

31:                                               ; preds = %17
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %34 = load i64, i64* @MPI_DIAG_RW_ENABLE, align 8
  %35 = load i64, i64* @MPI_DIAG_DISABLE_ARM, align 8
  %36 = or i64 %34, %35
  %37 = call i32 @mpt_write(%struct.mpt_softc* %32, i32 %33, i64 %36)
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %4, align 8
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = bitcast %struct.TYPE_3__* %54 to i64*
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mpt_diag_outsl(%struct.mpt_softc* %50, i32 %53, i64* %55, i32 %58)
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %67 = call i32 @bus_dmamap_sync(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %74, %31
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = ptrtoint %struct.TYPE_3__* %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %76, %77
  %79 = inttoptr i64 %78 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %8, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %6, align 8
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %87 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %90 = call i32 @bus_dmamap_sync(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = bitcast %struct.TYPE_4__* %95 to i64*
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mpt_diag_outsl(%struct.mpt_softc* %91, i32 %94, i64* %96, i32 %99)
  %101 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %108 = call i32 @bus_dmamap_sync(i32 %103, i32 %106, i32 %107)
  br label %71

109:                                              ; preds = %71
  %110 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SYS_RES_IOPORT, align 4
  %119 = call i32 @pci_enable_io(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %122 = load i32, i32* @MPT_OFFSET_DIAG_ADDR, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @mpt_pio_write(%struct.mpt_softc* %121, i32 %122, i64 %125)
  %127 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %128 = load i32, i32* @MPT_OFFSET_DIAG_DATA, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mpt_pio_write(%struct.mpt_softc* %127, i32 %128, i64 %131)
  %133 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %134 = load i32, i32* @MPT_OFFSET_DIAG_ADDR, align 4
  %135 = load i64, i64* @MPT_DIAG_MEM_CFG_BASE, align 8
  %136 = call i32 @mpt_pio_write(%struct.mpt_softc* %133, i32 %134, i64 %135)
  %137 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %138 = load i32, i32* @MPT_OFFSET_DIAG_DATA, align 4
  %139 = call i64 @mpt_pio_read(%struct.mpt_softc* %137, i32 %138)
  %140 = load i64, i64* @MPT_DIAG_MEM_CFG_BADFL, align 8
  %141 = or i64 %139, %140
  store i64 %141, i64* %7, align 8
  %142 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %143 = load i32, i32* @MPT_OFFSET_DIAG_ADDR, align 4
  %144 = load i64, i64* @MPT_DIAG_MEM_CFG_BASE, align 8
  %145 = call i32 @mpt_pio_write(%struct.mpt_softc* %142, i32 %143, i64 %144)
  %146 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %147 = load i32, i32* @MPT_OFFSET_DIAG_DATA, align 4
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @mpt_pio_write(%struct.mpt_softc* %146, i32 %147, i64 %148)
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %120
  %155 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SYS_RES_IOPORT, align 4
  %159 = call i32 @pci_disable_io(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %120
  %161 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %162 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %163 = call i64 @mpt_read(%struct.mpt_softc* %161, i32 %162)
  store i64 %163, i64* %7, align 8
  %164 = load i64, i64* @MPI_DIAG_PREVENT_IOC_BOOT, align 8
  %165 = load i64, i64* @MPI_DIAG_DISABLE_ARM, align 8
  %166 = or i64 %164, %165
  %167 = xor i64 %166, -1
  %168 = load i64, i64* %7, align 8
  %169 = and i64 %168, %167
  store i64 %169, i64* %7, align 8
  %170 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %171 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @mpt_write(%struct.mpt_softc* %170, i32 %171, i64 %172)
  %174 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %175 = call i32 @mpt_disable_diag_mode(%struct.mpt_softc* %174)
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %160, %27, %13
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_enable_diag_mode(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mpt_diag_outsl(%struct.mpt_softc*, i32, i64*, i32) #1

declare dso_local i32 @pci_enable_io(i32, i32) #1

declare dso_local i32 @mpt_pio_write(%struct.mpt_softc*, i32, i64) #1

declare dso_local i64 @mpt_pio_read(%struct.mpt_softc*, i32) #1

declare dso_local i32 @pci_disable_io(i32, i32) #1

declare dso_local i64 @mpt_read(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_disable_diag_mode(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
