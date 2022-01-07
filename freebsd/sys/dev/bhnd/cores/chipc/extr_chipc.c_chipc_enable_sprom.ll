; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_enable_sprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_enable_sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chipc_enable_sprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_enable_sprom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chipc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.chipc_softc* @device_get_softc(i32 %6)
  store %struct.chipc_softc* %7, %struct.chipc_softc** %4, align 8
  %8 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %9 = call i32 @CHIPC_LOCK(%struct.chipc_softc* %8)
  %10 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %20 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %19)
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %21
  %27 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %28 = call i32 @chipc_enable_sprom_pins(%struct.chipc_softc* %27)
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %31 = call i32 @chipc_enable_otp_power(%struct.chipc_softc* %30)
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %43 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local i32 @CHIPC_LOCK(%struct.chipc_softc*) #1

declare dso_local i32 @CHIPC_UNLOCK(%struct.chipc_softc*) #1

declare dso_local i32 @chipc_enable_sprom_pins(%struct.chipc_softc*) #1

declare dso_local i32 @chipc_enable_otp_power(%struct.chipc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
