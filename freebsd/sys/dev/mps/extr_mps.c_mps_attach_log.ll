; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_attach_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_attach_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }

@MPI2_EVENT_NOTIFY_EVENTMASK_WORDS = common dso_local global i32 0, align 4
@MPI2_EVENT_LOG_DATA = common dso_local global i32 0, align 4
@MPI2_EVENT_LOG_ENTRY_ADDED = common dso_local global i32 0, align 4
@mps_log_evt_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*)* @mps_attach_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_attach_log(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %5 = load i32, i32* @MPI2_EVENT_NOTIFY_EVENTMASK_WORDS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = call i32 @bzero(i32* %8, i32 16)
  %10 = load i32, i32* @MPI2_EVENT_LOG_DATA, align 4
  %11 = call i32 @setbit(i32* %8, i32 %10)
  %12 = load i32, i32* @MPI2_EVENT_LOG_ENTRY_ADDED, align 4
  %13 = call i32 @setbit(i32* %8, i32 %12)
  %14 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %15 = load i32, i32* @mps_log_evt_handler, align 4
  %16 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %16, i32 0, i32 0
  %18 = call i32 @mps_register_events(%struct.mps_softc* %14, i32* %8, i32 %15, i32* null, i32* %17)
  %19 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %19)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @mps_register_events(%struct.mps_softc*, i32*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
