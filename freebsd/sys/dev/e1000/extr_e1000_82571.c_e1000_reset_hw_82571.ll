; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_reset_hw_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_reset_hw_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82571\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EE_RST = common dso_local global i32 0, align 4
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@E1000_EECD_GNT = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_serdes_link_down = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = call i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @E1000_IMC, align 4
  %20 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %18, i32 %19, i32 -1)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @E1000_RCTL, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %21, i32 %22, i32 0)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @E1000_TCTL, align 4
  %26 = call i32 @E1000_READ_REG(%struct.e1000_hw* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @E1000_TCTL_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @E1000_TCTL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %35)
  %37 = call i32 @msec_delay(i32 10)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %45 [
    i32 130, label %42
    i32 129, label %42
    i32 128, label %42
  ]

42:                                               ; preds = %16, %16, %16
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw* %43)
  store i64 %44, i64* %8, align 8
  br label %46

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = load i32, i32* @E1000_CTRL, align 4
  %49 = call i32 @E1000_READ_REG(%struct.e1000_hw* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = load i32, i32* @E1000_CTRL, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @E1000_CTRL_RST, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %51, i32 %52, i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %68 [
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %46, %46, %46
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %69

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = call i32 @usec_delay(i32 10)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = load i32, i32* @E1000_CTRL_EXT, align 4
  %80 = call i32 @E1000_READ_REG(%struct.e1000_hw* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @E1000_CTRL_EXT_EE_RST, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @E1000_CTRL_EXT, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %84, i32 %85, i32 %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %88)
  br label %90

90:                                               ; preds = %76, %69
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = call i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i64, i64* %8, align 8
  store i64 %96, i64* %2, align 8
  br label %156

97:                                               ; preds = %90
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %118 [
    i32 132, label %102
    i32 131, label %102
    i32 130, label %116
    i32 129, label %116
    i32 128, label %116
  ]

102:                                              ; preds = %97, %97
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = load i32, i32* @E1000_EECD, align 4
  %105 = call i32 @E1000_READ_REG(%struct.e1000_hw* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @E1000_EECD_REQ, align 4
  %107 = load i32, i32* @E1000_EECD_GNT, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = load i32, i32* @E1000_EECD, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %112, i32 %113, i32 %114)
  br label %119

116:                                              ; preds = %97, %97, %97
  %117 = call i32 @msec_delay(i32 25)
  br label %119

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118, %116, %102
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = load i32, i32* @E1000_IMC, align 4
  %122 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %120, i32 %121, i32 -1)
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = load i32, i32* @E1000_ICR, align 4
  %125 = call i32 @E1000_READ_REG(%struct.e1000_hw* %123, i32 %124)
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 132
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %132)
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %2, align 8
  br label %156

138:                                              ; preds = %131
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i32 @e1000_set_laa_state_82571(%struct.e1000_hw* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %119
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load i32, i32* @e1000_serdes_link_down, align 4
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %155, i64* %2, align 8
  br label %156

156:                                              ; preds = %154, %136, %95
  %157 = load i64, i64* %2, align 8
  ret i64 %157
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_laa_state_82571(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
