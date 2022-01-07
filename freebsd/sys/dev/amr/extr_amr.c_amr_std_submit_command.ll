; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_std_submit_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_std_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.amr_command = type { %struct.TYPE_4__, i64, i64, %struct.amr_softc* }
%struct.TYPE_4__ = type { i64 }
%struct.amr_softc = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@amr_std_submit_command.lastfail = internal global %struct.timeval zeroinitializer, align 4
@amr_std_submit_command.curfail = internal global i32 0, align 4
@AMR_SMBOX_BUSYFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Too many retries on command %p.  Controller is likely dead\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_std_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_std_submit_command(%struct.amr_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_command*, align 8
  %4 = alloca %struct.amr_softc*, align 8
  store %struct.amr_command* %0, %struct.amr_command** %3, align 8
  %5 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 3
  %7 = load %struct.amr_softc*, %struct.amr_softc** %6, align 8
  store %struct.amr_softc* %7, %struct.amr_softc** %4, align 8
  %8 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %9 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %12 = call i32 @AMR_SGET_MBSTAT(%struct.amr_softc* %11)
  %13 = load i32, i32* @AMR_SMBOX_BUSYFLAG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %18 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  %20 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %21 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = icmp sgt i64 %22, 1000
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = call i64 @ppsratecheck(%struct.timeval* @amr_std_submit_command.lastfail, i32* @amr_std_submit_command.curfail, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.amr_command* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %36 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %16
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %2, align 4
  br label %73

39:                                               ; preds = %1
  %40 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %41 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %45 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %48 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %47, i32 0, i32 0
  %49 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %50 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = bitcast %struct.TYPE_3__* %51 to i8*
  %53 = ptrtoint i8* %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @bcopy(%struct.TYPE_4__* %48, i8* %54, i32 14)
  %56 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %57 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %61 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %65 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %69 = call i32 @AMR_SPOST_COMMAND(%struct.amr_softc* %68)
  %70 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %71 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %39, %37
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AMR_SGET_MBSTAT(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.amr_command*) #1

declare dso_local i32 @bcopy(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @AMR_SPOST_COMMAND(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
