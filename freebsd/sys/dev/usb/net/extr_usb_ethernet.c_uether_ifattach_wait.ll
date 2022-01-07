; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ifattach_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ifattach_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uether_ifattach_wait(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %3 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %4 = call i32 @UE_LOCK(%struct.usb_ether* %3)
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %5, i32 0, i32 1
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %13 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @usb_proc_mwait(i32* %6, i32* %11, i32* %16)
  %18 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %19 = call i32 @UE_UNLOCK(%struct.usb_ether* %18)
  ret void
}

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

declare dso_local i32 @usb_proc_mwait(i32*, i32*, i32*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
