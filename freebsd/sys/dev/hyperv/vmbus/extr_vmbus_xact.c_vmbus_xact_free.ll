; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { %struct.vmbus_xact*, %struct.vmbus_xact*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_xact*)* @vmbus_xact_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_xact_free(%struct.vmbus_xact* %0) #0 {
  %2 = alloca %struct.vmbus_xact*, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %2, align 8
  %3 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %4 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %3, i32 0, i32 3
  %5 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %6 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @hyperv_dmamem_free(i32* %4, i32 %7)
  %9 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %9, i32 0, i32 1
  %11 = load %struct.vmbus_xact*, %struct.vmbus_xact** %10, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @free(%struct.vmbus_xact* %11, i32 %12)
  %14 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %15 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %14, i32 0, i32 0
  %16 = load %struct.vmbus_xact*, %struct.vmbus_xact** %15, align 8
  %17 = icmp ne %struct.vmbus_xact* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %20 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %19, i32 0, i32 0
  %21 = load %struct.vmbus_xact*, %struct.vmbus_xact** %20, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(%struct.vmbus_xact* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = call i32 @free(%struct.vmbus_xact* %25, i32 %26)
  ret void
}

declare dso_local i32 @hyperv_dmamem_free(i32*, i32) #1

declare dso_local i32 @free(%struct.vmbus_xact*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
