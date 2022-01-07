; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32, i64, i64, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@SCFLAG_OCTL = common dso_local global i32 0, align 4
@SCFLAG_ONORMAL = common dso_local global i32 0, align 4
@SCFLAG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @apmclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmclose(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.apm_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %9, align 8
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = call i32 @dev2unit(%struct.cdev* %10)
  switch i32 %11, label %31 [
    i32 129, label %12
    i32 128, label %24
  ]

12:                                               ; preds = %4
  %13 = call i32 (...) @apm_lastreq_rejected()
  %14 = load i32, i32* @SCFLAG_OCTL, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %17 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %21 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bzero(i32 %22, i32 4)
  br label %31

24:                                               ; preds = %4
  %25 = load i32, i32* @SCFLAG_ONORMAL, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %28 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %4, %24, %12
  %32 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %33 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SCFLAG_OPEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %40 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.apm_softc*, %struct.apm_softc** %9, align 8
  %42 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %31
  ret i32 0
}

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @apm_lastreq_rejected(...) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
