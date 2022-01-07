; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCFLAG_OCTL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCFLAG_ONORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @apmopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.apm_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %10, align 8
  %11 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %12 = icmp eq %struct.apm_softc* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %15 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %4
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.cdev*, %struct.cdev** %6, align 8
  %22 = call i32 @dev2unit(%struct.cdev* %21)
  switch i32 %22, label %55 [
    i32 129, label %23
    i32 128, label %49
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FWRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %32 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SCFLAG_OCTL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %30
  %40 = load i32, i32* @SCFLAG_OCTL, align 4
  %41 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %42 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %46 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bzero(i32 %47, i32 4)
  br label %55

49:                                               ; preds = %20
  %50 = load i32, i32* @SCFLAG_ONORMAL, align 4
  %51 = load %struct.apm_softc*, %struct.apm_softc** %10, align 8
  %52 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %20, %49, %39
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %37, %28, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
