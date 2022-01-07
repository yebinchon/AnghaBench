; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_req_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_req_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_mmc_softc*)* @jz4780_mmc_req_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_req_ok(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca %struct.jz4780_mmc_softc*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %2, align 8
  %4 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  store %struct.mmc_command* %8, %struct.mmc_command** %3, align 8
  %9 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 2
  %18 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* @MMC_ERR_FAILED, align 4
  %26 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %13, %1
  %29 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %30 = call i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc* %29)
  ret void
}

declare dso_local i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
