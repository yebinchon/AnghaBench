; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_on_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_on_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"hvkbd is ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.vmbus_chanpkt_hdr*)* @hv_kbd_on_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kbd_on_response(%struct.TYPE_4__* %0, %struct.vmbus_chanpkt_hdr* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %5 = alloca %struct.vmbus_xact_ctx*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.vmbus_chanpkt_hdr* %1, %struct.vmbus_chanpkt_hdr** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  store %struct.vmbus_xact_ctx* %8, %struct.vmbus_xact_ctx** %5, align 8
  %9 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %5, align 8
  %10 = icmp ne %struct.vmbus_xact_ctx* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @DEBUG_HVSC(%struct.TYPE_4__* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %5, align 8
  %15 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %16 = call i32 @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %15)
  %17 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %18 = call i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr* %17)
  %19 = call i32 @vmbus_xact_ctx_wakeup(%struct.vmbus_xact_ctx* %14, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @DEBUG_HVSC(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @vmbus_xact_ctx_wakeup(%struct.vmbus_xact_ctx*, i32, i32) #1

declare dso_local i32 @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
