; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_debug.c_usb_dump_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_debug.c_usb_dump_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"usb_dump_xfer: xfer=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"xfer %p: endpoint=NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"xfer %p: udev=%p vid=0x%04x pid=0x%04x addr=%d endpoint=%p ep=0x%02x attr=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_dump_xfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = call i32 (i8*, %struct.usb_xfer*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %4)
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = icmp eq %struct.usb_xfer* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = call i32 (i8*, %struct.usb_xfer*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.usb_xfer* %15)
  br label %56

17:                                               ; preds = %9
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  store %struct.usb_device* %22, %struct.usb_device** %3, align 8
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @UGETW(i32 %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @UGETW(i32 %33)
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %42 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %49 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, %struct.usb_xfer*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), %struct.usb_xfer* %23, %struct.usb_device* %24, i32 %29, i32 %34, i32 %37, %struct.TYPE_8__* %40, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %17, %14, %8
  ret void
}

declare dso_local i32 @printf(i8*, %struct.usb_xfer*, ...) #1

declare dso_local i32 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
