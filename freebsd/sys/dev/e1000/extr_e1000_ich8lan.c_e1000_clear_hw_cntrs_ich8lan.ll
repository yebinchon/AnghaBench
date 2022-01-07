; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_clear_hw_cntrs_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_clear_hw_cntrs_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"e1000_clear_hw_cntrs_ich8lan\00", align 1
@E1000_ALGNERRC = common dso_local global i32 0, align 4
@E1000_RXERRC = common dso_local global i32 0, align 4
@E1000_TNCRS = common dso_local global i32 0, align 4
@E1000_CEXTERR = common dso_local global i32 0, align 4
@E1000_TSCTC = common dso_local global i32 0, align 4
@E1000_TSCTFC = common dso_local global i32 0, align 4
@E1000_MGTPRC = common dso_local global i32 0, align 4
@E1000_MGTPDC = common dso_local global i32 0, align 4
@E1000_MGTPTC = common dso_local global i32 0, align 4
@E1000_IAC = common dso_local global i32 0, align 4
@E1000_ICRXOC = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@e1000_phy_82579 = common dso_local global i64 0, align 8
@e1000_phy_i217 = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
@HV_STATS_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@HV_SCC_UPPER = common dso_local global i32 0, align 4
@HV_SCC_LOWER = common dso_local global i32 0, align 4
@HV_ECOL_UPPER = common dso_local global i32 0, align 4
@HV_ECOL_LOWER = common dso_local global i32 0, align 4
@HV_MCC_UPPER = common dso_local global i32 0, align 4
@HV_MCC_LOWER = common dso_local global i32 0, align 4
@HV_LATECOL_UPPER = common dso_local global i32 0, align 4
@HV_LATECOL_LOWER = common dso_local global i32 0, align 4
@HV_COLC_UPPER = common dso_local global i32 0, align 4
@HV_COLC_LOWER = common dso_local global i32 0, align 4
@HV_DC_UPPER = common dso_local global i32 0, align 4
@HV_DC_LOWER = common dso_local global i32 0, align 4
@HV_TNCRS_UPPER = common dso_local global i32 0, align 4
@HV_TNCRS_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_hw_cntrs_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i32 @e1000_clear_hw_cntrs_base_generic(%struct.e1000_hw* %6)
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_ALGNERRC, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_RXERRC, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_TNCRS, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_CEXTERR, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @E1000_TSCTC, align 4
  %22 = call i32 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = load i32, i32* @E1000_TSCTFC, align 4
  %25 = call i32 @E1000_READ_REG(%struct.e1000_hw* %23, i32 %24)
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = load i32, i32* @E1000_MGTPRC, align 4
  %28 = call i32 @E1000_READ_REG(%struct.e1000_hw* %26, i32 %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = load i32, i32* @E1000_MGTPDC, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = load i32, i32* @E1000_MGTPTC, align 4
  %34 = call i32 @E1000_READ_REG(%struct.e1000_hw* %32, i32 %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @E1000_IAC, align 4
  %37 = call i32 @E1000_READ_REG(%struct.e1000_hw* %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_ICRXOC, align 4
  %40 = call i32 @E1000_READ_REG(%struct.e1000_hw* %38, i32 %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @e1000_phy_82578, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %1
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e1000_phy_82579, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %47
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @e1000_phy_i217, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_phy_82577, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %231

68:                                               ; preds = %61, %54, %47, %1
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.3*
  %76 = call i64 %73(%struct.e1000_hw.3* %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %231

80:                                               ; preds = %68
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %84, align 8
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = bitcast %struct.e1000_hw* %86 to %struct.e1000_hw.2*
  %88 = load i32, i32* @HV_STATS_PAGE, align 4
  %89 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i64 %85(%struct.e1000_hw.2* %87, i32 %90)
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %222

95:                                               ; preds = %80
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %99, align 8
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = bitcast %struct.e1000_hw* %101 to %struct.e1000_hw.1*
  %103 = load i32, i32* @HV_SCC_UPPER, align 4
  %104 = call i32 %100(%struct.e1000_hw.1* %102, i32 %103, i32* %3)
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %108, align 8
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = bitcast %struct.e1000_hw* %110 to %struct.e1000_hw.1*
  %112 = load i32, i32* @HV_SCC_LOWER, align 4
  %113 = call i32 %109(%struct.e1000_hw.1* %111, i32 %112, i32* %3)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %117, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %120 = bitcast %struct.e1000_hw* %119 to %struct.e1000_hw.1*
  %121 = load i32, i32* @HV_ECOL_UPPER, align 4
  %122 = call i32 %118(%struct.e1000_hw.1* %120, i32 %121, i32* %3)
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %126, align 8
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %129 = bitcast %struct.e1000_hw* %128 to %struct.e1000_hw.1*
  %130 = load i32, i32* @HV_ECOL_LOWER, align 4
  %131 = call i32 %127(%struct.e1000_hw.1* %129, i32 %130, i32* %3)
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %135, align 8
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = bitcast %struct.e1000_hw* %137 to %struct.e1000_hw.1*
  %139 = load i32, i32* @HV_MCC_UPPER, align 4
  %140 = call i32 %136(%struct.e1000_hw.1* %138, i32 %139, i32* %3)
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %144, align 8
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %147 = bitcast %struct.e1000_hw* %146 to %struct.e1000_hw.1*
  %148 = load i32, i32* @HV_MCC_LOWER, align 4
  %149 = call i32 %145(%struct.e1000_hw.1* %147, i32 %148, i32* %3)
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %153, align 8
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %156 = bitcast %struct.e1000_hw* %155 to %struct.e1000_hw.1*
  %157 = load i32, i32* @HV_LATECOL_UPPER, align 4
  %158 = call i32 %154(%struct.e1000_hw.1* %156, i32 %157, i32* %3)
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.1*
  %166 = load i32, i32* @HV_LATECOL_LOWER, align 4
  %167 = call i32 %163(%struct.e1000_hw.1* %165, i32 %166, i32* %3)
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %169 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %171, align 8
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %174 = bitcast %struct.e1000_hw* %173 to %struct.e1000_hw.1*
  %175 = load i32, i32* @HV_COLC_UPPER, align 4
  %176 = call i32 %172(%struct.e1000_hw.1* %174, i32 %175, i32* %3)
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %180, align 8
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %183 = bitcast %struct.e1000_hw* %182 to %struct.e1000_hw.1*
  %184 = load i32, i32* @HV_COLC_LOWER, align 4
  %185 = call i32 %181(%struct.e1000_hw.1* %183, i32 %184, i32* %3)
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %189, align 8
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %192 = bitcast %struct.e1000_hw* %191 to %struct.e1000_hw.1*
  %193 = load i32, i32* @HV_DC_UPPER, align 4
  %194 = call i32 %190(%struct.e1000_hw.1* %192, i32 %193, i32* %3)
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %196 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %198, align 8
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %201 = bitcast %struct.e1000_hw* %200 to %struct.e1000_hw.1*
  %202 = load i32, i32* @HV_DC_LOWER, align 4
  %203 = call i32 %199(%struct.e1000_hw.1* %201, i32 %202, i32* %3)
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %207, align 8
  %209 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %210 = bitcast %struct.e1000_hw* %209 to %struct.e1000_hw.1*
  %211 = load i32, i32* @HV_TNCRS_UPPER, align 4
  %212 = call i32 %208(%struct.e1000_hw.1* %210, i32 %211, i32* %3)
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %214 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %216, align 8
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %219 = bitcast %struct.e1000_hw* %218 to %struct.e1000_hw.1*
  %220 = load i32, i32* @HV_TNCRS_LOWER, align 4
  %221 = call i32 %217(%struct.e1000_hw.1* %219, i32 %220, i32* %3)
  br label %222

222:                                              ; preds = %95, %94
  %223 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %224 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %226, align 8
  %228 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %229 = bitcast %struct.e1000_hw* %228 to %struct.e1000_hw.0*
  %230 = call i32 %227(%struct.e1000_hw.0* %229)
  br label %231

231:                                              ; preds = %79, %222, %61
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_base_generic(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
