; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_filt = type { i32, i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@usb_filt_head = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_filter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_filt*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.usb_filt* @malloc(i32 8)
  store %struct.usb_filt* %6, %struct.usb_filt** %5, align 8
  %7 = load %struct.usb_filt*, %struct.usb_filt** %5, align 8
  %8 = icmp eq %struct.usb_filt* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EX_SOFTWARE, align 4
  %11 = call i32 @errx(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.usb_filt*, %struct.usb_filt** %5, align 8
  %15 = getelementptr inbounds %struct.usb_filt, %struct.usb_filt* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.usb_filt*, %struct.usb_filt** %5, align 8
  %18 = getelementptr inbounds %struct.usb_filt, %struct.usb_filt* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.usb_filt*, %struct.usb_filt** %5, align 8
  %20 = load i32, i32* @entry, align 4
  %21 = call i32 @STAILQ_INSERT_TAIL(i32* @usb_filt_head, %struct.usb_filt* %19, i32 %20)
  ret void
}

declare dso_local %struct.usb_filt* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.usb_filt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
