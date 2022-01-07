; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_translate_sense_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_translate_sense_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_DIAGNOSTIC_FAILURE_ON_COMPONENT = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_SENSE_HARDWARE_ERROR = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_SENSE_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @sati_translate_sense_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_translate_sense_values(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @SCSI_DIAGNOSTIC_FAILURE_ON_COMPONENT, align 4
  %10 = call i32 @sati_set_data_byte(i32* %7, i8* %8, i32 21, i32 %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %76 [
    i32 1, label %12
    i32 2, label %20
    i32 3, label %28
    i32 4, label %36
    i32 5, label %44
    i32 6, label %52
    i32 7, label %60
    i32 8, label %68
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %16 = call i32 @sati_set_data_byte(i32* %13, i8* %14, i32 20, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sati_set_data_byte(i32* %17, i8* %18, i32 22, i32 129)
  br label %88

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %24 = call i32 @sati_set_data_byte(i32* %21, i8* %22, i32 20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sati_set_data_byte(i32* %25, i8* %26, i32 22, i32 130)
  br label %88

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %32 = call i32 @sati_set_data_byte(i32* %29, i8* %30, i32 20, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @sati_set_data_byte(i32* %33, i8* %34, i32 22, i32 131)
  br label %88

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %40 = call i32 @sati_set_data_byte(i32* %37, i8* %38, i32 20, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sati_set_data_byte(i32* %41, i8* %42, i32 22, i32 132)
  br label %88

44:                                               ; preds = %3
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %48 = call i32 @sati_set_data_byte(i32* %45, i8* %46, i32 20, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @sati_set_data_byte(i32* %49, i8* %50, i32 22, i32 133)
  br label %88

52:                                               ; preds = %3
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %56 = call i32 @sati_set_data_byte(i32* %53, i8* %54, i32 20, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @sati_set_data_byte(i32* %57, i8* %58, i32 22, i32 134)
  br label %88

60:                                               ; preds = %3
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %64 = call i32 @sati_set_data_byte(i32* %61, i8* %62, i32 20, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @sati_set_data_byte(i32* %65, i8* %66, i32 22, i32 135)
  br label %88

68:                                               ; preds = %3
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* @SCSI_SENSE_HARDWARE_ERROR, align 4
  %72 = call i32 @sati_set_data_byte(i32* %69, i8* %70, i32 20, i32 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @sati_set_data_byte(i32* %73, i8* %74, i32 22, i32 136)
  br label %88

76:                                               ; preds = %3
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %80 = call i32 @sati_set_data_byte(i32* %77, i8* %78, i32 20, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %84 = call i32 @sati_set_data_byte(i32* %81, i8* %82, i32 21, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @sati_set_data_byte(i32* %85, i8* %86, i32 22, i32 0)
  br label %88

88:                                               ; preds = %76, %68, %60, %52, %44, %36, %28, %20, %12
  ret void
}

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
