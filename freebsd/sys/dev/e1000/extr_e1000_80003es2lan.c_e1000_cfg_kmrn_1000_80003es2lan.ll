; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_cfg_kmrn_1000_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_cfg_kmrn_1000_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_configure_kmrn_for_1000\00", align 1
@E1000_KMRNCTRLSTA_HD_CTRL_1000_DEFAULT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_HD_CTRL = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i64 0, align 8
@DEFAULT_TIPG_IPGT_1000_80003ES2LAN = common dso_local global i64 0, align 8
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_MAX_KMRN_RETRY = common dso_local global i64 0, align 8
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_cfg_kmrn_1000_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_cfg_kmrn_1000_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %8, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @E1000_KMRNCTRLSTA_HD_CTRL_1000_DEFAULT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_HD_CTRL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %11, i32 %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @E1000_TIPG, align 4
  %22 = call i64 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @E1000_TIPG_IPGT_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @DEFAULT_TIPG_IPGT_1000_80003ES2LAN, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @E1000_TIPG, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %73, %19
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.1*
  %42 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %43 = call i64 %39(%struct.e1000_hw.1* %41, i32 %42, i32* %5)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %90

48:                                               ; preds = %34
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.1*
  %56 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %57 = call i64 %53(%struct.e1000_hw.1* %55, i32 %56, i32* %6)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %90

62:                                               ; preds = %48
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @GG82563_MAX_KMRN_RETRY, align 8
  %72 = icmp slt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %34, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* @GG82563_KMCR_PASS_FALSE_CARRIER, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.0*
  %87 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 %84(%struct.e1000_hw.0* %86, i32 %87, i32 %88)
  store i64 %89, i64* %2, align 8
  br label %90

90:                                               ; preds = %75, %60, %46, %17
  %91 = load i64, i64* %2, align 8
  ret i64 %91
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
