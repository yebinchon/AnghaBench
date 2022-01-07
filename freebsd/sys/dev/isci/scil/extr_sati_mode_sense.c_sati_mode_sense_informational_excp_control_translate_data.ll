; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_informational_excp_control_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_informational_excp_control_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SCSI_MODE_SENSE_PC_SHIFT = common dso_local global i64 0, align 8
@SCSI_MODE_PAGE_INFORMATIONAL_EXCP_CONTROL = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_PC_CURRENT = common dso_local global i64 0, align 8
@ATA_IDENTIFY_COMMAND_SET_SUPPORTED0_SMART_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_SET_ENABLED0_SMART_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_PAGE_INFORMATIONAL_EXCP_DXCPT_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_mode_sense_informational_excp_control_translate_data(%struct.TYPE_8__* %0, i8* %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64* @sati_cb_get_cdb_address(i8* %13)
  store i64* %14, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = call i64 @sati_get_cdb_byte(i64* %15, i32 2)
  %17 = load i64, i64* @SCSI_MODE_SENSE_PC_SHIFT, align 8
  %18 = ashr i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @SCSI_MODE_PAGE_INFORMATIONAL_EXCP_CONTROL, align 4
  %24 = call i64 @sati_mode_sense_copy_initial_data(%struct.TYPE_8__* %19, i8* %20, i64 %21, i64 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @SCSI_MODE_SENSE_PC_CURRENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, 2
  %33 = call i32 @sati_get_data_byte(%struct.TYPE_8__* %29, i8* %30, i64 %32, i64* %12)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_SUPPORTED0_SMART_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_ENABLED0_SMART_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* @SCSI_MODE_PAGE_INFORMATIONAL_EXCP_DXCPT_ENABLE, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %12, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %12, align 8
  br label %56

52:                                               ; preds = %40, %28
  %53 = load i64, i64* @SCSI_MODE_PAGE_INFORMATIONAL_EXCP_DXCPT_ENABLE, align 8
  %54 = load i64, i64* %12, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 2
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %57, i8* %58, i64 %60, i64 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %56, %4
  %68 = load i64, i64* %11, align 8
  ret i64 %68
}

declare dso_local i64* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @sati_get_cdb_byte(i64*, i32) #1

declare dso_local i64 @sati_mode_sense_copy_initial_data(%struct.TYPE_8__*, i8*, i64, i64, i32) #1

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_8__*, i8*, i64, i64*) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_8__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
