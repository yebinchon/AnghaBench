; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_kqops_write_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_kqops_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, %struct.file* }
%struct.file = type { %struct.tty* }
%struct.tty = type { i32 }
%struct.pts_softc = type { i32 }

@PTS_FINISHED = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @pts_kqops_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pts_kqops_write_event(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca %struct.pts_softc*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 2
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %6, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.tty*, %struct.tty** %13, align 8
  store %struct.tty* %14, %struct.tty** %7, align 8
  %15 = load %struct.tty*, %struct.tty** %7, align 8
  %16 = call %struct.pts_softc* @tty_softc(%struct.tty* %15)
  store %struct.pts_softc* %16, %struct.pts_softc** %8, align 8
  %17 = load %struct.pts_softc*, %struct.pts_softc** %8, align 8
  %18 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PTS_FINISHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @EV_EOF, align 4
  %25 = load %struct.knote*, %struct.knote** %4, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.tty*, %struct.tty** %7, align 8
  %31 = call i32 @ttydisc_rint_poll(%struct.tty* %30)
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = getelementptr inbounds %struct.knote, %struct.knote* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.knote*, %struct.knote** %4, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint_poll(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
