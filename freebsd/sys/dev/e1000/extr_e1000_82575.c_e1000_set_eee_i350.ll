; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_eee_i350.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_eee_i350.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_set_eee_i350\00", align 1
@e1000_i350 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_IPCNFG = common dso_local global i32 0, align 4
@E1000_EEER = common dso_local global i32 0, align 4
@E1000_EEE_SU = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_100M_AN = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_1G_AN = common dso_local global i32 0, align 4
@E1000_EEER_TX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_RX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_LPI_FC = common dso_local global i32 0, align 4
@E1000_EEE_SU_LPI_CLK_STP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"LPI Clock Stop Bit should not be set!\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_set_eee_i350(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_i350, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_media_type_copper, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %3
  br label %110

25:                                               ; preds = %17
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = load i32, i32* @E1000_IPCNFG, align 4
  %28 = call i32 @E1000_READ_REG(%struct.e1000_hw* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = load i32, i32* @E1000_EEER, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %25
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = load i32, i32* @E1000_EEE_SU, align 4
  %41 = call i32 @E1000_READ_REG(%struct.e1000_hw* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %67 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @E1000_EEE_SU_LPI_CLK_STP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %65
  br label %95

80:                                               ; preds = %25
  %81 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %82 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %88 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %80, %79
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %97 = load i32, i32* @E1000_IPCNFG, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %96, i32 %97, i32 %98)
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %101 = load i32, i32* @E1000_EEER, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %100, i32 %101, i32 %102)
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %105 = load i32, i32* @E1000_IPCNFG, align 4
  %106 = call i32 @E1000_READ_REG(%struct.e1000_hw* %104, i32 %105)
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %108 = load i32, i32* @E1000_EEER, align 4
  %109 = call i32 @E1000_READ_REG(%struct.e1000_hw* %107, i32 %108)
  br label %110

110:                                              ; preds = %95, %24
  %111 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %111
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
