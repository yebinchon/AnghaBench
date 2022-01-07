; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_12_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_12_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_VERIFY_12 = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_verify_12_translate_command(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
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
  %14 = call i32 @sati_get_cdb_byte(i32* %13, i32 6)
  %15 = shl i32 %14, 24
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @sati_get_cdb_byte(i32* %16, i32 7)
  %18 = shl i32 %17, 16
  %19 = or i32 %15, %18
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @sati_get_cdb_byte(i32* %20, i32 8)
  %22 = shl i32 %21, 8
  %23 = or i32 %19, %22
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @sati_get_cdb_byte(i32* %24, i32 9)
  %26 = or i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @sati_device_state_stopped(%struct.TYPE_7__* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %32, i64* %4, align 8
  br label %56

33:                                               ; preds = %3
  %34 = load i32, i32* @SATI_SEQUENCE_VERIFY_12, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @sati_move_translate_32_bit_lba(%struct.TYPE_7__* %37, i8* %38, i8* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @sati_move_set_sector_count(%struct.TYPE_7__* %41, i8* %42, i8* %43, i32 %44, i32 0)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @SATI_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %56

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @sati_verify_translate_command(%struct.TYPE_7__* %52, i8* %53, i8* %54)
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %51, %49, %31
  %57 = load i64, i64* %4, align 8
  ret i64 %57
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
