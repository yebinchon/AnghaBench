; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"controller timeout, rint %#x stat %#x\0A\00", align 1
@JZ_MSC_IFLG = common dso_local global i32 0, align 4
@JZ_MSC_STAT = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Spurious timeout - no active request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jz4780_mmc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jz4780_mmc_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.jz4780_mmc_softc*
  store %struct.jz4780_mmc_softc* %5, %struct.jz4780_mmc_softc** %3, align 8
  %6 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %15 = load i32, i32* @JZ_MSC_IFLG, align 4
  %16 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %14, i32 %15)
  %17 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %18 = load i32, i32* @JZ_MSC_STAT, align 4
  %19 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %17, i32 %18)
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  %22 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %21, i32* %27, align 4
  %28 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %29 = call i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc* %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
