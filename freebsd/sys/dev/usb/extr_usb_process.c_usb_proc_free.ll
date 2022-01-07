; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_proc_free(%struct.usb_process* %0) #0 {
  %2 = alloca %struct.usb_process*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %2, align 8
  %3 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %4 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %10 = call i32 @usb_proc_drain(%struct.usb_process* %9)
  %11 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %12 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %11, i32 0, i32 2
  %13 = call i32 @cv_destroy(i32* %12)
  %14 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %15 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %14, i32 0, i32 1
  %16 = call i32 @cv_destroy(i32* %15)
  %17 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %18 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @usb_proc_drain(%struct.usb_process*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
