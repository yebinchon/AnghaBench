; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_wrkthr.c_g_uzip_wrkthr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_wrkthr.c_g_uzip_wrkthr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_softc = type { i32, i32 (%struct.g_uzip_softc*, %struct.bio*)*, i32, i32 }
%struct.bio = type opaque
%struct.bio.0 = type { i32 }

@curthread = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@GUZ_SHUTDOWN = common dso_local global i32 0, align 4
@GUZ_EXITING = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wrkwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_uzip_wrkthr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_uzip_softc*, align 8
  %4 = alloca %struct.bio.0*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.g_uzip_softc*
  store %struct.g_uzip_softc* %6, %struct.g_uzip_softc** %3, align 8
  %7 = load i32, i32* @curthread, align 4
  %8 = call i32 @thread_lock(i32 %7)
  %9 = load i32, i32* @curthread, align 4
  %10 = load i32, i32* @PRIBIO, align 4
  %11 = call i32 @sched_prio(i32 %9, i32 %10)
  %12 = load i32, i32* @curthread, align 4
  %13 = call i32 @thread_unlock(i32 %12)
  br label %14

14:                                               ; preds = %48, %40, %1
  %15 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GUZ_SHUTDOWN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load i32, i32* @GUZ_EXITING, align 4
  %26 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %31 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %30, i32 0, i32 2
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = call i32 @kproc_exit(i32 0)
  br label %34

34:                                               ; preds = %24, %14
  %35 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %36 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %35, i32 0, i32 3
  %37 = call %struct.bio.0* @bioq_takefirst(i32* %36)
  store %struct.bio.0* %37, %struct.bio.0** %4, align 8
  %38 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %39 = icmp ne %struct.bio.0* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %42 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %43 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %42, i32 0, i32 2
  %44 = load i32, i32* @PRIBIO, align 4
  %45 = load i32, i32* @PDROP, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @msleep(%struct.g_uzip_softc* %41, i32* %43, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

48:                                               ; preds = %34
  %49 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %50 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %49, i32 0, i32 2
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %53 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %52, i32 0, i32 1
  %54 = load i32 (%struct.g_uzip_softc*, %struct.bio*)*, i32 (%struct.g_uzip_softc*, %struct.bio*)** %53, align 8
  %55 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %56 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %57 = bitcast %struct.bio.0* %56 to %struct.bio*
  %58 = call i32 %54(%struct.g_uzip_softc* %55, %struct.bio* %57)
  br label %14
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local %struct.bio.0* @bioq_takefirst(i32*) #1

declare dso_local i32 @msleep(%struct.g_uzip_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
