; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_common_descriptors_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_common_descriptors_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i64 0, align 8
@SCSI_INFORMATION_DESCRIPTOR_LENGTH = common dso_local global i64 0, align 8
@SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64, i64*)* @sati_scsi_common_descriptors_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_scsi_common_descriptors_construct(i8* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64* @sati_cb_get_cdb_address(i8* %11)
  store i64* %12, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = call i32 @sati_get_cdb_byte(i64* %13, i32 0)
  switch i32 %14, label %71 [
    i32 129, label %15
    i32 128, label %15
    i32 140, label %37
    i32 141, label %59
    i32 144, label %59
    i32 143, label %59
    i32 142, label %59
    i32 133, label %59
    i32 136, label %59
    i32 135, label %59
    i32 134, label %59
    i32 139, label %59
    i32 138, label %59
    i32 137, label %59
    i32 132, label %59
    i32 131, label %59
    i32 130, label %59
  ]

15:                                               ; preds = %4, %4
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @sati_scsi_block_descriptor_construct(i64* %18, i64 %21)
  %23 = load i64, i64* @SCSI_BLOCK_DESCRIPTOR_LENGTH, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %10, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @sati_scsi_information_descriptor_construct(i64* %28, i64 %31, i64* %32)
  %34 = load i64, i64* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %10, align 8
  br label %71

37:                                               ; preds = %4
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 @sati_scsi_command_specific_descriptor_construct(i64* %40, i64 %43, i32* null)
  %45 = load i64, i64* @SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @sati_scsi_information_descriptor_construct(i64* %50, i64 %53, i64* %54)
  %56 = load i64, i64* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %71

59:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64*, i64** %8, align 8
  %67 = call i32 @sati_scsi_information_descriptor_construct(i64* %62, i64 %65, i64* %66)
  %68 = load i64, i64* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %4, %59, %37, %15
  ret void
}

declare dso_local i64* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i64*, i32) #1

declare dso_local i32 @sati_scsi_block_descriptor_construct(i64*, i64) #1

declare dso_local i32 @sati_scsi_information_descriptor_construct(i64*, i64, i64*) #1

declare dso_local i32 @sati_scsi_command_specific_descriptor_construct(i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
