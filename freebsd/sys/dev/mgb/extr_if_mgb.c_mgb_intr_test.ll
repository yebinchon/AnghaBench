; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_INTR_STS = common dso_local global i32 0, align 4
@MGB_INTR_STS_TEST = common dso_local global i32 0, align 4
@MGB_INTR_VEC_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_STS_ANY = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_SET = common dso_local global i32 0, align 4
@MGB_TIMEOUT = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*)* @mgb_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_intr_test(%struct.mgb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mgb_softc* %0, %struct.mgb_softc** %3, align 8
  %5 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %8 = load i32, i32* @MGB_INTR_STS, align 4
  %9 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %10 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %12 = load i32, i32* @MGB_INTR_VEC_ENBL_SET, align 4
  %13 = load i32, i32* @MGB_INTR_STS_ANY, align 4
  %14 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %16 = load i32, i32* @MGB_INTR_ENBL_SET, align 4
  %17 = load i32, i32* @MGB_INTR_STS_ANY, align 4
  %18 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %22 = load i32, i32* @MGB_INTR_SET, align 4
  %23 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %24 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MGB_TIMEOUT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = call i32 @DELAY(i32 10)
  %37 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %31

46:                                               ; preds = %41, %31
  %47 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %48 = load i32, i32* @MGB_INTR_ENBL_CLR, align 4
  %49 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %50 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %52 = load i32, i32* @MGB_INTR_STS, align 4
  %53 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %54 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %46, %29
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
