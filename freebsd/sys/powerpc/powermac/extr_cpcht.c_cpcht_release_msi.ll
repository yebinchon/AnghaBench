; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcht_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @cpcht_release_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcht_release_msi(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cpcht_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cpcht_softc* @device_get_softc(i32 %11)
  store %struct.cpcht_softc* %12, %struct.cpcht_softc** %9, align 8
  %13 = load %struct.cpcht_softc*, %struct.cpcht_softc** %9, align 8
  %14 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %34, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* @IRQ_NONE, align 4
  %22 = load %struct.cpcht_softc*, %struct.cpcht_softc** %9, align 8
  %23 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %21, i32* %33, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.cpcht_softc*, %struct.cpcht_softc** %9, align 8
  %39 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  ret i32 0
}

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
