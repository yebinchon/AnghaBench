; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_on_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_on_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Illegal packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"keyboard resp: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"keystroke info: 0x%x, scan: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.vmbus_chanpkt_hdr*)* @hv_kbd_on_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kbd_on_received(%struct.TYPE_13__* %0, %struct.vmbus_chanpkt_hdr* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.vmbus_chanpkt_hdr* %1, %struct.vmbus_chanpkt_hdr** %4, align 8
  %12 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %13 = call i8* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %12)
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %16 = call i8* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %15)
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %19 = call i8* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %18)
  %20 = bitcast i8* %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %7, align 8
  %21 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %22 = call i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ule i64 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %66

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %65 [
    i32 128, label %37
    i32 129, label %46
  ]

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %40 = call i32 @hv_kbd_on_response(%struct.TYPE_13__* %38, %struct.vmbus_chanpkt_hdr* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @DEBUG_HVSC(%struct.TYPE_13__* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %66

46:                                               ; preds = %31
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @DEBUG_HVSC(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = call i32 @hv_kbd_produce_ks(%struct.TYPE_13__* %59, %struct.TYPE_17__* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @hv_kbd_intr(%struct.TYPE_13__* %63)
  br label %65

65:                                               ; preds = %31, %46
  br label %66

66:                                               ; preds = %26, %65, %37
  ret void
}

declare dso_local i8* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hv_kbd_on_response(%struct.TYPE_13__*, %struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @DEBUG_HVSC(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @hv_kbd_produce_ks(%struct.TYPE_13__*, %struct.TYPE_17__*) #1

declare dso_local i32 @hv_kbd_intr(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
