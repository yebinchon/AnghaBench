; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_10_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_10_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_VERIFY_10 = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_verify_10_translate_command(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @sati_cb_get_cdb_address(i8* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @sati_get_cdb_byte(i32* %13, i32 7)
  %15 = shl i32 %14, 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @sati_get_cdb_byte(i32* %16, i32 8)
  %18 = or i32 %15, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @sati_device_state_stopped(%struct.TYPE_7__* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %24, i64* %4, align 8
  br label %48

25:                                               ; preds = %3
  %26 = load i32, i32* @SATI_SEQUENCE_VERIFY_10, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sati_move_translate_32_bit_lba(%struct.TYPE_7__* %29, i8* %30, i8* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @sati_move_set_sector_count(%struct.TYPE_7__* %33, i8* %34, i8* %35, i32 %36, i32 0)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @SATI_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %48

43:                                               ; preds = %25
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @sati_verify_translate_command(%struct.TYPE_7__* %44, i8* %45, i8* %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %43, %41, %23
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i64 @sati_device_state_stopped(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sati_move_translate_32_bit_lba(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i64 @sati_move_set_sector_count(%struct.TYPE_7__*, i8*, i8*, i32, i32) #1

declare dso_local i64 @sati_verify_translate_command(%struct.TYPE_7__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
