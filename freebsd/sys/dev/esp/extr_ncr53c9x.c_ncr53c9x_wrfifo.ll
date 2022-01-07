; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_wrfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_wrfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@NCR_FIFO = common dso_local global i32 0, align 4
@NCR_VARIANT_FAS366 = common dso_local global i64 0, align 8
@NCR_SHOWMSGS = common dso_local global i32 0, align 4
@ncr53c9x_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*, i32*, i32)* @ncr53c9x_wrfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_wrfifo(%struct.ncr53c9x_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ncr53c9x_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %8, i32 %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %17 = load i32, i32* @NCR_FIFO, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc* %16, i32 %17, i32 %22)
  %24 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NCR_VARIANT_FAS366, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %31 = load i32, i32* @NCR_FIFO, align 4
  %32 = call i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
