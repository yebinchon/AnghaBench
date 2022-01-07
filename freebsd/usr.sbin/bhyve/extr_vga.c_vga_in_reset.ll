; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_in_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_in_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SEQ_CM_SO = common dso_local global i32 0, align 4
@SEQ_RESET_ASYNC = common dso_local global i32 0, align 4
@SEQ_RESET_SYNC = common dso_local global i32 0, align 4
@CRTC_MC_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_softc*)* @vga_in_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_in_reset(%struct.vga_softc* %0) #0 {
  %2 = alloca %struct.vga_softc*, align 8
  store %struct.vga_softc* %0, %struct.vga_softc** %2, align 8
  %3 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %4 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SEQ_CM_SO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SEQ_RESET_ASYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %10
  %19 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %20 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SEQ_RESET_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.vga_softc*, %struct.vga_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CRTC_MC_TE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %26, %18, %10, %1
  %35 = phi i1 [ true, %18 ], [ true, %10 ], [ true, %1 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
