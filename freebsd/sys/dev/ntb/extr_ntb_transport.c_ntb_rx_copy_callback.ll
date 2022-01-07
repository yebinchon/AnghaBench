; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_rx_copy_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_rx_copy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32 }
%struct.ntb_queue_entry = type { i32 }

@NTBT_DESC_DONE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*, i8*)* @ntb_rx_copy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_rx_copy_callback(%struct.ntb_transport_qp* %0, i8* %1) #0 {
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ntb_queue_entry*
  store %struct.ntb_queue_entry* %7, %struct.ntb_queue_entry** %5, align 8
  %8 = load i32, i32* @NTBT_DESC_DONE_FLAG, align 4
  %9 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %14 = call i32 @ntb_complete_rxc(%struct.ntb_transport_qp* %13)
  ret void
}

declare dso_local i32 @ntb_complete_rxc(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
