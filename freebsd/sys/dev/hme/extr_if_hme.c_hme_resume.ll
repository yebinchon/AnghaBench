; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hme_resume(%struct.hme_softc* %0) #0 {
  %2 = alloca %struct.hme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.hme_softc* %0, %struct.hme_softc** %2, align 8
  %4 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %5 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %8 = call i32 @HME_LOCK(%struct.hme_softc* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %17 = call i32 @hme_init_locked(%struct.hme_softc* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %20 = call i32 @HME_UNLOCK(%struct.hme_softc* %19)
  ret void
}

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

declare dso_local i32 @hme_init_locked(%struct.hme_softc*) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
