; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_get_descriptor_sense_data_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_get_descriptor_sense_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@SCSI_INFORMATION_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sati_scsi_get_descriptor_sense_data_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_scsi_get_descriptor_sense_data_length(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @sati_cb_get_cdb_address(i8* %7)
  store i32* %8, i32** %5, align 8
  store i32 8, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @sati_get_cdb_byte(i32* %9, i32 0)
  switch i32 %10, label %27 [
    i32 129, label %11
    i32 128, label %11
    i32 140, label %17
    i32 141, label %23
    i32 144, label %23
    i32 143, label %23
    i32 142, label %23
    i32 133, label %23
    i32 136, label %23
    i32 135, label %23
    i32 134, label %23
    i32 139, label %23
    i32 138, label %23
    i32 137, label %23
    i32 132, label %23
    i32 131, label %23
    i32 130, label %23
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @SCSI_BLOCK_DESCRIPTOR_LENGTH, align 4
  %13 = load i32, i32* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH, align 4
  %19 = load i32, i32* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %24 = load i32, i32* @SCSI_INFORMATION_DESCRIPTOR_LENGTH, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %2, %23, %17, %11
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
