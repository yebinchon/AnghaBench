; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_phy_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_phy_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MTD803ID = common dso_local global i64 0, align 8
@MY_PHYBASE = common dso_local global i64 0, align 8
@MY_OP_READ = common dso_local global i32 0, align 4
@MY_MASK_MIIR_MII_MDC = common dso_local global i64 0, align 8
@MY_MANAGEMENT = common dso_local global i32 0, align 4
@MY_MASK_MIIR_MII_MDI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.my_softc*, i32)* @my_phy_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_phy_readreg(%struct.my_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %9 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %8)
  %10 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %11 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MTD803ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %19 = load i64, i64* @MY_PHYBASE, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @CSR_READ_2(%struct.my_softc* %18, i64 %23)
  store i32 %24, i32* %7, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %27 = load i32, i32* @MY_OP_READ, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @my_send_cmd_to_phy(%struct.my_softc* %26, i32 %27, i32 %28)
  store i64 %29, i64* %5, align 8
  store i32 32768, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %53, %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %39 = load i32, i32* @MY_MANAGEMENT, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @CSR_WRITE_4(%struct.my_softc* %38, i32 %39, i64 %40)
  %42 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %43 = load i32, i32* @MY_MANAGEMENT, align 4
  %44 = call i64 @CSR_READ_4(%struct.my_softc* %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MY_MASK_MIIR_MII_MDI, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %33
  %54 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %55 = load i64, i64* %5, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %58 = load i32, i32* @MY_MANAGEMENT, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @CSR_WRITE_4(%struct.my_softc* %57, i32 %58, i64 %59)
  %61 = call i32 @DELAY(i32 30)
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %5, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %5, align 8
  %69 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %70 = load i32, i32* @MY_MANAGEMENT, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @CSR_WRITE_4(%struct.my_softc* %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %64, %17
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.my_softc*, i64) #1

declare dso_local i64 @my_send_cmd_to_phy(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i64) #1

declare dso_local i64 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
