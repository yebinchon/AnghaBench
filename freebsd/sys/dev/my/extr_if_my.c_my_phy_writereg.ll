; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_phy_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_phy_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MTD803ID = common dso_local global i64 0, align 8
@MY_PHYBASE = common dso_local global i64 0, align 8
@MY_OP_WRITE = common dso_local global i32 0, align 4
@MY_MASK_MIIR_MII_MDC = common dso_local global i64 0, align 8
@MY_MASK_MIIR_MII_MDO = common dso_local global i64 0, align 8
@MY_MANAGEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*, i32, i32)* @my_phy_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_phy_writereg(%struct.my_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.my_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %10 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %9)
  %11 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %12 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MTD803ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %20 = load i64, i64* @MY_PHYBASE, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @CSR_WRITE_2(%struct.my_softc* %19, i64 %24, i32 %25)
  br label %75

27:                                               ; preds = %3
  %28 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %29 = load i32, i32* @MY_OP_WRITE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @my_send_cmd_to_phy(%struct.my_softc* %28, i32 %29, i32 %30)
  store i64 %31, i64* %7, align 8
  store i32 32768, i32* %8, align 4
  br label %32

32:                                               ; preds = %50, %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %37 = load i64, i64* @MY_MASK_MIIR_MII_MDO, align 8
  %38 = add nsw i64 %36, %37
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i64, i64* @MY_MASK_MIIR_MII_MDO, align 8
  %48 = load i64, i64* %7, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %52 = load i32, i32* @MY_MANAGEMENT, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @CSR_WRITE_4(%struct.my_softc* %51, i32 %52, i64 %53)
  %55 = call i32 @DELAY(i32 1)
  %56 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %60 = load i32, i32* @MY_MANAGEMENT, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @CSR_WRITE_4(%struct.my_softc* %59, i32 %60, i64 %61)
  %63 = call i32 @DELAY(i32 1)
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %7, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %72 = load i32, i32* @MY_MANAGEMENT, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @CSR_WRITE_4(%struct.my_softc* %71, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %66, %18
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.my_softc*, i64, i32) #1

declare dso_local i64 @my_send_cmd_to_phy(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
