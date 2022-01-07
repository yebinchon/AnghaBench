; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_init_attach_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_init_attach_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_attach_arg = type { %struct.TYPE_6__, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }

@UAA_DEV_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_attach_arg*)* @usb_init_attach_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_init_attach_arg(%struct.usb_device* %0, %struct.usb_attach_arg* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_attach_arg*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_attach_arg* %1, %struct.usb_attach_arg** %4, align 8
  %5 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %6 = call i32 @memset(%struct.usb_attach_arg* %5, i32 0, i32 72)
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %9 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %8, i32 0, i32 4
  store %struct.usb_device* %7, %struct.usb_device** %9, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @UAA_DEV_READY, align 4
  %22 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %23 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @UGETW(i32 %27)
  %29 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %30 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 7
  store i8* %28, i8** %31, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @UGETW(i32 %35)
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %38 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  store i8* %36, i8** %39, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @UGETW(i32 %43)
  %45 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %46 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  store i8* %44, i8** %47, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %60 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %67 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %73 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %79 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  ret void
}

declare dso_local i32 @memset(%struct.usb_attach_arg*, i32, i32) #1

declare dso_local i8* @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
