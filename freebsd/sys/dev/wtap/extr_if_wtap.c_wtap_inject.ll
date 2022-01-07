; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_softc = type { i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.wtap_buf = type { %struct.mbuf* }

@M_WTAP_RXBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocated a new wtap_buf\0A\00", align 1
@bf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wtap_inject(%struct.wtap_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.wtap_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.wtap_buf*, align 8
  store %struct.wtap_softc* %0, %struct.wtap_softc** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load i32, i32* @M_WTAP_RXBUF, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @malloc(i32 8, i32 %6, i32 %9)
  %11 = inttoptr i64 %10 to %struct.wtap_buf*
  store %struct.wtap_buf* %11, %struct.wtap_buf** %5, align 8
  %12 = load %struct.wtap_buf*, %struct.wtap_buf** %5, align 8
  %13 = icmp ne %struct.wtap_buf* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = load %struct.wtap_buf*, %struct.wtap_buf** %5, align 8
  %18 = getelementptr inbounds %struct.wtap_buf, %struct.wtap_buf* %17, i32 0, i32 0
  store %struct.mbuf* %16, %struct.mbuf** %18, align 8
  %19 = load %struct.wtap_softc*, %struct.wtap_softc** %3, align 8
  %20 = getelementptr inbounds %struct.wtap_softc, %struct.wtap_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.wtap_softc*, %struct.wtap_softc** %3, align 8
  %23 = getelementptr inbounds %struct.wtap_softc, %struct.wtap_softc* %22, i32 0, i32 3
  %24 = load %struct.wtap_buf*, %struct.wtap_buf** %5, align 8
  %25 = load i32, i32* @bf_list, align 4
  %26 = call i32 @STAILQ_INSERT_TAIL(i32* %23, %struct.wtap_buf* %24, i32 %25)
  %27 = load %struct.wtap_softc*, %struct.wtap_softc** %3, align 8
  %28 = getelementptr inbounds %struct.wtap_softc, %struct.wtap_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wtap_softc*, %struct.wtap_softc** %3, align 8
  %31 = getelementptr inbounds %struct.wtap_softc, %struct.wtap_softc* %30, i32 0, i32 1
  %32 = call i32 @taskqueue_enqueue(i32 %29, i32* %31)
  %33 = load %struct.wtap_softc*, %struct.wtap_softc** %3, align 8
  %34 = getelementptr inbounds %struct.wtap_softc, %struct.wtap_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.wtap_buf*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
