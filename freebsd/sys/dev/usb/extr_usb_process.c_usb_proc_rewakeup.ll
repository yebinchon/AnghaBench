; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_rewakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_rewakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i64, i32, i32*, i64 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_proc_rewakeup(%struct.usb_process* %0) #0 {
  %2 = alloca %struct.usb_process*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %2, align 8
  %3 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %4 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %10 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %16 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @USB_MTX_ASSERT(i32* %17, i32 %18)
  %20 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %21 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %26 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %25, i32 0, i32 1
  %27 = call i32 @cv_signal(i32* %26)
  br label %28

28:                                               ; preds = %7, %13, %24, %14
  ret void
}

declare dso_local i32 @USB_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
