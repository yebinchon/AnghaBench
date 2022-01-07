; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read.c_sati_read_16_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read.c_sati_read_16_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_READ_16 = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_read_16_translate_command(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @sati_cb_get_cdb_address(i8* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @sati_get_cdb_byte(i32* %14, i32 10)
  %16 = shl i32 %15, 24
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @sati_get_cdb_byte(i32* %17, i32 11)
  %19 = shl i32 %18, 16
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @sati_get_cdb_byte(i32* %21, i32 12)
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @sati_get_cdb_byte(i32* %25, i32 13)
  %27 = or i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @sati_device_state_stopped(%struct.TYPE_7__* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %33, i64* %4, align 8
  br label %58

34:                                               ; preds = %3
  %35 = load i32, i32* @SATI_SEQUENCE_READ_16, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @sati_read_large_translate_command(%struct.TYPE_7__* %38, i8* %39, i8* %40, i32 %41, i32* %9)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SATI_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @sati_move_translate_command(%struct.TYPE_7__* %47, i8* %48, i8* %49, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @sati_move_translate_64_bit_lba(%struct.TYPE_7__* %52, i8* %53, i8* %54)
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %46, %34
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %32
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i64 @sati_device_state_stopped(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @sati_read_large_translate_command(%struct.TYPE_7__*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @sati_move_translate_command(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i64 @sati_move_translate_64_bit_lba(%struct.TYPE_7__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
