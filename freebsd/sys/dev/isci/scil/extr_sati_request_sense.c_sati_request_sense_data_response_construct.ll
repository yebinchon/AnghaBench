; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_data_response_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_data_response_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_FIXED_CURRENT_RESPONSE_CODE = common dso_local global i32 0, align 4
@SCSI_FIXED_SENSE_DATA_VALID_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_request_sense_data_response_construct(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @SCSI_FIXED_CURRENT_RESPONSE_CODE, align 4
  %14 = load i32, i32* @SCSI_FIXED_SENSE_DATA_VALID_BIT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @sati_set_data_byte(i32* %11, i8* %12, i32 0, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @sati_set_data_byte(i32* %17, i8* %18, i32 1, i32 0)
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sati_set_data_byte(i32* %20, i8* %21, i32 2, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @sati_set_data_byte(i32* %24, i8* %25, i32 3, i32 0)
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sati_set_data_byte(i32* %27, i8* %28, i32 4, i32 0)
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sati_set_data_byte(i32* %30, i8* %31, i32 5, i32 0)
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @sati_set_data_byte(i32* %33, i8* %34, i32 6, i32 0)
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @sati_set_data_byte(i32* %36, i8* %37, i32 7, i32 0)
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @sati_set_data_byte(i32* %39, i8* %40, i32 8, i32 0)
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @sati_set_data_byte(i32* %42, i8* %43, i32 9, i32 0)
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sati_set_data_byte(i32* %45, i8* %46, i32 10, i32 0)
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @sati_set_data_byte(i32* %48, i8* %49, i32 11, i32 0)
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sati_set_data_byte(i32* %51, i8* %52, i32 12, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @sati_set_data_byte(i32* %55, i8* %56, i32 13, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @sati_set_data_byte(i32* %59, i8* %60, i32 14, i32 0)
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @sati_set_data_byte(i32* %62, i8* %63, i32 15, i32 0)
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @sati_set_data_byte(i32* %65, i8* %66, i32 16, i32 0)
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sati_set_data_byte(i32* %68, i8* %69, i32 17, i32 0)
  ret void
}

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
