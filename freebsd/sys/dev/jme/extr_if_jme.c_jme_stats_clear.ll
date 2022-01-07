; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32 }

@JME_FLAG_HWMIB = common dso_local global i32 0, align 4
@JME_STATCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stats_clear(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %3 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %4 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %3)
  %5 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %6 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @JME_FLAG_HWMIB, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %14 = load i32, i32* @JME_STATCSR, align 4
  %15 = call i32 @CSR_WRITE_4(%struct.jme_softc* %13, i32 %14, i32 -1)
  %16 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %17 = load i32, i32* @JME_STATCSR, align 4
  %18 = call i32 @CSR_WRITE_4(%struct.jme_softc* %16, i32 %17, i32 0)
  %19 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %20 = load i32, i32* @JME_STATCSR, align 4
  %21 = call i32 @CSR_READ_4(%struct.jme_softc* %19, i32 %20)
  %22 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %23 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %22, i32 0, i32 1
  %24 = call i32 @bzero(i32* %23, i32 4)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
