; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_bio_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_bio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i64, i32, %struct.mfi_softc*, %struct.TYPE_2__*, %struct.bio* }
%struct.mfi_softc = type { i32 }
%struct.TYPE_2__ = type { %struct.mfi_frame_header }
%struct.mfi_frame_header = type { i64, i64 }
%struct.bio = type { i64, i32 }

@MFI_STAT_OK = common dso_local global i64 0, align 8
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"I/O error, cmd=%p, status=%#x, scsi_status=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"I/O error, cmd=%p, error=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_command*)* @mfi_bio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_bio_complete(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.mfi_frame_header*, align 8
  %5 = alloca %struct.mfi_softc*, align 8
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  %6 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %7 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %6, i32 0, i32 4
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %3, align 8
  %9 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %10 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.mfi_frame_header* %12, %struct.mfi_frame_header** %4, align 8
  %13 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %14 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %13, i32 0, i32 2
  %15 = load %struct.mfi_softc*, %struct.mfi_softc** %14, align 8
  store %struct.mfi_softc* %15, %struct.mfi_softc** %5, align 8
  %16 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %4, align 8
  %17 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MFI_STAT_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %4, align 8
  %23 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21, %1
  %27 = load i32, i32* @BIO_ERROR, align 4
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* @EIO, align 8
  %33 = load %struct.bio*, %struct.bio** %3, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %39 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %4, align 8
  %40 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %4, align 8
  %43 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, %struct.mfi_command*, i64, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.mfi_command* %38, i64 %41, i64 %44)
  %46 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %47 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %46, i32 0, i32 2
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %47, align 8
  %49 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %50 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mfi_print_sense(%struct.mfi_softc* %48, i32 %51)
  br label %78

53:                                               ; preds = %21
  %54 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %55 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i32, i32* @BIO_ERROR, align 4
  %60 = load %struct.bio*, %struct.bio** %3, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %65 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bio*, %struct.bio** %3, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %73 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %74 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, %struct.mfi_command*, i64, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.mfi_command* %72, i64 %75)
  br label %77

77:                                               ; preds = %58, %53
  br label %78

78:                                               ; preds = %77, %26
  %79 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %80 = call i32 @mfi_release_command(%struct.mfi_command* %79)
  %81 = load %struct.bio*, %struct.bio** %3, align 8
  %82 = call i32 @mfi_disk_complete(%struct.bio* %81)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, %struct.mfi_command*, i64, ...) #1

declare dso_local i32 @mfi_print_sense(%struct.mfi_softc*, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mfi_disk_complete(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
