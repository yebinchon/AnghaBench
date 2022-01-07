; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"setting link speed & duplex\0A\00", align 1
@GRCBASE_EMAC0 = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_MODE = common dso_local global i64 0, align 8
@EMAC_MODE_25G_MODE = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_MII_10M = common dso_local global i32 0, align 4
@EMAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_MII = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid line_speed 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@ELINK_LED_MODE_OPER = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*)* @elink_emac_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_emac_program(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %6, align 8
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %16 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %18 = load i64, i64* @GRCBASE_EMAC0, align 8
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 1024
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @EMAC_REG_EMAC_MODE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @EMAC_MODE_25G_MODE, align 4
  %26 = load i32, i32* @EMAC_MODE_PORT_MII_10M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @EMAC_MODE_HALF_DUPLEX, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @elink_bits_dis(%struct.bxe_softc* %17, i64 %24, i32 %29)
  %31 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %32 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %52 [
    i32 131, label %34
    i32 130, label %38
    i32 129, label %42
    i32 128, label %46
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @EMAC_MODE_PORT_MII_10M, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %59

38:                                               ; preds = %2
  %39 = load i32, i32* @EMAC_MODE_PORT_MII, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %59

42:                                               ; preds = %2
  %43 = load i32, i32* @EMAC_MODE_PORT_GMII, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %59

46:                                               ; preds = %2
  %47 = load i32, i32* @EMAC_MODE_25G_MODE, align 4
  %48 = load i32, i32* @EMAC_MODE_PORT_GMII, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %2
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %54 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %55 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %46, %42, %38, %34
  %60 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %61 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DUPLEX_HALF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @EMAC_MODE_HALF_DUPLEX, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %71 = load i64, i64* @GRCBASE_EMAC0, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 1024
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i64, i64* @EMAC_REG_EMAC_MODE, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @elink_bits_en(%struct.bxe_softc* %70, i64 %77, i32 %78)
  %80 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %81 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %82 = load i32, i32* @ELINK_LED_MODE_OPER, align 4
  %83 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %84 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @elink_set_led(%struct.elink_params* %80, %struct.elink_vars* %81, i32 %82, i32 %85)
  %87 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %69, %52
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
