; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_power_condition_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_power_condition_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@SCSI_MODE_SENSE_PC_SHIFT = common dso_local global i64 0, align 8
@STANDBY_TIMER_DISABLED = common dso_local global i64 0, align 8
@SCSI_MODE_SENSE_PC_CURRENT = common dso_local global i64 0, align 8
@STANDBY_TIMER_SUPPORTED = common dso_local global i32 0, align 4
@STANDBY_TIMER_ENABLED = common dso_local global i64 0, align 8
@SCSI_MODE_PAGE_POWER_CONDITION = common dso_local global i64 0, align 8
@SCSI_MODE_PAGE_1A_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_mode_sense_power_condition_translate_data(%struct.TYPE_8__* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64* @sati_cb_get_cdb_address(i8* %14)
  store i64* %15, i64** %9, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = call i64 @sati_get_cdb_byte(i64* %16, i32 2)
  %18 = load i64, i64* @SCSI_MODE_SENSE_PC_SHIFT, align 8
  %19 = ashr i64 %17, %18
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* @STANDBY_TIMER_DISABLED, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @SCSI_MODE_SENSE_PC_CURRENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STANDBY_TIMER_SUPPORTED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %24
  %32 = load i64, i64* @STANDBY_TIMER_ENABLED, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp sle i64 %38, 240
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = mul nsw i64 %41, 50
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %69

44:                                               ; preds = %31
  %45 = load i64, i64* %11, align 8
  %46 = icmp sle i64 %45, 251
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = sub nsw i64 %48, 240
  %50 = mul nsw i64 %49, 18000
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %68

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 252
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 12600, i32* %12, align 4
  br label %67

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %57, 253
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 432000, i32* %12, align 4
  br label %66

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 12750, i32* %12, align 4
  br label %65

64:                                               ; preds = %60
  store i32 -1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %24, %4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* @SCSI_MODE_PAGE_POWER_CONDITION, align 8
  %75 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %71, i8* %72, i32 %73, i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @SCSI_MODE_PAGE_1A_LENGTH, align 4
  %81 = sub nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %76, i8* %77, i32 %79, i64 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 2
  %88 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %84, i8* %85, i32 %87, i64 0)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 3
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %89, i8* %90, i32 %92, i64 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 4
  %99 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %95, i8* %96, i32 %98, i64 0)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 5
  %104 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %100, i8* %101, i32 %103, i64 0)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 6
  %109 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %105, i8* %106, i32 %108, i64 0)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 7
  %114 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %110, i8* %111, i32 %113, i64 0)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 8
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %119, 24
  %121 = sext i32 %120 to i64
  %122 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %115, i8* %116, i32 %118, i64 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 9
  %127 = load i32, i32* %12, align 4
  %128 = ashr i32 %127, 16
  %129 = sext i32 %128 to i64
  %130 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %123, i8* %124, i32 %126, i64 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 10
  %135 = load i32, i32* %12, align 4
  %136 = ashr i32 %135, 8
  %137 = sext i32 %136 to i64
  %138 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %131, i8* %132, i32 %134, i64 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 11
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %139, i8* %140, i32 %142, i64 %144)
  %146 = load i32, i32* @SCSI_MODE_PAGE_1A_LENGTH, align 4
  ret i32 %146
}

declare dso_local i64* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @sati_get_cdb_byte(i64*, i32) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_8__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
