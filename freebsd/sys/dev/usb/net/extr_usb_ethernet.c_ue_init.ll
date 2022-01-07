; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ue_start_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ue_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.usb_ether*
  store %struct.usb_ether* %5, %struct.usb_ether** %3, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %7 = call i32 @UE_LOCK(%struct.usb_ether* %6)
  %8 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %9 = load i32, i32* @ue_start_task, align 4
  %10 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %11 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %16 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @ue_queue_command(%struct.usb_ether* %8, i32 %9, i32* %14, i32* %19)
  %21 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %22 = call i32 @UE_UNLOCK(%struct.usb_ether* %21)
  ret void
}

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

declare dso_local i32 @ue_queue_command(%struct.usb_ether*, i32, i32*, i32*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
