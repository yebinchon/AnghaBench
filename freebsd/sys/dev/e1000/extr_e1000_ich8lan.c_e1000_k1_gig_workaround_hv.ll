; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_gig_workaround_hv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_gig_workaround_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"e1000_k1_gig_workaround_hv\00", align 1
@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_phy_82578 = common dso_local global i64 0, align 8
@BM_CS_STATUS = common dso_local global i32 0, align 4
@BM_CS_STATUS_LINK_UP = common dso_local global i32 0, align 4
@BM_CS_STATUS_RESOLVED = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@e1000_phy_82577 = common dso_local global i64 0, align 8
@HV_M_STATUS = common dso_local global i32 0, align 4
@HV_M_STATUS_LINK_UP = common dso_local global i32 0, align 4
@HV_M_STATUS_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_k1_gig_workaround_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_pchlan, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %23, i64* %3, align 8
  br label %158

24:                                               ; preds = %2
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.3*
  %32 = call i64 %29(%struct.e1000_hw.3* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %3, align 8
  br label %158

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %130

40:                                               ; preds = %37
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @e1000_phy_82578, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %40
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %51, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %54 = bitcast %struct.e1000_hw* %53 to %struct.e1000_hw.2*
  %55 = load i32, i32* @BM_CS_STATUS, align 4
  %56 = call i64 %52(%struct.e1000_hw.2* %54, i32 %55, i32* %7)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %148

60:                                               ; preds = %47
  %61 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %62 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BM_CS_STATUS_SPEED_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %70 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BM_CS_STATUS_SPEED_1000, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %60
  br label %78

78:                                               ; preds = %77, %40
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @e1000_phy_82577, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %78
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %89, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = bitcast %struct.e1000_hw* %91 to %struct.e1000_hw.2*
  %93 = load i32, i32* @HV_M_STATUS, align 4
  %94 = call i64 %90(%struct.e1000_hw.2* %92, i32 %93, i32* %7)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %148

98:                                               ; preds = %85
  %99 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %100 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @HV_M_STATUS_SPEED_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %108 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @HV_M_STATUS_SPEED_1000, align 4
  %111 = or i32 %109, %110
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %98
  br label %116

116:                                              ; preds = %115, %78
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.1*
  %124 = call i32 @PHY_REG(i32 770, i32 19)
  %125 = call i64 %121(%struct.e1000_hw.1* %123, i32 %124, i32 256)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %148

129:                                              ; preds = %116
  br label %144

130:                                              ; preds = %37
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %134, align 8
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %137 = bitcast %struct.e1000_hw* %136 to %struct.e1000_hw.1*
  %138 = call i32 @PHY_REG(i32 770, i32 19)
  %139 = call i64 %135(%struct.e1000_hw.1* %137, i32 %138, i32 16640)
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %6, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %148

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %129
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i64 @e1000_configure_k1_ich8lan(%struct.e1000_hw* %145, i32 %146)
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %144, %142, %128, %97, %59
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %152, align 8
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = bitcast %struct.e1000_hw* %154 to %struct.e1000_hw.0*
  %156 = call i32 %153(%struct.e1000_hw.0* %155)
  %157 = load i64, i64* %6, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %148, %35, %22
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i64 @e1000_configure_k1_ich8lan(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
