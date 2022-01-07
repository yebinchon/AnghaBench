; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.est_softc = type { i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @est_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.est_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpufreq_unregister(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.est_softc* @device_get_softc(i32 %13)
  store %struct.est_softc* %14, %struct.est_softc** %4, align 8
  %15 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %16 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %21 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %12
  %25 = load %struct.est_softc*, %struct.est_softc** %4, align 8
  %26 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @free(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @cpufreq_unregister(i32) #1

declare dso_local %struct.est_softc* @device_get_softc(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
