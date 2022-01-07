; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_send_cmd_to_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_send_cmd_to_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32 }

@MY_MANAGEMENT = common dso_local global i32 0, align 4
@MY_MASK_MIIR_MII_WRITE = common dso_local global i64 0, align 8
@MY_MASK_MIIR_MII_MDO = common dso_local global i64 0, align 8
@MY_MASK_MIIR_MII_MDC = common dso_local global i64 0, align 8
@MY_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.my_softc*, i32, i32)* @my_send_cmd_to_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @my_send_cmd_to_phy(%struct.my_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.my_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %12 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %11)
  %13 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %14 = load i32, i32* @MY_MANAGEMENT, align 4
  %15 = call i64 @CSR_READ_4(%struct.my_softc* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 4294967280
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* @MY_MASK_MIIR_MII_WRITE, align 8
  %19 = load i64, i64* @MY_MASK_MIIR_MII_MDO, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %42, %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %32 = load i32, i32* @MY_MANAGEMENT, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @CSR_WRITE_4(%struct.my_softc* %31, i32 %32, i64 %33)
  %35 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %39 = load i32, i32* @MY_MANAGEMENT, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @CSR_WRITE_4(%struct.my_softc* %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %48 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 7
  %51 = or i32 %46, %50
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 2
  %54 = or i32 %51, %53
  store i32 %54, i32* %10, align 4
  store i32 32768, i32* %9, align 4
  br label %55

55:                                               ; preds = %99, %45
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %60 = load i64, i64* @MY_MASK_MIIR_MII_MDO, align 8
  %61 = add nsw i64 %59, %60
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i64, i64* @MY_MASK_MIIR_MII_MDO, align 8
  %71 = load i64, i64* %7, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %75 = load i32, i32* @MY_MANAGEMENT, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @CSR_WRITE_4(%struct.my_softc* %74, i32 %75, i64 %76)
  %78 = load i64, i64* @MY_MASK_MIIR_MII_MDC, align 8
  %79 = load i64, i64* %7, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %82 = load i32, i32* @MY_MANAGEMENT, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @CSR_WRITE_4(%struct.my_softc* %81, i32 %82, i64 %83)
  %85 = call i32 @DELAY(i32 30)
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %99

90:                                               ; preds = %73
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MY_OP_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i64, i64* @MY_MASK_MIIR_MII_WRITE, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %7, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %94, %90, %73
  br label %55

100:                                              ; preds = %55
  %101 = load i64, i64* %7, align 8
  ret i64 %101
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i64 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
