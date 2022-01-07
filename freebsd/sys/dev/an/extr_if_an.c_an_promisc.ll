; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i64, i64, i64 }

@AN_CMD_SET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an_softc*, i32)* @an_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_promisc(%struct.an_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %6 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %5)
  %7 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %8 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %13 = call i32 @an_reset(%struct.an_softc* %12)
  %14 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %15 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %20 = call i32 @an_init_mpi350_desc(%struct.an_softc* %19)
  br label %21

21:                                               ; preds = %18, %11
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %24 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %29 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %34 = call i32 @an_init_locked(%struct.an_softc* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %37 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %40 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %42 = load i32, i32* @AN_CMD_SET_MODE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 65535, i32 0
  %47 = call i32 @an_cmd(%struct.an_softc* %41, i32 %42, i32 %46)
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_reset(%struct.an_softc*) #1

declare dso_local i32 @an_init_mpi350_desc(%struct.an_softc*) #1

declare dso_local i32 @an_init_locked(%struct.an_softc*) #1

declare dso_local i32 @an_cmd(%struct.an_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
