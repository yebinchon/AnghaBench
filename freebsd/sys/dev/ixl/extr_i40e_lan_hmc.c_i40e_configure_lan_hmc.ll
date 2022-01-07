; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_configure_lan_hmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_configure_lan_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40e_hmc_obj_info*, i32 }
%struct.i40e_hmc_obj_info = type { i32, i32, i32 }
%struct.i40e_hmc_lan_create_obj_info = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_HMC_LAN_FULL = common dso_local global i64 0, align 8
@I40E_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@I40E_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"i40e_configure_lan_hmc: Unknown SD type: %d\0A\00", align 1
@I40E_HMC_LAN_TX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_LAN_RX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_FCOE_CTX = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_FCOE_FILT = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_configure_lan_hmc(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hmc_lan_create_obj_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hmc_obj_info*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 5
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %16, align 8
  %17 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %18 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %22, align 8
  %24 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %25 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %23, i64 %24
  %26 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %62 [
    i32 129, label %30
    i32 130, label %30
    i32 128, label %50
  ]

30:                                               ; preds = %2, %2
  %31 = load i32, i32* @I40E_SD_TYPE_DIRECT, align 4
  %32 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = call i32 @i40e_create_lan_hmc_object(%struct.i40e_hw* %34, %struct.i40e_hmc_lan_create_obj_info* %5)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @I40E_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %51

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @I40E_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %159

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  br label %66

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* @I40E_SD_TYPE_PAGED, align 4
  %53 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %56 = call i32 @i40e_create_lan_hmc_object(%struct.i40e_hw* %55, %struct.i40e_hmc_lan_create_obj_info* %5)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @I40E_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %159

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %2
  %63 = load i32, i32* @I40E_ERR_INVALID_SD_TYPE, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %159

66:                                               ; preds = %61, %49
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %69, align 8
  %71 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %72 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %70, i64 %71
  store %struct.i40e_hmc_obj_info* %72, %struct.i40e_hmc_obj_info** %7, align 8
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @I40E_GLHMC_LANTXBASE(i32 %74)
  %76 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %77 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = sdiv i32 %80, 512
  %82 = call i32 @wr32(%struct.i40e_hw* %73, i32 %75, i32 %81)
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @I40E_GLHMC_LANTXCNT(i32 %84)
  %86 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %87 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wr32(%struct.i40e_hw* %83, i32 %85, i32 %88)
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %92, align 8
  %94 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %93, i64 %94
  store %struct.i40e_hmc_obj_info* %95, %struct.i40e_hmc_obj_info** %7, align 8
  %96 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @I40E_GLHMC_LANRXBASE(i32 %97)
  %99 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %100 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK, align 4
  %103 = and i32 %101, %102
  %104 = sdiv i32 %103, 512
  %105 = call i32 @wr32(%struct.i40e_hw* %96, i32 %98, i32 %104)
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @I40E_GLHMC_LANRXCNT(i32 %107)
  %109 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %110 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @wr32(%struct.i40e_hw* %106, i32 %108, i32 %111)
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %114 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %115, align 8
  %117 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %118 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %116, i64 %117
  store %struct.i40e_hmc_obj_info* %118, %struct.i40e_hmc_obj_info** %7, align 8
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @I40E_GLHMC_FCOEDDPBASE(i32 %120)
  %122 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %123 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = sdiv i32 %126, 512
  %128 = call i32 @wr32(%struct.i40e_hw* %119, i32 %121, i32 %127)
  %129 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @I40E_GLHMC_FCOEDDPCNT(i32 %130)
  %132 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %133 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wr32(%struct.i40e_hw* %129, i32 %131, i32 %134)
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %137 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %138, align 8
  %140 = load i64, i64* @I40E_HMC_FCOE_FILT, align 8
  %141 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %139, i64 %140
  store %struct.i40e_hmc_obj_info* %141, %struct.i40e_hmc_obj_info** %7, align 8
  %142 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @I40E_GLHMC_FCOEFBASE(i32 %143)
  %145 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %146 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK, align 4
  %149 = and i32 %147, %148
  %150 = sdiv i32 %149, 512
  %151 = call i32 @wr32(%struct.i40e_hw* %142, i32 %144, i32 %150)
  %152 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @I40E_GLHMC_FCOEFCNT(i32 %153)
  %155 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %7, align 8
  %156 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @wr32(%struct.i40e_hw* %152, i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %66, %62, %60, %47
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local i32 @i40e_create_lan_hmc_object(%struct.i40e_hw*, %struct.i40e_hmc_lan_create_obj_info*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLHMC_LANTXBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_LANTXCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_LANRXBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_LANRXCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEDDPBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEDDPCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEFBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEFCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
