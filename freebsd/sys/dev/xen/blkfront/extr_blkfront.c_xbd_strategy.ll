; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xbd_softc* }
%struct.xbd_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @xbd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.xbd_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.xbd_softc*, %struct.xbd_softc** %7, align 8
  store %struct.xbd_softc* %8, %struct.xbd_softc** %3, align 8
  %9 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %10 = icmp eq %struct.xbd_softc* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @BIO_ERROR, align 4
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = call i32 @biodone(%struct.bio* %25)
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = call i32 @xbd_enqueue_bio(%struct.xbd_softc* %31, %struct.bio* %32)
  %34 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %35 = call i32 @xbd_startio(%struct.xbd_softc* %34)
  %36 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %37 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  br label %39

39:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xbd_enqueue_bio(%struct.xbd_softc*, %struct.bio*) #1

declare dso_local i32 @xbd_startio(%struct.xbd_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
