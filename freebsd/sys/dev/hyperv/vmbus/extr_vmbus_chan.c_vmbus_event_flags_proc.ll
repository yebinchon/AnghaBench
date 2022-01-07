; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_event_flags_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_event_flags_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { %struct.vmbus_channel** }
%struct.vmbus_channel = type { i32, i32, i32, i32 }

@VMBUS_EVTFLAG_SHIFT = common dso_local global i32 0, align 4
@VMBUS_CHAN_FLAG_BATCHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_softc*, i64*, i32)* @vmbus_event_flags_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_event_flags_proc(%struct.vmbus_softc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %81, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load volatile i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %81

24:                                               ; preds = %16
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = call i64 @atomic_swap_long(i64* %28, i32 0)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @VMBUS_EVTFLAG_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %73, %60, %24
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @ffsl(i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %47 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %46, i32 0, i32 0
  %48 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %48, i64 %52
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %53, align 8
  store %struct.vmbus_channel* %54, %struct.vmbus_channel** %11, align 8
  %55 = load %struct.vmbus_channel*, %struct.vmbus_channel** %11, align 8
  %56 = icmp eq %struct.vmbus_channel* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @__predict_false(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %33

61:                                               ; preds = %37
  %62 = call i32 (...) @__compiler_membar()
  %63 = load %struct.vmbus_channel*, %struct.vmbus_channel** %11, align 8
  %64 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VMBUS_CHAN_FLAG_BATCHREAD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.vmbus_channel*, %struct.vmbus_channel** %11, align 8
  %71 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %70, i32 0, i32 3
  %72 = call i32 @vmbus_rxbr_intr_mask(i32* %71)
  br label %73

73:                                               ; preds = %69, %61
  %74 = load %struct.vmbus_channel*, %struct.vmbus_channel** %11, align 8
  %75 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vmbus_channel*, %struct.vmbus_channel** %11, align 8
  %78 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %77, i32 0, i32 1
  %79 = call i32 @taskqueue_enqueue(i32 %76, i32* %78)
  br label %33

80:                                               ; preds = %33
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %12

84:                                               ; preds = %12
  ret void
}

declare dso_local i64 @atomic_swap_long(i64*, i32) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @vmbus_rxbr_intr_mask(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
