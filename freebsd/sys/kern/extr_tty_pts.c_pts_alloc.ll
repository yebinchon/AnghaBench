; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_pts_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred*, %struct.proc* }
%struct.ucred = type { i32 }
%struct.proc = type { i32 }
%struct.file = type { i32 }
%struct.tty = type { i32 }
%struct.pts_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RACCT_NPTS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RLIMIT_NPTS = common dso_local global i32 0, align 4
@pts_pool = common dso_local global i32 0, align 4
@M_PTS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ptsin\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ptsout\00", align 1
@pts_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pts/%u\00", align 1
@DTYPE_PTS = common dso_local global i32 0, align 4
@ptsdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pts_alloc(i32 %0, %struct.thread* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty*, align 8
  %12 = alloca %struct.pts_softc*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca %struct.ucred*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %13, align 8
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %14, align 8
  %21 = load %struct.proc*, %struct.proc** %13, align 8
  %22 = call i32 @PROC_LOCK(%struct.proc* %21)
  %23 = load %struct.proc*, %struct.proc** %13, align 8
  %24 = load i32, i32* @RACCT_NPTS, align 4
  %25 = call i32 @racct_add(%struct.proc* %23, i32 %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.proc*, %struct.proc** %13, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  %31 = load i32, i32* @EAGAIN, align 4
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %3
  %33 = load %struct.ucred*, %struct.ucred** %14, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load i32, i32* @RLIMIT_NPTS, align 4
  %38 = call i32 @lim_cur(%struct.thread* %36, i32 %37)
  %39 = call i32 @chgptscnt(i32 %35, i32 1, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  %43 = load %struct.proc*, %struct.proc** %13, align 8
  %44 = load i32, i32* @RACCT_NPTS, align 4
  %45 = call i32 @racct_sub(%struct.proc* %43, i32 %44, i32 1)
  %46 = load %struct.proc*, %struct.proc** %13, align 8
  %47 = call i32 @PROC_UNLOCK(%struct.proc* %46)
  %48 = load i32, i32* @EAGAIN, align 4
  store i32 %48, i32* %4, align 4
  br label %113

49:                                               ; preds = %32
  %50 = load %struct.proc*, %struct.proc** %13, align 8
  %51 = call i32 @PROC_UNLOCK(%struct.proc* %50)
  %52 = load i32, i32* @pts_pool, align 4
  %53 = call i32 @alloc_unr(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.proc*, %struct.proc** %13, align 8
  %58 = load i32, i32* @RACCT_NPTS, align 4
  %59 = call i32 @racct_sub(%struct.proc* %57, i32 %58, i32 1)
  %60 = load %struct.ucred*, %struct.ucred** %14, align 8
  %61 = getelementptr inbounds %struct.ucred, %struct.ucred* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @chgptscnt(i32 %62, i32 -1, i32 0)
  %64 = load i32, i32* @EAGAIN, align 4
  store i32 %64, i32* %4, align 4
  br label %113

65:                                               ; preds = %49
  %66 = load i32, i32* @M_PTS, align 4
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = load i32, i32* @M_ZERO, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.pts_softc* @malloc(i32 24, i32 %66, i32 %69)
  store %struct.pts_softc* %70, %struct.pts_softc** %12, align 8
  %71 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %72 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %71, i32 0, i32 5
  %73 = call i32 @cv_init(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %75 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %74, i32 0, i32 4
  %76 = call i32 @cv_init(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %79 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ucred*, %struct.ucred** %14, align 8
  %81 = call i32 @crhold(%struct.ucred* %80)
  %82 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %83 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %85 = call %struct.tty* @tty_alloc(i32* @pts_class, %struct.pts_softc* %84)
  store %struct.tty* %85, %struct.tty** %11, align 8
  %86 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %87 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.tty*, %struct.tty** %11, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @knlist_init_mtx(i32* %88, i32 %91)
  %93 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %94 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.tty*, %struct.tty** %11, align 8
  %97 = getelementptr inbounds %struct.tty, %struct.tty* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @knlist_init_mtx(i32* %95, i32 %98)
  %100 = load %struct.tty*, %struct.tty** %11, align 8
  %101 = load %struct.thread*, %struct.thread** %6, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 0
  %103 = load %struct.ucred*, %struct.ucred** %102, align 8
  %104 = load %struct.pts_softc*, %struct.pts_softc** %12, align 8
  %105 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @tty_makedev(%struct.tty* %100, %struct.ucred* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.file*, %struct.file** %7, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @DTYPE_PTS, align 4
  %111 = load %struct.tty*, %struct.tty** %11, align 8
  %112 = call i32 @finit(%struct.file* %108, i32 %109, i32 %110, %struct.tty* %111, i32* @ptsdev_ops)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %65, %56, %42, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @racct_add(%struct.proc*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @chgptscnt(i32, i32, i32) #1

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @racct_sub(%struct.proc*, i32, i32) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local %struct.pts_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.pts_softc*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @tty_makedev(%struct.tty*, %struct.ucred*, i8*, i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.tty*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
