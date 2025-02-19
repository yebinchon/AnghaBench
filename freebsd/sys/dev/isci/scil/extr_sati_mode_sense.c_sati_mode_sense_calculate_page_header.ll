; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_calculate_page_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_calculate_page_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_MODE_SENSE_6_HEADER_LENGTH = common dso_local global i64 0, align 8
@SCSI_MODE_SENSE_10_HEADER_LENGTH = common dso_local global i64 0, align 8
@SCSI_MODE_SENSE_DBD_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_LLBAA_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i64 0, align 8
@SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_mode_sense_calculate_page_header(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @sati_cb_get_cdb_address(i8* %7)
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* @SCSI_MODE_SENSE_6_HEADER_LENGTH, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i64, i64* @SCSI_MODE_SENSE_10_HEADER_LENGTH, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @sati_get_cdb_byte(i32* %24, i32 1)
  %26 = load i32, i32* @SCSI_MODE_SENSE_DBD_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sati_get_cdb_byte(i32* %33, i32 1)
  %35 = load i32, i32* @SCSI_MODE_SENSE_LLBAA_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i64, i64* @SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %32, %29
  %45 = load i64, i64* @SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
