; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_mii_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_mii_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@TSEC_REG_MIIMIND = common dso_local global i32 0, align 4
@TSEC_READ_RETRY = common dso_local global i32 0, align 4
@TSEC_READ_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsec_softc*, i32)* @tsec_mii_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_mii_wait(%struct.tsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %7 = load i32, i32* @TSEC_REG_MIIMIND, align 4
  %8 = call i32 @TSEC_PHY_READ(%struct.tsec_softc* %6, i32 %7)
  %9 = load i32, i32* @TSEC_READ_RETRY, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = load i32, i32* @TSEC_REG_MIIMIND, align 4
  %13 = call i32 @TSEC_PHY_READ(%struct.tsec_softc* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i1 [ false, %10 ], [ %20, %17 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* @TSEC_READ_DELAY, align 4
  %25 = call i32 @DELAY(i32 %24)
  br label %10

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @TSEC_PHY_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
