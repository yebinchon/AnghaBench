; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32*, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_MODE = common dso_local global i32 0, align 4
@EMAC_MODE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EMAC reset reg is %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"EMAC timeout!\0A\00", align 1
@EMAC_REG_EMAC_MAC_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*)* @elink_emac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_emac_init(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 2
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %5, align 8
  %13 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %25 = load i64, i64* @GRCBASE_MISC, align 8
  %26 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @REG_WR(%struct.bxe_softc* %24, i64 %27, i32 %30)
  %32 = call i32 @DELAY(i32 5)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %34 = load i64, i64* @GRCBASE_MISC, align 8
  %35 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @REG_WR(%struct.bxe_softc* %33, i64 %36, i32 %39)
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @REG_RD(%struct.bxe_softc* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EMAC_MODE_RESET, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %46, i32 %49, i32 %52)
  store i32 200, i32* %9, align 4
  br label %54

54:                                               ; preds = %71, %22
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @REG_RD(%struct.bxe_softc* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %67 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %131

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @EMAC_MODE_RESET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %54, label %76

76:                                               ; preds = %71
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %78 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %79 = call i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc* %77, %struct.elink_params* %78)
  %80 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %81 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %87 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %85, %90
  store i32 %91, i32* %8, align 4
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %92, i32 %95, i32 %96)
  %98 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %99 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 24
  %104 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %105 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 16
  %110 = or i32 %103, %109
  %111 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %112 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = or i32 %110, %116
  %118 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %119 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %117, %122
  store i32 %123, i32* %8, align 4
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %127 = add nsw i32 %125, %126
  %128 = add nsw i32 %127, 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %124, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %76, %65
  ret void
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_cb_reg_write(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc*, %struct.elink_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
