; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.h_bxe_hc_ack_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.h_bxe_hc_ack_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.igu_ack_register = type { i32, i32 }

@HC_REG_COMMAND_REG = common dso_local global i64 0, align 8
@COMMAND_REG_INT_ACK = common dso_local global i64 0, align 8
@IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_STORM_ID_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32, i32, i32, i32)* @bxe_hc_ack_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_hc_ack_sb(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.igu_ack_register, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* @HC_REG_COMMAND_REG, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %17 = call i32 @SC_PORT(%struct.bxe_softc* %16)
  %18 = mul nsw i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load i64, i64* @COMMAND_REG_INT_ACK, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.igu_ack_register, %struct.igu_ack_register* %14, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IGU_ACK_REGISTER_STORM_ID_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.igu_ack_register, %struct.igu_ack_register* %14, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = bitcast %struct.igu_ack_register* %14 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = call i32 @REG_WR(%struct.bxe_softc* %41, i64 %42, i64 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %53 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %59 = call i32 @bus_space_barrier(i32 %51, i32 %57, i32 0, i32 0, i32 %58)
  %60 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i64) #1

declare dso_local i32 @bus_space_barrier(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
