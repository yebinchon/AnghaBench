; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dump_syspd_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dump_syspd_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_command = type { i32, i32, i32, i32, i32*, i8*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mfi_pass_frame }
%struct.mfi_pass_frame = type { i32, i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MFI_CMD_PD_SCSI_IO = common dso_local global i32 0, align 4
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@MFI_SENSE_LEN = common dso_local global i32 0, align 4
@MFI_PASS_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@MFI_CMD_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed dump blocks\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_dump_syspd_blocks(%struct.mfi_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mfi_command*, align 8
  %13 = alloca %struct.mfi_pass_frame*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %19 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %18)
  store %struct.mfi_command* %19, %struct.mfi_command** %12, align 8
  %20 = icmp eq %struct.mfi_command* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %6, align 4
  br label %134

23:                                               ; preds = %5
  %24 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %25 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %24, i32 0, i32 7
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.mfi_pass_frame* %27, %struct.mfi_pass_frame** %13, align 8
  %28 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %29 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bzero(i32 %30, i32 16)
  %32 = load i32, i32* @MFI_CMD_PD_SCSI_IO, align 4
  %33 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %34 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 8
  store i32 0, i32* %15, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %38 = call i8* @howmany(i32 %36, i32 %37)
  store i8* %38, i8** %17, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %43 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mfi_build_cdb(i32 %39, i32 0, i32 %40, i8* %41, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %48 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %51 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %54 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %57 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @MFI_SENSE_LEN, align 4
  %60 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %61 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %65 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %69 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %72 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %76 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %78 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = ashr i32 %80, 32
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %85 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %88 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %91 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %13, align 8
  %93 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %92, i32 0, i32 0
  %94 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %95 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load i32, i32* @MFI_PASS_FRAME_SIZE, align 4
  %97 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %98 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @MFI_CMD_POLLED, align 4
  %100 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MFI_CMD_SCSI, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %105 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %107 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %108 = call i32 @mfi_mapcmd(%struct.mfi_softc* %106, %struct.mfi_command* %107)
  store i32 %108, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %23
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %23
  %116 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %117 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %120 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %123 = call i32 @bus_dmamap_sync(i32 %118, i32 %121, i32 %122)
  %124 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %125 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %128 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @bus_dmamap_unload(i32 %126, i32 %129)
  %131 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %132 = call i32 @mfi_release_command(%struct.mfi_command* %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %115, %21
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i8* @howmany(i32, i32) #1

declare dso_local i32 @mfi_build_cdb(i32, i32, i32, i8*, i32) #1

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
