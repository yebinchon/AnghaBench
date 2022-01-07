; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32, i64 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @apmpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmpoll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.apm_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @POLLIN, align 4
  %11 = load i32, i32* @POLLRDNORM, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.apm_softc*, %struct.apm_softc** %7, align 8
  %17 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = load i32, i32* @POLLRDNORM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.thread*, %struct.thread** %6, align 8
  %30 = load %struct.apm_softc*, %struct.apm_softc** %7, align 8
  %31 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %30, i32 0, i32 0
  %32 = call i32 @selrecord(%struct.thread* %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
