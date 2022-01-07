; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_set_percpu_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_set_percpu_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_hvm_evtchn_upcall_vector = type { i32, i32 }

@IDT_EVTCHN = common dso_local global i32 0, align 4
@HVMOP_set_evtchn_upcall_vector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_percpu_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_percpu_callback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_hvm_evtchn_upcall_vector, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %struct.xen_hvm_evtchn_upcall_vector, %struct.xen_hvm_evtchn_upcall_vector* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @IDT_EVTCHN, align 4
  %8 = getelementptr inbounds %struct.xen_hvm_evtchn_upcall_vector, %struct.xen_hvm_evtchn_upcall_vector* %3, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @HVMOP_set_evtchn_upcall_vector, align 4
  %10 = call i32 @HYPERVISOR_hvm_op(i32 %9, %struct.xen_hvm_evtchn_upcall_vector* %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @xen_translate_error(i32 %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  ret i32 %18
}

declare dso_local i32 @HYPERVISOR_hvm_op(i32, %struct.xen_hvm_evtchn_upcall_vector*) #1

declare dso_local i32 @xen_translate_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
