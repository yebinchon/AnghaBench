; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_MODE_SENSE_DBD_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_LLBAA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @sati_mode_sense_10_translate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_sense_10_translate_data(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @sati_cb_get_cdb_address(i8* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @sati_mode_sense_10_build_header(i32* %13, i8* %14, i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @sati_get_cdb_byte(i32* %18, i32 1)
  %20 = load i32, i32* @SCSI_MODE_SENSE_DBD_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @sati_get_cdb_byte(i32* %24, i32 1)
  %26 = load i32, i32* @SCSI_MODE_SENSE_LLBAA_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @sati_mode_sense_10_build_llba_block_descriptor(i32* %30, i8* %31, i32* %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %49

39:                                               ; preds = %23
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @sati_mode_sense_build_std_block_descriptor(i32* %40, i8* %41, i32* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %39, %29
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_mode_sense_10_build_header(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i64 @sati_mode_sense_10_build_llba_block_descriptor(i32*, i8*, i32*, i32) #1

declare dso_local i64 @sati_mode_sense_build_std_block_descriptor(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
