; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_syspdio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_syspdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32, i32, i32*, i32, i32, %struct.bio*, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mfi_pass_frame, %struct.TYPE_5__ }
%struct.mfi_pass_frame = type { i32, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.mfi_softc = type { i32 }
%struct.bio = type { i32, i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_CMD_PD_SCSI_IO = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_BIO = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported bio command %x\0A\00", align 1
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@MFI_SENSE_LEN = common dso_local global i32 0, align 4
@mfi_bio_complete = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@MFI_PASS_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfi_command* (%struct.mfi_softc*, %struct.bio*)* @mfi_build_syspdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfi_command* @mfi_build_syspdio(%struct.mfi_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mfi_command*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca %struct.mfi_pass_frame*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %18 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %17)
  store %struct.mfi_command* %18, %struct.mfi_command** %6, align 8
  %19 = icmp eq %struct.mfi_command* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.mfi_command* null, %struct.mfi_command** %3, align 8
  br label %153

21:                                               ; preds = %2
  %22 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %23 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %22, i32 0, i32 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %29 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %28, i32 0, i32 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @bzero(%struct.TYPE_7__* %30, i32 4)
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %34 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %33, i32 0, i32 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %32, i8** %37, align 8
  %38 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %39 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %38, i32 0, i32 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.mfi_pass_frame* %41, %struct.mfi_pass_frame** %7, align 8
  %42 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %43 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @bzero(%struct.TYPE_7__* %44, i32 16)
  %46 = load i32, i32* @MFI_CMD_PD_SCSI_IO, align 4
  %47 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %48 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 8
  store i32 %46, i32* %49, align 8
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %61 [
    i32 129, label %53
    i32 128, label %57
  ]

53:                                               ; preds = %21
  %54 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %55 = load i32, i32* @MFI_CMD_BIO, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %66

57:                                               ; preds = %21
  %58 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %59 = load i32, i32* @MFI_CMD_BIO, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %66

61:                                               ; preds = %21
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %57, %53
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %71 = call i32 @howmany(i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.bio*, %struct.bio** %5, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %78 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @mfi_build_cdb(i32 %72, i32 0, i32 %75, i32 %76, %struct.TYPE_7__* %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %85 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %88 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %91 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %94 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  store i32 0, i32* %95, align 8
  %96 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %97 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @MFI_SENSE_LEN, align 4
  %100 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %101 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %107 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %111 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %114 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %118 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %120 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = ashr i32 %122, 32
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %127 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @mfi_bio_complete, align 4
  %129 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %130 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %133 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %132, i32 0, i32 5
  store %struct.bio* %131, %struct.bio** %133, align 8
  %134 = load i32, i32* @unmapped_buf, align 4
  %135 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %136 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.bio*, %struct.bio** %5, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %141 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %143 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %142, i32 0, i32 0
  %144 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %145 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %144, i32 0, i32 2
  store i32* %143, i32** %145, align 8
  %146 = load i32, i32* @MFI_PASS_FRAME_SIZE, align 4
  %147 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %148 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %151 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  store %struct.mfi_command* %152, %struct.mfi_command** %3, align 8
  br label %153

153:                                              ; preds = %66, %20
  %154 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  ret %struct.mfi_command* %154
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @mfi_build_cdb(i32, i32, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
