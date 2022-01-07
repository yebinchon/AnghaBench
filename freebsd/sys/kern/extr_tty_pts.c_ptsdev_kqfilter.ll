; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tty* }
%struct.tty = type { i32 }
%struct.knote = type { i32, i32* }
%struct.pts_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@pts_kqops_read = common dso_local global i32 0, align 4
@pts_kqops_write = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.knote*)* @ptsdev_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.pts_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.knote* %1, %struct.knote** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %5, align 8
  %11 = load %struct.tty*, %struct.tty** %5, align 8
  %12 = call %struct.pts_softc* @tty_softc(%struct.tty* %11)
  store %struct.pts_softc* %12, %struct.pts_softc** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tty*, %struct.tty** %5, align 8
  %14 = call i32 @tty_lock(%struct.tty* %13)
  %15 = load %struct.knote*, %struct.knote** %4, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %34 [
    i32 129, label %18
    i32 128, label %26
  ]

18:                                               ; preds = %2
  %19 = load %struct.knote*, %struct.knote** %4, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 1
  store i32* @pts_kqops_read, i32** %20, align 8
  %21 = load %struct.pts_softc*, %struct.pts_softc** %6, align 8
  %22 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.knote*, %struct.knote** %4, align 8
  %25 = call i32 @knlist_add(i32* %23, %struct.knote* %24, i32 1)
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 1
  store i32* @pts_kqops_write, i32** %28, align 8
  %29 = load %struct.pts_softc*, %struct.pts_softc** %6, align 8
  %30 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = call i32 @knlist_add(i32* %31, %struct.knote* %32, i32 1)
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %26, %18
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = call i32 @tty_unlock(%struct.tty* %37)
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
