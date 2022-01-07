; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { %struct.TYPE_3__, i32*, i64, i64, %struct.ifnet* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@AN_RID_WEP_TEMP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @an_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.an_softc* @device_get_softc(i32 %6)
  store %struct.an_softc* %7, %struct.an_softc** %3, align 8
  %8 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %9 = call i32 @AN_LOCK(%struct.an_softc* %8)
  %10 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %11 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %14 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %16 = call i32 @an_reset(%struct.an_softc* %15)
  %17 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %23 = call i32 @an_init_mpi350_desc(%struct.an_softc* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %26 = call i32 @an_init_locked(%struct.an_softc* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* @AN_RID_WEP_TEMP, align 4
  %32 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %33 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %36 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %39 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %45 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %44, i32 0, i32 0
  %46 = call i32 @bcopy(i32* %43, %struct.TYPE_3__* %45, i32 4)
  %47 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %48 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %49 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %48, i32 0, i32 0
  %50 = call i32 @an_setdef(%struct.an_softc* %47, %struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %30
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_UP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = call i32 @an_start_locked(%struct.ifnet* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %66 = call i32 @AN_UNLOCK(%struct.an_softc* %65)
  ret void
}

declare dso_local %struct.an_softc* @device_get_softc(i32) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @an_reset(%struct.an_softc*) #1

declare dso_local i32 @an_init_mpi350_desc(%struct.an_softc*) #1

declare dso_local i32 @an_init_locked(%struct.an_softc*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @an_setdef(%struct.an_softc*, %struct.TYPE_3__*) #1

declare dso_local i32 @an_start_locked(%struct.ifnet*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
