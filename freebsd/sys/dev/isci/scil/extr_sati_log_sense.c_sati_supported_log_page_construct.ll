; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_supported_log_page_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_supported_log_page_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SATI_DEVICE_CAP_SMART_SUPPORT = common dso_local global i32 0, align 4
@SCSI_LOG_PAGE_INFORMATION_EXCEPTION = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT = common dso_local global i32 0, align 4
@SCSI_LOG_PAGE_SELF_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @sati_supported_log_page_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_supported_log_page_construct(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %6, i8* %7, i32 0, i32 0)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %9, i8* %10, i32 1, i32 0)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %12, i8* %13, i32 2, i32 0)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %15, i8* %16, i32 3, i32 2)
  store i32 4, i32* %5, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SATI_DEVICE_CAP_SMART_SUPPORT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SCSI_LOG_PAGE_INFORMATION_EXCEPTION, align 4
  %31 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %27, i8* %28, i32 %29, i32 %30)
  store i32 5, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SCSI_LOG_PAGE_SELF_TEST, align 4
  %46 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %42, i8* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %32
  ret void
}

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
