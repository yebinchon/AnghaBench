; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdrv_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdrv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pts_softc = type { i64, i32*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@pts_pool = common dso_local global i32 0, align 4
@RACCT_NPTS = common dso_local global i32 0, align 4
@M_PTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ptsdrv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptsdrv_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pts_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pts_softc*
  store %struct.pts_softc* %5, %struct.pts_softc** %3, align 8
  %6 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %7 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @pts_pool, align 4
  %12 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %13 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @free_unr(i32 %11, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %18 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @chgptscnt(i32 %21, i32 -1, i32 0)
  %23 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %24 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* @RACCT_NPTS, align 4
  %27 = call i32 @racct_sub_cred(%struct.TYPE_5__* %25, i32 %26, i32 1)
  %28 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %29 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @crfree(%struct.TYPE_5__* %30)
  %32 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %33 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %32, i32 0, i32 3
  %34 = call i32 @seldrain(%struct.TYPE_4__* %33)
  %35 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %36 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %35, i32 0, i32 2
  %37 = call i32 @seldrain(%struct.TYPE_4__* %36)
  %38 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @knlist_destroy(i32* %40)
  %42 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %43 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @knlist_destroy(i32* %44)
  %46 = load %struct.pts_softc*, %struct.pts_softc** %3, align 8
  %47 = load i32, i32* @M_PTS, align 4
  %48 = call i32 @free(%struct.pts_softc* %46, i32 %47)
  ret void
}

declare dso_local i32 @free_unr(i32, i64) #1

declare dso_local i32 @chgptscnt(i32, i32, i32) #1

declare dso_local i32 @racct_sub_cred(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @crfree(%struct.TYPE_5__*) #1

declare dso_local i32 @seldrain(%struct.TYPE_4__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @free(%struct.pts_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
