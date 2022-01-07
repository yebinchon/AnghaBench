; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_cmd_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_cmd_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_GCR_CMDRING = common dso_local global i64 0, align 8
@TI_CMD_RING_CNT = common dso_local global i32 0, align 4
@TI_MB_CMDPROD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*, %struct.ti_cmd_desc*, i32*, i32)* @ti_cmd_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_cmd_ext(%struct.ti_softc* %0, %struct.ti_cmd_desc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ti_softc*, align 8
  %6 = alloca %struct.ti_cmd_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %5, align 8
  store %struct.ti_cmd_desc* %1, %struct.ti_cmd_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %15 = load i64, i64* @TI_GCR_CMDRING, align 8
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = load %struct.ti_cmd_desc*, %struct.ti_cmd_desc** %6, align 8
  %21 = bitcast %struct.ti_cmd_desc* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.ti_softc* %14, i64 %19, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @TI_CMD_RING_CNT, align 4
  %26 = call i32 @TI_INC(i32 %24, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %48, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %33 = load i64, i64* @TI_GCR_CMDRING, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.ti_softc* %32, i64 %37, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @TI_CMD_RING_CNT, align 4
  %47 = call i32 @TI_INC(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %53 = load i64, i64* @TI_MB_CMDPROD_IDX, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @CSR_WRITE_4(%struct.ti_softc* %52, i64 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i64, i32) #1

declare dso_local i32 @TI_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
