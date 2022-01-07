; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_ldio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_ldio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32, i32, i32*, i32, i32, %struct.bio*, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mfi_io_frame, %struct.TYPE_4__ }
%struct.mfi_io_frame = type { i32, i32, i32, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i32, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.mfi_softc = type { i32 }
%struct.bio = type { i32, i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_CMD_LD_READ = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_BIO = common dso_local global i32 0, align 4
@MFI_CMD_LD_WRITE = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported bio command %x\0A\00", align 1
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@MFI_SENSE_LEN = common dso_local global i32 0, align 4
@mfi_bio_complete = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@MFI_IO_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfi_command* (%struct.mfi_softc*, %struct.bio*)* @mfi_build_ldio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfi_command* @mfi_build_ldio(%struct.mfi_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mfi_command*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mfi_io_frame*, align 8
  %7 = alloca %struct.mfi_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %16 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %15)
  store %struct.mfi_command* %16, %struct.mfi_command** %7, align 8
  %17 = icmp eq %struct.mfi_command* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.mfi_command* null, %struct.mfi_command** %3, align 8
  br label %147

19:                                               ; preds = %2
  %20 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %21 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %20, i32 0, i32 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %27 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %26, i32 0, i32 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @bzero(%struct.TYPE_6__* %28, i32 4)
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %32 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %31, i32 0, i32 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  %36 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.mfi_io_frame* %39, %struct.mfi_io_frame** %6, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %59 [
    i32 129, label %43
    i32 128, label %51
  ]

43:                                               ; preds = %19
  %44 = load i32, i32* @MFI_CMD_LD_READ, align 4
  %45 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %46 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %49 = load i32, i32* @MFI_CMD_BIO, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %8, align 4
  br label %64

51:                                               ; preds = %19
  %52 = load i32, i32* @MFI_CMD_LD_WRITE, align 4
  %53 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %54 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %57 = load i32, i32* @MFI_CMD_BIO, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %19
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %51, %43
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %69 = call i8* @howmany(i32 %67, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %74 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %77 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %80 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32 0, i32* %81, align 8
  %82 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %83 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @MFI_SENSE_LEN, align 4
  %86 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %87 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %91 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %94 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %98 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %100 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = ashr i32 %102, 32
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %107 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = and i64 %111, -4294967296
  %113 = lshr i64 %112, 32
  %114 = trunc i64 %113 to i32
  %115 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %116 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %121 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @mfi_bio_complete, align 4
  %123 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %124 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.bio*, %struct.bio** %5, align 8
  %126 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %127 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %126, i32 0, i32 5
  store %struct.bio* %125, %struct.bio** %127, align 8
  %128 = load i32, i32* @unmapped_buf, align 4
  %129 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %130 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %135 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.mfi_io_frame*, %struct.mfi_io_frame** %6, align 8
  %137 = getelementptr inbounds %struct.mfi_io_frame, %struct.mfi_io_frame* %136, i32 0, i32 2
  %138 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %139 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %138, i32 0, i32 2
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* @MFI_IO_FRAME_SIZE, align 4
  %141 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %142 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %145 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  store %struct.mfi_command* %146, %struct.mfi_command** %3, align 8
  br label %147

147:                                              ; preds = %64, %18
  %148 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  ret %struct.mfi_command* %148
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i8* @howmany(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
