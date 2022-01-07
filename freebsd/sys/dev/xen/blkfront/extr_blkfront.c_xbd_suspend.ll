; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i32, i32* }

@XBD_STATE_SUSPENDED = common dso_local global i32 0, align 4
@XBD_Q_BUSY = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"blkf_susp\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xbd_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.xbd_softc* @device_get_softc(i32 %6)
  store %struct.xbd_softc* %7, %struct.xbd_softc** %3, align 8
  %8 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %9 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %12 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @XBD_STATE_SUSPENDED, align 4
  %15 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %19 = load i64, i64* @XBD_Q_BUSY, align 8
  %20 = call i64 @xbd_queue_length(%struct.xbd_softc* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @XBD_Q_BUSY, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 1
  %30 = load i32, i32* @PRIBIO, align 4
  %31 = load i32, i32* @hz, align 4
  %32 = mul nsw i32 30, %31
  %33 = call i64 @msleep(i32* %27, i32* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @EWOULDBLOCK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @EBUSY, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %22
  br label %17

39:                                               ; preds = %36, %17
  %40 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %40, i32 0, i32 1
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.xbd_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xbd_queue_length(%struct.xbd_softc*, i64) #1

declare dso_local i64 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
