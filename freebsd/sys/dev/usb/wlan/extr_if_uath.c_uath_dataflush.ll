; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_dataflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_dataflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, i32, i32*, i32, i32 }
%struct.uath_data = type { i32, i64, i32*, i32* }
%struct.uath_chunk = type { i32, i32, i64 }
%struct.uath_tx_desc = type { i64, i8*, i8*, i8*, i8*, i8* }

@ENOBUFS = common dso_local global i32 0, align 4
@UATH_CFLAGS_FINAL = common dso_local global i32 0, align 4
@WDCMSG_FLUSH = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_tx_pending = common dso_local global i32 0, align 4
@UATH_BULK_TX = common dso_local global i64 0, align 8
@UATH_DEBUG_CMDS = common dso_local global i32 0, align 4
@UATH_DEBUG_CMDS_DUMP = common dso_local global i32 0, align 4
@UATH_DEBUG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*)* @uath_dataflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_dataflush(%struct.uath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.uath_data*, align 8
  %5 = alloca %struct.uath_chunk*, align 8
  %6 = alloca %struct.uath_tx_desc*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %8 = call i32 @UATH_ASSERT_LOCKED(%struct.uath_softc* %7)
  %9 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %10 = call %struct.uath_data* @uath_getbuf(%struct.uath_softc* %9)
  store %struct.uath_data* %10, %struct.uath_data** %4, align 8
  %11 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %12 = icmp eq %struct.uath_data* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOBUFS, align 4
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %17 = getelementptr inbounds %struct.uath_data, %struct.uath_data* %16, i32 0, i32 0
  store i32 64, i32* %17, align 8
  %18 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %19 = getelementptr inbounds %struct.uath_data, %struct.uath_data* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %21 = getelementptr inbounds %struct.uath_data, %struct.uath_data* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %23 = getelementptr inbounds %struct.uath_data, %struct.uath_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.uath_chunk*
  store %struct.uath_chunk* %25, %struct.uath_chunk** %5, align 8
  %26 = load %struct.uath_chunk*, %struct.uath_chunk** %5, align 8
  %27 = getelementptr inbounds %struct.uath_chunk, %struct.uath_chunk* %26, i64 1
  %28 = bitcast %struct.uath_chunk* %27 to %struct.uath_tx_desc*
  store %struct.uath_tx_desc* %28, %struct.uath_tx_desc** %6, align 8
  %29 = load %struct.uath_chunk*, %struct.uath_chunk** %5, align 8
  %30 = getelementptr inbounds %struct.uath_chunk, %struct.uath_chunk* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @UATH_CFLAGS_FINAL, align 4
  %32 = load %struct.uath_chunk*, %struct.uath_chunk** %5, align 8
  %33 = getelementptr inbounds %struct.uath_chunk, %struct.uath_chunk* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = call i32 @htobe16(i32 48)
  %35 = load %struct.uath_chunk*, %struct.uath_chunk** %5, align 8
  %36 = getelementptr inbounds %struct.uath_chunk, %struct.uath_chunk* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %38 = call i32 @memset(%struct.uath_tx_desc* %37, i32 0, i32 48)
  %39 = call i8* @htobe32(i32 48)
  %40 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %41 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = add nsw i32 %44, 1
  %47 = sext i32 %46 to i64
  %48 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %49 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @WDCMSG_FLUSH, align 4
  %51 = call i8* @htobe32(i32 %50)
  %52 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %53 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = call i8* @htobe32(i32 0)
  %55 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %56 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = call i8* @htobe32(i32 0)
  %58 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %59 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = call i8* @htobe32(i32 0)
  %61 = load %struct.uath_tx_desc*, %struct.uath_tx_desc** %6, align 8
  %62 = getelementptr inbounds %struct.uath_tx_desc, %struct.uath_tx_desc* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %64 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %63, i32 0, i32 3
  %65 = load %struct.uath_data*, %struct.uath_data** %4, align 8
  %66 = load i32, i32* @next, align 4
  %67 = call i32 @STAILQ_INSERT_TAIL(i32* %64, %struct.uath_data* %65, i32 %66)
  %68 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %69 = load i32, i32* @st_tx_pending, align 4
  %70 = call i32 @UATH_STAT_INC(%struct.uath_softc* %68, i32 %69)
  %71 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %72 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %71, i32 0, i32 1
  store i32 5, i32* %72, align 4
  %73 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %74 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @UATH_BULK_TX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usbd_transfer_start(i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %15, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @UATH_ASSERT_LOCKED(%struct.uath_softc*) #1

declare dso_local %struct.uath_data* @uath_getbuf(%struct.uath_softc*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @memset(%struct.uath_tx_desc*, i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.uath_data*, i32) #1

declare dso_local i32 @UATH_STAT_INC(%struct.uath_softc*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
