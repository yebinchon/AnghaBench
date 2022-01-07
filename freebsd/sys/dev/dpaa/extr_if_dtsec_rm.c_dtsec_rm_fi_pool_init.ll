; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fi_pool_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fi_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: Frame Info\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_fi_pool_init(%struct.dtsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  %4 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %5 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @device_get_nameunit(i32 %9)
  %11 = call i32 @snprintf(i32 %6, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %16 = call i32* @uma_zcreate(i32 %14, i32 4, i32* null, i32* null, i32* null, i32* null, i32 %15, i32 0)
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %18 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32* @uma_zcreate(i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
