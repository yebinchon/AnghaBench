; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_completeio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_completeio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.amr_command = type { i64, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amrd_softc* }
%struct.amrd_softc = type { i32 }

@amr_completeio.lastfail = internal global %struct.timeval zeroinitializer, align 4
@amr_completeio.curfail = internal global i32 0, align 4
@AMR_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"I/O error - 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_command*)* @amr_completeio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_completeio(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca %struct.amrd_softc*, align 8
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %4 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %5 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.amrd_softc*, %struct.amrd_softc** %9, align 8
  store %struct.amrd_softc* %10, %struct.amrd_softc** %3, align 8
  %11 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %12 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AMR_STATUS_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %19 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @BIO_ERROR, align 4
  %23 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %24 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  %29 = call i64 @ppsratecheck(%struct.timeval* @amr_completeio.lastfail, i32* @amr_completeio.curfail, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %16
  %32 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %36 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %31, %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %42 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @amrd_intr(%struct.TYPE_6__* %43)
  %45 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %46 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %51 = call i32 @amr_releasecmd(%struct.amr_command* %50)
  %52 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %53 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock(i32* %55)
  ret void
}

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @amrd_intr(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
