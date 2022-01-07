; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic_softc = type { i32* }

@ATPIC_SLAVE = common dso_local global i64 0, align 8
@ATPIC_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @atpic_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_unmask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atpic_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.atpic_softc* @device_get_softc(i32 %6)
  store %struct.atpic_softc* %7, %struct.atpic_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 8
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %16 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @ATPIC_SLAVE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %14
  store i32 %21, i32* %19, align 4
  %22 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %23 = load i64, i64* @ATPIC_SLAVE, align 8
  %24 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %25 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ATPIC_SLAVE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atpic_write(%struct.atpic_softc* %22, i64 %23, i32 1, i32 %29)
  br label %51

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %36 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @ATPIC_MASTER, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %34
  store i32 %41, i32* %39, align 4
  %42 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %43 = load i64, i64* @ATPIC_MASTER, align 8
  %44 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %45 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @ATPIC_MASTER, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @atpic_write(%struct.atpic_softc* %42, i64 %43, i32 1, i32 %49)
  br label %51

51:                                               ; preds = %31, %10
  ret void
}

declare dso_local %struct.atpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @atpic_write(%struct.atpic_softc*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
