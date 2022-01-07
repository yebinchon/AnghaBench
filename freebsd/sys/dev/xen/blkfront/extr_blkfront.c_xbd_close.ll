; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.xbd_softc* }
%struct.xbd_softc = type { i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XBDF_OPEN = common dso_local global i32 0, align 4
@XenbusStateClosing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @xbd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_close(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.xbd_softc*, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  %5 = load %struct.disk*, %struct.disk** %3, align 8
  %6 = getelementptr inbounds %struct.disk, %struct.disk* %5, i32 0, i32 0
  %7 = load %struct.xbd_softc*, %struct.xbd_softc** %6, align 8
  store %struct.xbd_softc* %7, %struct.xbd_softc** %4, align 8
  %8 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %9 = icmp eq %struct.xbd_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @XBDF_OPEN, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %16 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @xenbus_get_otherend_state(i32 %27)
  %29 = load i64, i64* @XenbusStateClosing, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.xbd_softc*, %struct.xbd_softc** %4, align 8
  %33 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @xbd_closing(i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %12
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @xenbus_get_otherend_state(i32) #1

declare dso_local i32 @xbd_closing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
