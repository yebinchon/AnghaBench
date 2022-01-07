; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_mdicnfg_82580.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_mdicnfg_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_6__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"e1000_reset_mdicnfg_82580\00", align 1
@e1000_82580 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL3_PORT_A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_MDICNFG = common dso_local global i32 0, align 4
@NVM_WORD24_EXT_MDIO = common dso_local global i32 0, align 4
@E1000_MDICNFG_EXT_MDIO = common dso_local global i32 0, align 4
@NVM_WORD24_COM_MDIO = common dso_local global i32 0, align 4
@E1000_MDICNFG_COM_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_mdicnfg_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_mdicnfg_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_82580, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i32 @e1000_sgmii_active_82575(%struct.e1000_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %66

20:                                               ; preds = %15
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64 (%struct.e1000_hw.0*, i64, i32, i32*)*, i64 (%struct.e1000_hw.0*, i64, i32, i32*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.0*
  %28 = load i64, i64* @NVM_INIT_CONTROL3_PORT_A, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @NVM_82580_LAN_FUNC_OFFSET(i32 %32)
  %34 = add nsw i64 %28, %33
  %35 = call i64 %25(%struct.e1000_hw.0* %27, i64 %34, i32 1, i32* %5)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %66

40:                                               ; preds = %20
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* @E1000_MDICNFG, align 4
  %43 = call i32 @E1000_READ_REG(%struct.e1000_hw* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NVM_WORD24_EXT_MDIO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @E1000_MDICNFG_EXT_MDIO, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NVM_WORD24_COM_MDIO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @E1000_MDICNFG_COM_MDIO, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_MDICNFG, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %38, %19, %14
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i64 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
