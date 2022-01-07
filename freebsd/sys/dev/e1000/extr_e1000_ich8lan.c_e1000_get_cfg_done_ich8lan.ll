; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_get_cfg_done_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_get_cfg_done_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"e1000_get_cfg_done_ich8lan\00", align 1
@e1000_ich10lan = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_PHYRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PHY Reset Asserted not set - needs delay\0A\00", align 1
@e1000_ich9lan = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"EEPROM not present\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_get_cfg_done_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_cfg_done_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = call i32 @e1000_get_cfg_done_generic(%struct.e1000_hw* %8)
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_ich10lan, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = call i32 @e1000_lan_init_done_ich8lan(%struct.e1000_hw* %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i32 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = load i32, i32* @E1000_STATUS, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @E1000_STATUS_PHYRA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_STATUS, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @E1000_STATUS_PHYRA, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %37, i32 %38, i32 %42)
  br label %46

44:                                               ; preds = %28
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_ich9lan, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = load i32, i32* @E1000_EECD, align 4
  %56 = call i32 @E1000_READ_REG(%struct.e1000_hw* %54, i32 %55)
  %57 = load i32, i32* @E1000_EECD_PRES, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_phy_igp_3, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = call i32 @e1000_phy_init_script_igp3(%struct.e1000_hw* %68)
  br label %70

70:                                               ; preds = %67, %60, %53
  br label %80

71:                                               ; preds = %46
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = call i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %72, i32* %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_get_cfg_done_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_lan_init_done_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_get_auto_rd_done_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_phy_init_script_igp3(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
