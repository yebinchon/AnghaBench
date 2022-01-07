; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_vo_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_vo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_output_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_video_output = type { i32, i32*, i32, i32, i32* }

@video = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_video_vo_notify_handler = common dso_local global i32 0, align 4
@DOD_DEVID_MASK = common dso_local global i32 0, align 4
@crt_units = common dso_local global %struct.acpi_video_output_queue zeroinitializer, align 4
@tv_units = common dso_local global %struct.acpi_video_output_queue zeroinitializer, align 4
@ext_units = common dso_local global %struct.acpi_video_output_queue zeroinitializer, align 4
@lcd_units = common dso_local global %struct.acpi_video_output_queue zeroinitializer, align 4
@other_units = common dso_local global %struct.acpi_video_output_queue zeroinitializer, align 4
@acpi_video_output = common dso_local global i32 0, align 4
@vo_unit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_ACPIVIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_video_output*)* @acpi_video_vo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_vo_destroy(%struct.acpi_video_output* %0) #0 {
  %2 = alloca %struct.acpi_video_output*, align 8
  %3 = alloca %struct.acpi_video_output_queue*, align 8
  store %struct.acpi_video_output* %0, %struct.acpi_video_output** %2, align 8
  %4 = load i32, i32* @video, align 4
  %5 = call i32 @ACPI_SERIAL_ASSERT(i32 %4)
  %6 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %13, i32 0, i32 3
  %15 = call i32 @sysctl_ctx_free(i32* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %26 = load i32, i32* @acpi_video_vo_notify_handler, align 4
  %27 = call i32 @AcpiRemoveNotifyHandler(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @AcpiOsFree(i32* %30)
  br label %32

32:                                               ; preds = %21, %16
  %33 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DOD_DEVID_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %39
    i32 131, label %40
    i32 130, label %41
  ]

38:                                               ; preds = %32
  store %struct.acpi_video_output_queue* @crt_units, %struct.acpi_video_output_queue** %3, align 8
  br label %43

39:                                               ; preds = %32
  store %struct.acpi_video_output_queue* @tv_units, %struct.acpi_video_output_queue** %3, align 8
  br label %43

40:                                               ; preds = %32
  store %struct.acpi_video_output_queue* @ext_units, %struct.acpi_video_output_queue** %3, align 8
  br label %43

41:                                               ; preds = %32
  store %struct.acpi_video_output_queue* @lcd_units, %struct.acpi_video_output_queue** %3, align 8
  br label %43

42:                                               ; preds = %32
  store %struct.acpi_video_output_queue* @other_units, %struct.acpi_video_output_queue** %3, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38
  %44 = load %struct.acpi_video_output_queue*, %struct.acpi_video_output_queue** %3, align 8
  %45 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %46 = load i32, i32* @acpi_video_output, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vo_unit, i32 0, i32 0), align 4
  %48 = call i32 @STAILQ_REMOVE(%struct.acpi_video_output_queue* %44, %struct.acpi_video_output* %45, i32 %46, i32 %47)
  %49 = load %struct.acpi_video_output*, %struct.acpi_video_output** %2, align 8
  %50 = load i32, i32* @M_ACPIVIDEO, align 4
  %51 = call i32 @free(%struct.acpi_video_output* %49, i32 %50)
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @AcpiRemoveNotifyHandler(i32, i32, i32) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(%struct.acpi_video_output_queue*, %struct.acpi_video_output*, i32, i32) #1

declare dso_local i32 @free(%struct.acpi_video_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
