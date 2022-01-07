; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_free_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_free_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { %struct.usb_filt* }
%struct.usb_filt = type { i32 }

@usb_filt_head = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_program*)* @free_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_filter(%struct.bpf_program* %0) #0 {
  %2 = alloca %struct.bpf_program*, align 8
  %3 = alloca %struct.usb_filt*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = call %struct.usb_filt* @STAILQ_FIRST(i32* @usb_filt_head)
  store %struct.usb_filt* %5, %struct.usb_filt** %3, align 8
  %6 = icmp ne %struct.usb_filt* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @entry, align 4
  %9 = call i32 @STAILQ_REMOVE_HEAD(i32* @usb_filt_head, i32 %8)
  %10 = load %struct.usb_filt*, %struct.usb_filt** %3, align 8
  %11 = call i32 @free(%struct.usb_filt* %10)
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.bpf_program*, %struct.bpf_program** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %13, i32 0, i32 0
  %15 = load %struct.usb_filt*, %struct.usb_filt** %14, align 8
  %16 = call i32 @free(%struct.usb_filt* %15)
  ret void
}

declare dso_local %struct.usb_filt* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.usb_filt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
