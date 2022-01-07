; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_cm_freeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_cm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32 }
%struct.xbd_command = type { i32 }

@XBDCF_FROZEN = common dso_local global i32 0, align 4
@XBDF_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*, %struct.xbd_command*, i32)* @xbd_cm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_cm_freeze(%struct.xbd_softc* %0, %struct.xbd_command* %1, i32 %2) #0 {
  %4 = alloca %struct.xbd_softc*, align 8
  %5 = alloca %struct.xbd_command*, align 8
  %6 = alloca i32, align 4
  store %struct.xbd_softc* %0, %struct.xbd_softc** %4, align 8
  store %struct.xbd_command* %1, %struct.xbd_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xbd_command*, %struct.xbd_command** %5, align 8
  %8 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XBDCF_FROZEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %25

14:                                               ; preds = %3
  %15 = load i32, i32* @XBDCF_FROZEN, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.xbd_command*, %struct.xbd_command** %5, align 8
  %19 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %23 = load i32, i32* @XBDF_NONE, align 4
  %24 = call i32 @xbd_freeze(%struct.xbd_softc* %22, i32 %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @xbd_freeze(%struct.xbd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
