; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, i32, i64 }
%struct.upgt_data = type { i32, i64 }
%struct.upgt_lmac_mem = type { i32, i8* }
%struct.upgt_lmac_eeprom = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i32, i64 }

@UPGT_EEPROM_BLOCK_SIZE = common dso_local global i32 0, align 4
@UPGT_EEPROM_SIZE = common dso_local global i32 0, align 4
@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"request EEPROM block (offset=%d, len=%d)\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@UPGT_MEMSIZE_FRAME_HEAD = common dso_local global i64 0, align 8
@UPGT_H1_TYPE_CTRL = common dso_local global i32 0, align 4
@UPGT_H2_TYPE_EEPROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"eeprom_request\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"timeout while waiting for EEPROM data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upgt_softc*)* @upgt_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_eeprom_read(%struct.upgt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.upgt_softc*, align 8
  %4 = alloca %struct.upgt_data*, align 8
  %5 = alloca %struct.upgt_lmac_mem*, align 8
  %6 = alloca %struct.upgt_lmac_eeprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.upgt_softc* %0, %struct.upgt_softc** %3, align 8
  %10 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %11 = call i32 @UPGT_LOCK(%struct.upgt_softc* %10)
  %12 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %12, i32 0, i32 1
  %14 = call i32 @usb_pause_mtx(i32* %13, i32 100)
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @UPGT_EEPROM_BLOCK_SIZE, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %141, %1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %142

20:                                               ; preds = %16
  %21 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %22 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @DPRINTF(%struct.upgt_softc* %21, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %27 = call %struct.upgt_data* @upgt_getbuf(%struct.upgt_softc* %26)
  store %struct.upgt_data* %27, %struct.upgt_data** %4, align 8
  %28 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %29 = icmp eq %struct.upgt_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %32 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %31)
  %33 = load i32, i32* @ENOBUFS, align 4
  store i32 %33, i32* %2, align 4
  br label %145

34:                                               ; preds = %20
  %35 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %36 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @MCLBYTES, align 4
  %39 = call i32 @memset(i64 %37, i32 0, i32 %38)
  %40 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %41 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.upgt_lmac_mem*
  store %struct.upgt_lmac_mem* %43, %struct.upgt_lmac_mem** %5, align 8
  %44 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UPGT_MEMSIZE_FRAME_HEAD, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @htole32(i64 %48)
  %50 = load %struct.upgt_lmac_mem*, %struct.upgt_lmac_mem** %5, align 8
  %51 = getelementptr inbounds %struct.upgt_lmac_mem, %struct.upgt_lmac_mem* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.upgt_lmac_mem*, %struct.upgt_lmac_mem** %5, align 8
  %53 = getelementptr inbounds %struct.upgt_lmac_mem, %struct.upgt_lmac_mem* %52, i64 1
  %54 = bitcast %struct.upgt_lmac_mem* %53 to %struct.upgt_lmac_eeprom*
  store %struct.upgt_lmac_eeprom* %54, %struct.upgt_lmac_eeprom** %6, align 8
  %55 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @UPGT_H1_TYPE_CTRL, align 4
  %59 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %60 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 60, %63
  %65 = trunc i64 %64 to i32
  %66 = call i8* @htole16(i32 %65)
  %67 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %68 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %71 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @htole32(i64 %72)
  %74 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %75 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @UPGT_H2_TYPE_EEPROM, align 4
  %78 = call i8* @htole16(i32 %77)
  %79 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %80 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %83 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @htole16(i32 %85)
  %87 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %88 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @htole16(i32 %89)
  %91 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %92 = getelementptr inbounds %struct.upgt_lmac_eeprom, %struct.upgt_lmac_eeprom* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 80, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %98 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.upgt_lmac_eeprom*, %struct.upgt_lmac_eeprom** %6, align 8
  %100 = bitcast %struct.upgt_lmac_eeprom* %99 to i32*
  %101 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %102 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 16
  %106 = trunc i64 %105 to i32
  %107 = call i32 @upgt_chksum_le(i32* %100, i32 %106)
  %108 = load %struct.upgt_lmac_mem*, %struct.upgt_lmac_mem** %5, align 8
  %109 = getelementptr inbounds %struct.upgt_lmac_mem, %struct.upgt_lmac_mem* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %111 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %112 = call i32 @upgt_bulk_tx(%struct.upgt_softc* %110, %struct.upgt_data* %111)
  %113 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %114 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %115 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %114, i32 0, i32 1
  %116 = load i32, i32* @hz, align 4
  %117 = call i32 @mtx_sleep(%struct.upgt_softc* %113, i32* %115, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %34
  %121 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %122 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %126 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %125)
  %127 = load i32, i32* @EIO, align 4
  store i32 %127, i32* %2, align 4
  br label %145

128:                                              ; preds = %34
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %138, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %128
  br label %16

142:                                              ; preds = %16
  %143 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %144 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %120, %30
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i32, i32) #1

declare dso_local %struct.upgt_data* @upgt_getbuf(%struct.upgt_softc*) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @upgt_chksum_le(i32*, i32) #1

declare dso_local i32 @upgt_bulk_tx(%struct.upgt_softc*, %struct.upgt_data*) #1

declare dso_local i32 @mtx_sleep(%struct.upgt_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
