; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_enable_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_intr_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MGB_INTR_STS_ANY = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_VEC_ENBL_SET = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_STS = common dso_local global i32 0, align 4
@MGB_DMAC_INTR_ENBL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mgb_intr_enable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgb_intr_enable_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.mgb_softc* @iflib_get_softc(i32 %9)
  store %struct.mgb_softc* %10, %struct.mgb_softc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  %13 = load i32, i32* @MGB_INTR_STS_ANY, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @MGB_INTR_STS_ANY, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %38, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MGB_INTR_STS_RX(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @MGB_DMAC_RX_INTR_ENBL(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MGB_INTR_RX_VEC_STS(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %43 = load i32, i32* @MGB_INTR_ENBL_SET, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %47 = load i32, i32* @MGB_INTR_VEC_ENBL_SET, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %51 = load i32, i32* @MGB_DMAC_INTR_STS, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %55 = load i32, i32* @MGB_DMAC_INTR_ENBL_SET, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @MGB_INTR_STS_RX(i32) #1

declare dso_local i32 @MGB_DMAC_RX_INTR_ENBL(i32) #1

declare dso_local i32 @MGB_INTR_RX_VEC_STS(i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
