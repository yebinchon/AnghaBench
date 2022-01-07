; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.usb_ctl_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.RioCommand = type { i32, i32, i32, i32, i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32, i8*, i32)* @urio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urio_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_ctl_request, align 4
  %10 = alloca %struct.RioCommand*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %49 [
    i32 129, label %13
    i32 128, label %31
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @FWRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EPERM, align 4
  store i32 %19, i32* %11, align 4
  br label %85

20:                                               ; preds = %13
  %21 = call i32 @memset(%struct.usb_ctl_request* %9, i32 0, i32 24)
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.RioCommand*
  store %struct.RioCommand* %23, %struct.RioCommand** %10, align 8
  %24 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %25 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %51

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FWRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %11, align 4
  br label %85

38:                                               ; preds = %31
  %39 = call i32 @memset(%struct.usb_ctl_request* %9, i32 0, i32 24)
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to %struct.RioCommand*
  store %struct.RioCommand* %41, %struct.RioCommand** %10, align 8
  %42 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %43 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %51

49:                                               ; preds = %4
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %11, align 4
  br label %85

51:                                               ; preds = %38, %20
  %52 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %54 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %62 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @USETW(i32 %60, i32 %63)
  %65 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %69 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @USETW(i32 %67, i32 %70)
  %72 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %76 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @USETW(i32 %74, i32 %77)
  %79 = load %struct.RioCommand*, %struct.RioCommand** %10, align 8
  %80 = getelementptr inbounds %struct.RioCommand, %struct.RioCommand* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.usb_ctl_request, %struct.usb_ctl_request* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.usb_fifo*, %struct.usb_fifo** %5, align 8
  %84 = call i32 @ugen_do_request(%struct.usb_fifo* %83, %struct.usb_ctl_request* %9)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %51, %49, %36, %18
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.usb_ctl_request*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ugen_do_request(%struct.usb_fifo*, %struct.usb_ctl_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
