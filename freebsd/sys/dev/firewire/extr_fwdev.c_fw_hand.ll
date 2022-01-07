; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_hand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_hand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, i64 }
%struct.fw_bind = type { %struct.fw_drv1* }
%struct.fw_drv1 = type { i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xfer*)* @fw_hand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_hand(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.fw_bind*, align 8
  %4 = alloca %struct.fw_drv1*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %5 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fw_bind*
  store %struct.fw_bind* %8, %struct.fw_bind** %3, align 8
  %9 = load %struct.fw_bind*, %struct.fw_bind** %3, align 8
  %10 = getelementptr inbounds %struct.fw_bind, %struct.fw_bind* %9, i32 0, i32 0
  %11 = load %struct.fw_drv1*, %struct.fw_drv1** %10, align 8
  store %struct.fw_drv1* %11, %struct.fw_drv1** %4, align 8
  %12 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @FW_GLOCK(i32 %14)
  %16 = load %struct.fw_drv1*, %struct.fw_drv1** %4, align 8
  %17 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %16, i32 0, i32 0
  %18 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %19 = load i32, i32* @link, align 4
  %20 = call i32 @STAILQ_INSERT_TAIL(i32* %17, %struct.fw_xfer* %18, i32 %19)
  %21 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %22 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FW_GUNLOCK(i32 %23)
  %25 = load %struct.fw_drv1*, %struct.fw_drv1** %4, align 8
  %26 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %25, i32 0, i32 0
  %27 = call i32 @wakeup(i32* %26)
  ret void
}

declare dso_local i32 @FW_GLOCK(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
