; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_cfg_kmrn_10_100_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_cfg_kmrn_10_100_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i64)*, i64 (%struct.e1000_hw.1*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_configure_kmrn_for_10_100\00", align 1
@E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT = common dso_local global i64 0, align 8
@E1000_KMRNCTRLSTA_OFFSET_HD_CTRL = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i64 0, align 8
@DEFAULT_TIPG_IPGT_10_100_80003ES2LAN = common dso_local global i64 0, align 8
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_MAX_KMRN_RETRY = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_cfg_kmrn_10_100_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_cfg_kmrn_10_100_80003es2lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_HD_CTRL, align 4
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %13, i32 %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = load i32, i32* @E1000_TIPG, align 4
  %24 = call i64 @E1000_READ_REG(%struct.e1000_hw* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* @E1000_TIPG_IPGT_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @DEFAULT_TIPG_IPGT_10_100_80003ES2LAN, align 8
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = load i32, i32* @E1000_TIPG, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %32, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %75, %21
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64 (%struct.e1000_hw.1*, i32, i64*)*, i64 (%struct.e1000_hw.1*, i32, i64*)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.1*
  %44 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %45 = call i64 %41(%struct.e1000_hw.1* %43, i32 %44, i64* %9)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %101

50:                                               ; preds = %36
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64 (%struct.e1000_hw.1*, i32, i64*)*, i64 (%struct.e1000_hw.1*, i32, i64*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %59 = call i64 %55(%struct.e1000_hw.1* %57, i32 %58, i64* %10)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %101

64:                                               ; preds = %50
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @GG82563_MAX_KMRN_RETRY, align 8
  %74 = icmp slt i64 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %36, label %77

77:                                               ; preds = %75
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @HALF_DUPLEX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* @GG82563_KMCR_PASS_FALSE_CARRIER, align 8
  %83 = load i64, i64* %9, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %9, align 8
  br label %90

85:                                               ; preds = %77
  %86 = load i64, i64* @GG82563_KMCR_PASS_FALSE_CARRIER, align 8
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %9, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64 (%struct.e1000_hw.0*, i32, i64)*, i64 (%struct.e1000_hw.0*, i32, i64)** %94, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %97 = bitcast %struct.e1000_hw* %96 to %struct.e1000_hw.0*
  %98 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i64 %95(%struct.e1000_hw.0* %97, i32 %98, i64 %99)
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %90, %62, %48, %19
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i64) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
