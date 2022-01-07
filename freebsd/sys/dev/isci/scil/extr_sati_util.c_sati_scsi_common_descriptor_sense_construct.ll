; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_common_descriptor_sense_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_common_descriptor_sense_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64*, i32, i64, i64, i64, i64*)* @sati_scsi_common_descriptor_sense_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_scsi_common_descriptor_sense_construct(i32* %0, i8* %1, i64* %2, i32 %3, i64 %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64* %7, i64** %16, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @sati_set_sense_data_byte(i64* %17, i32 %18, i32 1, i64 %19)
  %21 = load i64*, i64** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i64, i64* %14, align 8
  %24 = call i32 @sati_set_sense_data_byte(i64* %21, i32 %22, i32 2, i64 %23)
  %25 = load i64*, i64** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @sati_set_sense_data_byte(i64* %25, i32 %26, i32 3, i64 %27)
  %29 = load i64*, i64** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @sati_set_sense_data_byte(i64* %29, i32 %30, i32 4, i64 0)
  %32 = load i64*, i64** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @sati_set_sense_data_byte(i64* %32, i32 %33, i32 5, i64 0)
  %35 = load i64*, i64** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sati_set_sense_data_byte(i64* %35, i32 %36, i32 6, i64 0)
  %38 = load i8*, i8** %10, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 8
  %41 = load i32, i32* %12, align 4
  %42 = load i64*, i64** %16, align 8
  %43 = call i32 @sati_scsi_common_descriptors_construct(i8* %38, i64* %40, i32 %41, i64* %42)
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @sati_scsi_get_descriptor_sense_data_length(i32* %46, i8* %47)
  %49 = sub nsw i64 %48, 8
  %50 = call i32 @sati_set_sense_data_byte(i64* %44, i32 %45, i32 7, i64 %49)
  ret void
}

declare dso_local i32 @sati_set_sense_data_byte(i64*, i32, i32, i64) #1

declare dso_local i32 @sati_scsi_common_descriptors_construct(i8*, i64*, i32, i64*) #1

declare dso_local i64 @sati_scsi_get_descriptor_sense_data_length(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
