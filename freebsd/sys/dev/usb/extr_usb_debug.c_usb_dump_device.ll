; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_debug.c_usb_dump_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_debug.c_usb_dump_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"usb_dump_device: dev=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c" bus=%p \0A address=%d config=%d depth=%d speed=%d self_powered=%d\0A power=%d langid=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_dump_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = call i32 (i8*, %struct.usb_device*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %3)
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = icmp eq %struct.usb_device* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.usb_device*
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, %struct.usb_device*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), %struct.usb_device* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @printf(i8*, %struct.usb_device*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
