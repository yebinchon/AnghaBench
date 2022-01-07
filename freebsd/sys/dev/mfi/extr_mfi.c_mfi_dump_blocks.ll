; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dump_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dump_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_command = type { i32, i32, i32, i32, i32*, i8*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mfi_io_frame, %struct.TYPE_4__ }
%struct.mfi_io_frame = type { i32, i32, i32, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@EBUSY = common dso_local global i32 0, align 4
@MFI_CMD_LD_WRITE = common dso_local global i32 0, align 4
@MFI_SENSE_LEN = common dso_local global i32 0, align 4
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@MFI_IO_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed dump blocks\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_dump_blocks(%struct.mfi_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mfi_command*, align 8
  %13 = alloca %struct.mfi_io_frame*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %15, align 8
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %17 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %16)
  store %struct.mfi_command* %17, %struct.mfi_command** %12, align 8
  %18 = icmp eq %struct.mfi_command* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %6, align 4
  br label %140

21:                                               ; preds = %5
  %22 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %23 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %22, i32 0, i32 7
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %15, align 8
  %28 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %29 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %28, i32 0, i32 7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @bzero(%struct.TYPE_6__* %30, i32 4)
  %32 = load i8*, i8** %15, align 8
  %33 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %34 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %33, i32 0, i32 7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %32, i8** %37, align 8
  %38 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %39 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %38, i32 0, i32 7
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.mfi_io_frame* %41, %struct.mfi_io_frame** %13, align 8
  %42 = load i32, i32* @MFI_CMD_LD_WRITE, align 4
  %43 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %44 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %48 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %51 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %54 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %57 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @MFI_SENSE_LEN, align 4
  %60 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %61 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %65 = call i32 @howmany(i32 %63, i32 %64)
  %66 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %67 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %70 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %74 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %76 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 %78, 32
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %83 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = and i64 %85, -4294967296
  %87 = lshr i64 %86, 32
  %88 = trunc i64 %87 to i32
  %89 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %90 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %93 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %96 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %99 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %13, align 8
  %101 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %100, i32 0, i32 2
  %102 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %103 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %102, i32 0, i32 4
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* @MFI_IO_FRAME_SIZE, align 4
  %105 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %106 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @MFI_CMD_POLLED, align 4
  %108 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %111 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %113 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %114 = call i32 @mfi_mapcmd(%struct.mfi_softc* %112, %struct.mfi_command* %113)
  store i32 %114, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %21
  %117 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %118 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %21
  %122 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %123 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %126 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %129 = call i32 @bus_dmamap_sync(i32 %124, i32 %127, i32 %128)
  %130 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %131 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %134 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @bus_dmamap_unload(i32 %132, i32 %135)
  %137 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %138 = call i32 @mfi_release_command(%struct.mfi_command* %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %121, %19
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

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
