; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_mips_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_mips_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bcm_mips_softc* @device_get_softc(i32 %6)
  store %struct.bcm_mips_softc* %7, %struct.bcm_mips_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @intr_pic_deregister(i32 %8, i32 0)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i64 @nitems(%struct.TYPE_2__* %14)
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @intr_isrc_deregister(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %10

28:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %37 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @bcm_mips_fini_cpuirq(%struct.bcm_mips_softc* %36, i32* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %29

46:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.bcm_mips_softc* @device_get_softc(i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i32) #1

declare dso_local i64 @nitems(%struct.TYPE_2__*) #1

declare dso_local i32 @intr_isrc_deregister(i32*) #1

declare dso_local i32 @bcm_mips_fini_cpuirq(%struct.bcm_mips_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
