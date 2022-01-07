; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_setup_by_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_setup_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@usb_template_msc = common dso_local global i32 0, align 4
@usb_template_cdce = common dso_local global i32 0, align 4
@usb_template_mtp = common dso_local global i32 0, align 4
@usb_template_modem = common dso_local global i32 0, align 4
@usb_template_audio = common dso_local global i32 0, align 4
@usb_template_kbd = common dso_local global i32 0, align 4
@usb_template_mouse = common dso_local global i32 0, align 4
@usb_template_phone = common dso_local global i32 0, align 4
@usb_template_serialnet = common dso_local global i32 0, align 4
@usb_template_midi = common dso_local global i32 0, align 4
@usb_template_multi = common dso_local global i32 0, align 4
@usb_template_cdceem = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @usb_temp_setup_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_temp_setup_by_index(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %44 [
    i32 132, label %8
    i32 138, label %11
    i32 131, label %14
    i32 134, label %17
    i32 139, label %20
    i32 136, label %23
    i32 133, label %26
    i32 129, label %29
    i32 128, label %32
    i32 135, label %35
    i32 130, label %38
    i32 137, label %41
  ]

8:                                                ; preds = %2
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = call i32 @usb_temp_setup(%struct.usb_device* %9, i32* @usb_template_msc)
  store i32 %10, i32* %6, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = call i32 @usb_temp_setup(%struct.usb_device* %12, i32* @usb_template_cdce)
  store i32 %13, i32* %6, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = call i32 @usb_temp_setup(%struct.usb_device* %15, i32* @usb_template_mtp)
  store i32 %16, i32* %6, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = call i32 @usb_temp_setup(%struct.usb_device* %18, i32* @usb_template_modem)
  store i32 %19, i32* %6, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = call i32 @usb_temp_setup(%struct.usb_device* %21, i32* @usb_template_audio)
  store i32 %22, i32* %6, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = call i32 @usb_temp_setup(%struct.usb_device* %24, i32* @usb_template_kbd)
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = call i32 @usb_temp_setup(%struct.usb_device* %27, i32* @usb_template_mouse)
  store i32 %28, i32* %6, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = call i32 @usb_temp_setup(%struct.usb_device* %30, i32* @usb_template_phone)
  store i32 %31, i32* %6, align 4
  br label %46

32:                                               ; preds = %2
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = call i32 @usb_temp_setup(%struct.usb_device* %33, i32* @usb_template_serialnet)
  store i32 %34, i32* %6, align 4
  br label %46

35:                                               ; preds = %2
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = call i32 @usb_temp_setup(%struct.usb_device* %36, i32* @usb_template_midi)
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = call i32 @usb_temp_setup(%struct.usb_device* %39, i32* @usb_template_multi)
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %43 = call i32 @usb_temp_setup(%struct.usb_device* %42, i32* @usb_template_cdceem)
  store i32 %43, i32* %6, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @usb_temp_setup(%struct.usb_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
