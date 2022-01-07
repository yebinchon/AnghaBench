; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_alloc_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_alloc_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred*, %struct.proc* }
%struct.ucred = type { i32 }
%struct.proc = type { i32 }
%struct.file = type { i32 }
%struct.cdev = type { i32 }
%struct.tty = type { i32 }
%struct.pts_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.cdev*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RACCT_NPTS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RLIMIT_NPTS = common dso_local global i32 0, align 4
@M_PTS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ptsin\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ptsout\00", align 1
@pts_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DTYPE_PTS = common dso_local global i32 0, align 4
@ptsdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pts_alloc_external(i32 %0, %struct.thread* %1, %struct.file* %2, %struct.cdev* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.cdev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tty*, align 8
  %15 = alloca %struct.pts_softc*, align 8
  %16 = alloca %struct.proc*, align 8
  %17 = alloca %struct.ucred*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.thread* %1, %struct.thread** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store %struct.cdev* %3, %struct.cdev** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.thread*, %struct.thread** %8, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %16, align 8
  %21 = load %struct.thread*, %struct.thread** %8, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load %struct.ucred*, %struct.ucred** %22, align 8
  store %struct.ucred* %23, %struct.ucred** %17, align 8
  %24 = load %struct.proc*, %struct.proc** %16, align 8
  %25 = call i32 @PROC_LOCK(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %16, align 8
  %27 = load i32, i32* @RACCT_NPTS, align 4
  %28 = call i32 @racct_add(%struct.proc* %26, i32 %27, i32 1)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.proc*, %struct.proc** %16, align 8
  %33 = call i32 @PROC_UNLOCK(%struct.proc* %32)
  %34 = load i32, i32* @EAGAIN, align 4
  store i32 %34, i32* %6, align 4
  br label %102

35:                                               ; preds = %5
  %36 = load %struct.ucred*, %struct.ucred** %17, align 8
  %37 = getelementptr inbounds %struct.ucred, %struct.ucred* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = load i32, i32* @RLIMIT_NPTS, align 4
  %41 = call i32 @lim_cur(%struct.thread* %39, i32 %40)
  %42 = call i32 @chgptscnt(i32 %38, i32 1, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %35
  %46 = load %struct.proc*, %struct.proc** %16, align 8
  %47 = load i32, i32* @RACCT_NPTS, align 4
  %48 = call i32 @racct_sub(%struct.proc* %46, i32 %47, i32 1)
  %49 = load %struct.proc*, %struct.proc** %16, align 8
  %50 = call i32 @PROC_UNLOCK(%struct.proc* %49)
  %51 = load i32, i32* @EAGAIN, align 4
  store i32 %51, i32* %6, align 4
  br label %102

52:                                               ; preds = %35
  %53 = load %struct.proc*, %struct.proc** %16, align 8
  %54 = call i32 @PROC_UNLOCK(%struct.proc* %53)
  %55 = load i32, i32* @M_PTS, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = load i32, i32* @M_ZERO, align 4
  %58 = or i32 %56, %57
  %59 = call %struct.pts_softc* @malloc(i32 32, i32 %55, i32 %58)
  store %struct.pts_softc* %59, %struct.pts_softc** %15, align 8
  %60 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %61 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %60, i32 0, i32 6
  %62 = call i32 @cv_init(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %64 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %63, i32 0, i32 5
  %65 = call i32 @cv_init(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %67 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load %struct.cdev*, %struct.cdev** %10, align 8
  %69 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %70 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %69, i32 0, i32 4
  store %struct.cdev* %68, %struct.cdev** %70, align 8
  %71 = load %struct.ucred*, %struct.ucred** %17, align 8
  %72 = call i32 @crhold(%struct.ucred* %71)
  %73 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %74 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %76 = call %struct.tty* @tty_alloc(i32* @pts_class, %struct.pts_softc* %75)
  store %struct.tty* %76, %struct.tty** %14, align 8
  %77 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %78 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.tty*, %struct.tty** %14, align 8
  %81 = getelementptr inbounds %struct.tty, %struct.tty* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @knlist_init_mtx(i32* %79, i32 %82)
  %84 = load %struct.pts_softc*, %struct.pts_softc** %15, align 8
  %85 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.tty*, %struct.tty** %14, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @knlist_init_mtx(i32* %86, i32 %89)
  %91 = load %struct.tty*, %struct.tty** %14, align 8
  %92 = load %struct.thread*, %struct.thread** %8, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load %struct.ucred*, %struct.ucred** %93, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @tty_makedev(%struct.tty* %91, %struct.ucred* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = load %struct.file*, %struct.file** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DTYPE_PTS, align 4
  %100 = load %struct.tty*, %struct.tty** %14, align 8
  %101 = call i32 @finit(%struct.file* %97, i32 %98, i32 %99, %struct.tty* %100, i32* @ptsdev_ops)
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %52, %45, %31
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @racct_add(%struct.proc*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @chgptscnt(i32, i32, i32) #1

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @racct_sub(%struct.proc*, i32, i32) #1

declare dso_local %struct.pts_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.pts_softc*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @tty_makedev(%struct.tty*, %struct.ucred*, i8*, i8*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.tty*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
