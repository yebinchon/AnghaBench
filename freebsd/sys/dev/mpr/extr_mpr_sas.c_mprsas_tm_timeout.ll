; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_tm_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_tm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i64, %struct.mpr_softc* }
%struct.mpr_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MPR_INFO = common dso_local global i32 0, align 4
@MPR_RECOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"task mgmt %p timed out\0A\00", align 1
@MPR_CM_STATE_INQUEUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"command not inqueue\0A\00", align 1
@MPR_CM_STATE_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mprsas_tm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mprsas_tm_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpr_command*, align 8
  %4 = alloca %struct.mpr_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mpr_command*
  store %struct.mpr_command* %6, %struct.mpr_command** %3, align 8
  %7 = load %struct.mpr_command*, %struct.mpr_command** %3, align 8
  %8 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %7, i32 0, i32 1
  %9 = load %struct.mpr_softc*, %struct.mpr_softc** %8, align 8
  store %struct.mpr_softc* %9, %struct.mpr_softc** %4, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %10, i32 0, i32 0
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load %struct.mpr_command*, %struct.mpr_command** %3, align 8
  %15 = load i32, i32* @MPR_INFO, align 4
  %16 = load i32, i32* @MPR_RECOVERY, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.mpr_command*, %struct.mpr_command** %3, align 8
  %19 = call i32 @mprsas_log_command(%struct.mpr_command* %14, i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.mpr_command* %18)
  %20 = load %struct.mpr_command*, %struct.mpr_command** %3, align 8
  %21 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MPR_CM_STATE_INQUEUE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @MPR_CM_STATE_BUSY, align 8
  %28 = load %struct.mpr_command*, %struct.mpr_command** %3, align 8
  %29 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %31 = call i32 @mpr_reinit(%struct.mpr_softc* %30)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mprsas_log_command(%struct.mpr_command*, i32, i8*, %struct.mpr_command*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mpr_reinit(%struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
