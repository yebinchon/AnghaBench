; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_check_for_link_media_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_check_for_link_media_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.e1000_phy_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_check_for_link_media_swap\00", align 1
@E1000_M88E1112_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1112_STATUS = common dso_local global i32 0, align 4
@E1000_M88E1112_STATUS_LINK = common dso_local global i32 0, align 4
@E1000_MEDIA_PORT_COPPER = common dso_local global i64 0, align 8
@E1000_MEDIA_PORT_OTHER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_for_link_media_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_for_link_media_swap(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %13, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = bitcast %struct.e1000_hw* %15 to %struct.e1000_hw.0*
  %17 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %18 = call i64 %14(%struct.e1000_hw.0* %16, i32 %17, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %136

23:                                               ; preds = %1
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %26, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.1*
  %30 = load i32, i32* @E1000_M88E1112_STATUS, align 4
  %31 = call i64 %27(%struct.e1000_hw.1* %29, i32 %30, i32* %6)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %136

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @E1000_M88E1112_STATUS_LINK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @E1000_MEDIA_PORT_COPPER, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.0*
  %50 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %51 = call i64 %47(%struct.e1000_hw.0* %49, i32 %50, i32 1)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i64, i64* %5, align 8
  store i64 %55, i64* %2, align 8
  br label %136

56:                                               ; preds = %43
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.1*
  %63 = load i32, i32* @E1000_M88E1112_STATUS, align 4
  %64 = call i64 %60(%struct.e1000_hw.1* %62, i32 %63, i32* %6)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %136

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @E1000_M88E1112_STATUS_LINK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @E1000_MEDIA_PORT_OTHER, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  br label %98

98:                                               ; preds = %87, %79, %76
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @E1000_MEDIA_PORT_COPPER, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.0*
  %109 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %110 = call i64 %106(%struct.e1000_hw.0* %108, i32 %109, i32 0)
  store i64 %110, i64* %5, align 8
  %111 = load i64, i64* %5, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i64, i64* %5, align 8
  store i64 %114, i64* %2, align 8
  br label %136

115:                                              ; preds = %102
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = call i32 @e1000_check_for_link_82575(%struct.e1000_hw* %116)
  br label %134

118:                                              ; preds = %98
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = call i32 @e1000_check_for_link_82575(%struct.e1000_hw* %119)
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %123, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = bitcast %struct.e1000_hw* %125 to %struct.e1000_hw.0*
  %127 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %128 = call i64 %124(%struct.e1000_hw.0* %126, i32 %127, i32 0)
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* %5, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i64, i64* %5, align 8
  store i64 %132, i64* %2, align 8
  br label %136

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %135, i64* %2, align 8
  br label %136

136:                                              ; preds = %134, %131, %113, %67, %54, %34, %21
  %137 = load i64, i64* %2, align 8
  ret i64 %137
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_check_for_link_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
