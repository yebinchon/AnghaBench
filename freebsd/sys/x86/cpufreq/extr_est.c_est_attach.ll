; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.est_softc = type { i32 }

@strict = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @est_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.est_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.est_softc* @device_get_softc(i32 %5)
  store %struct.est_softc* %6, %struct.est_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %9 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @strict, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @mp_ncpus, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* @strict, align 4
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @est_get_info(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @cpufreq_register(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.est_softc* @device_get_softc(i32) #1

declare dso_local i64 @est_get_info(i32) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
