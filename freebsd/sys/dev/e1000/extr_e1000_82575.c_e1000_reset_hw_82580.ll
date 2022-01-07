; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_hw_82580.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_hw_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.1*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_SW_SYNCH_MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82580\00", align 1
@FALSE = common dso_local global i8* null, align 8
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STAT_DEV_RST_SET = common dso_local global i32 0, align 4
@E1000_CTRL_DEV_RST = common dso_local global i32 0, align 4
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@E1000_ICR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not reset MDICNFG based on EEPROM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @E1000_SW_SYNCH_MB, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @FALSE, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_82580, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** @FALSE, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_CTRL, align 4
  %33 = call i32 @E1000_READ_REG(%struct.e1000_hw* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i32, i32* @E1000_IMC, align 4
  %44 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %42, i32 %43, i32 -1)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = load i32, i32* @E1000_RCTL, align 4
  %47 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %45, i32 %46, i32 0)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @E1000_TCTL, align 4
  %50 = load i32, i32* @E1000_TCTL_PSP, align 4
  %51 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %48, i32 %49, i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %52)
  %54 = call i32 @msec_delay(i32 10)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %40
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64 (%struct.e1000_hw.1*, i32)*, i64 (%struct.e1000_hw.1*, i32)** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = bitcast %struct.e1000_hw* %63 to %struct.e1000_hw.1*
  %65 = load i32, i32* %4, align 4
  %66 = call i64 %62(%struct.e1000_hw.1* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i8*, i8** @FALSE, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %57, %40
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = load i32, i32* @E1000_STATUS, align 4
  %77 = call i32 @E1000_READ_REG(%struct.e1000_hw* %75, i32 %76)
  %78 = load i32, i32* @E1000_STAT_DEV_RST_SET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @E1000_CTRL_DEV_RST, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %89

85:                                               ; preds = %74, %71
  %86 = load i32, i32* @E1000_CTRL_RST, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = load i32, i32* @E1000_CTRL, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %98 [
    i32 128, label %97
  ]

97:                                               ; preds = %89
  br label %101

98:                                               ; preds = %89
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %100 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %99)
  br label %101

101:                                              ; preds = %98, %97
  %102 = call i32 @msec_delay(i32 5)
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = call i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %103)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %101
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = load i32, i32* @E1000_STATUS, align 4
  %112 = load i32, i32* @E1000_STAT_DEV_RST_SET, align 4
  %113 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %110, i32 %111, i32 %112)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i32, i32* @E1000_IMC, align 4
  %116 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %114, i32 %115, i32 -1)
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %118 = load i32, i32* @E1000_ICR, align 4
  %119 = call i32 @E1000_READ_REG(%struct.e1000_hw* %117, i32 %118)
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = call i64 @e1000_reset_mdicnfg_82580(%struct.e1000_hw* %120)
  store i64 %121, i64* %3, align 8
  %122 = load i64, i64* %3, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %109
  %125 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %109
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %128 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %127)
  store i64 %128, i64* %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.0*, i32)** %135, align 8
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = bitcast %struct.e1000_hw* %137 to %struct.e1000_hw.0*
  %139 = load i32, i32* %4, align 4
  %140 = call i32 %136(%struct.e1000_hw.0* %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %126
  %142 = load i64, i64* %3, align 8
  ret i64 %142
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_reset_mdicnfg_82580(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
