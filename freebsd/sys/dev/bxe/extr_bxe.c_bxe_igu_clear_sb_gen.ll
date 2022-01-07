; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_igu_clear_sb_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_igu_clear_sb_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IGU_REG_COMMAND_REG_32LSB_DATA = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_CTRL = common dso_local global i32 0, align 4
@IGU_REG_CSTORM_TYPE_0_SB_CLEANUP = common dso_local global i32 0, align 4
@IGU_FID_ENCODE_IS_PF_SHIFT = common dso_local global i32 0, align 4
@IGU_CMD_E2_PROD_UPD_BASE = common dso_local global i32 0, align 4
@IGU_USE_REGISTER_cstorm_type_0_sb_cleanup = common dso_local global i32 0, align 4
@IGU_REGULAR_CLEANUP_TYPE_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_CLEANUP_SET = common dso_local global i32 0, align 4
@IGU_REGULAR_BCLEANUP = common dso_local global i32 0, align 4
@IGU_CTRL_REG_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@IGU_CTRL_REG_FID_SHIFT = common dso_local global i32 0, align 4
@IGU_CTRL_CMD_TYPE_WR = common dso_local global i32 0, align 4
@IGU_CTRL_REG_TYPE_SHIFT = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"write 0x%08x to IGU(via GRC) addr 0x%x\0A\00", align 1
@BAR0 = common dso_local global i64 0, align 8
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to finish IGU cleanup: idu_sb_id %d offset %d bit %d (cnt %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32, i32)* @bxe_igu_clear_sb_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_igu_clear_sb_gen(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 100, i32* %11, align 4
  %18 = load i32, i32* @IGU_REG_COMMAND_REG_32LSB_DATA, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @IGU_REG_COMMAND_REG_CTRL, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @IGU_REG_CSTORM_TYPE_0_SB_CLEANUP, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 32
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %25, 32
  %27 = shl i32 1, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = load i32, i32* @IGU_FID_ENCODE_IS_PF_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @IGU_CMD_E2_PROD_UPD_BASE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %40 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %146

43:                                               ; preds = %4
  %44 = load i32, i32* @IGU_USE_REGISTER_cstorm_type_0_sb_cleanup, align 4
  %45 = load i32, i32* @IGU_REGULAR_CLEANUP_TYPE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @IGU_REGULAR_CLEANUP_SET, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IGU_REGULAR_BCLEANUP, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @IGU_CTRL_REG_ADDRESS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @IGU_CTRL_REG_FID_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* @IGU_CTRL_CMD_TYPE_WR, align 4
  %59 = load i32, i32* @IGU_CTRL_REG_TYPE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %63 = load i32, i32* @DBG_LOAD, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, ...) @BLOGD(%struct.bxe_softc* %62, i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @REG_WR(%struct.bxe_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @BAR0, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* @BAR0, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %86 = call i32 @bus_space_barrier(i32 %77, i32 %84, i32 0, i32 0, i32 %85)
  %87 = call i32 (...) @mb()
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %89 = load i32, i32* @DBG_LOAD, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, ...) @BLOGD(%struct.bxe_softc* %88, i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @REG_WR(%struct.bxe_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @BAR0, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %105 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* @BAR0, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %112 = call i32 @bus_space_barrier(i32 %103, i32 %110, i32 0, i32 0, i32 %111)
  %113 = call i32 (...) @mb()
  br label %114

114:                                              ; preds = %127, %43
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @REG_RD(%struct.bxe_softc* %115, i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %121, %114
  %126 = phi i1 [ false, %114 ], [ %124, %121 ]
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = call i32 @DELAY(i32 20000)
  br label %114

129:                                              ; preds = %125
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @REG_RD(%struct.bxe_softc* %130, i32 %131)
  %133 = load i32, i32* %15, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %129
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %138 = load i32, i32* @DBG_LOAD, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sdiv i32 %140, 32
  %142 = load i32, i32* %7, align 4
  %143 = srem i32 %142, 32
  %144 = load i32, i32* %11, align 4
  %145 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, ...) @BLOGD(%struct.bxe_softc* %137, i32 %138, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %42, %136, %129
  ret void
}

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bus_space_barrier(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
