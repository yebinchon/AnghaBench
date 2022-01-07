; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.xbd_softc* }
%struct.xbd_softc = type { i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)* @xbd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_ioctl(%struct.disk* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.xbd_softc*, align 8
  store %struct.disk* %0, %struct.disk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %13 = load %struct.disk*, %struct.disk** %7, align 8
  %14 = getelementptr inbounds %struct.disk, %struct.disk* %13, i32 0, i32 0
  %15 = load %struct.xbd_softc*, %struct.xbd_softc** %14, align 8
  store %struct.xbd_softc* %15, %struct.xbd_softc** %12, align 8
  %16 = load %struct.xbd_softc*, %struct.xbd_softc** %12, align 8
  %17 = icmp eq %struct.xbd_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOTTY, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
