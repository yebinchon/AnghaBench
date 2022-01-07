; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_select.c_sati_mode_select_process_mode_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_select.c_sati_mode_select_process_mode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_PAGE_CODE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i8*)* @sati_mode_select_process_mode_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_select_process_mode_page(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @sati_get_data_byte(%struct.TYPE_12__* %19, i8* %20, i64 %21, i32* %11)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SCSI_MODE_SENSE_PAGE_CODE_ENABLE, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @sati_mode_select_get_mode_page_size(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %44, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %54, i32* %7, align 4
  br label %94

55:                                               ; preds = %34
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %92 [
    i32 128, label %57
    i32 131, label %62
    i32 133, label %68
    i32 132, label %74
    i32 130, label %80
    i32 129, label %86
  ]

57:                                               ; preds = %55
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @sati_mode_select_process_mode_page_read_write_error_recovery(%struct.TYPE_12__* %58, i8* %59, i64 %60)
  store i32 %61, i32* %7, align 4
  br label %93

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @sati_mode_select_process_mode_page_disconnect_reconnect(%struct.TYPE_13__* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  br label %93

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @sati_mode_select_process_mode_page_caching(%struct.TYPE_12__* %69, i8* %70, i8* %71, i64 %72)
  store i32 %73, i32* %7, align 4
  br label %93

74:                                               ; preds = %55
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @sati_mode_select_process_mode_page_control(%struct.TYPE_12__* %75, i8* %76, i8* %77, i64 %78)
  store i32 %79, i32* %7, align 4
  br label %93

80:                                               ; preds = %55
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @sati_mode_select_process_mode_page_informational_exception_control(%struct.TYPE_12__* %81, i8* %82, i8* %83, i64 %84)
  store i32 %85, i32* %7, align 4
  br label %93

86:                                               ; preds = %55
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @sati_mode_select_process_mode_page_power_condition(%struct.TYPE_12__* %87, i8* %88, i8* %89, i64 %90)
  store i32 %91, i32* %7, align 4
  br label %93

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %92, %86, %80, %74, %68, %62, %57
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %3
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_12__*, i8*, i64, i32*) #1

declare dso_local i64 @sati_mode_select_get_mode_page_size(i32) #1

declare dso_local i32 @sati_mode_select_process_mode_page_read_write_error_recovery(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @sati_mode_select_process_mode_page_disconnect_reconnect(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @sati_mode_select_process_mode_page_caching(%struct.TYPE_12__*, i8*, i8*, i64) #1

declare dso_local i32 @sati_mode_select_process_mode_page_control(%struct.TYPE_12__*, i8*, i8*, i64) #1

declare dso_local i32 @sati_mode_select_process_mode_page_informational_exception_control(%struct.TYPE_12__*, i8*, i8*, i64) #1

declare dso_local i32 @sati_mode_select_process_mode_page_power_condition(%struct.TYPE_12__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
