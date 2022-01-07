; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_polarity_reversal_workaround_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_polarity_reversal_workaround_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@PHY_FORCE_TIME = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_polarity_reversal_workaround_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_polarity_reversal_workaround_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %11, align 8
  %13 = icmp ne i64 (%struct.e1000_hw.0*, i32, i32)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %174

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.0*
  %23 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %24 = call i64 %20(%struct.e1000_hw.0* %22, i32 %23, i32 25)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %174

28:                                               ; preds = %15
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %37 = call i64 %33(%struct.e1000_hw.0* %35, i32 %36, i32 65535)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %174

41:                                               ; preds = %28
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.0*
  %49 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %50 = call i64 %46(%struct.e1000_hw.0* %48, i32 %49, i32 0)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %174

54:                                               ; preds = %41
  %55 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %94, %54
  %57 = load i64, i64* %5, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64 (%struct.e1000_hw.1*, i32, i64*)*, i64 (%struct.e1000_hw.1*, i32, i64*)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.1*
  %67 = load i32, i32* @PHY_STATUS, align 4
  %68 = call i64 %64(%struct.e1000_hw.1* %66, i32 %67, i64* %4)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %174

72:                                               ; preds = %59
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64 (%struct.e1000_hw.1*, i32, i64*)*, i64 (%struct.e1000_hw.1*, i32, i64*)** %76, align 8
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = bitcast %struct.e1000_hw* %78 to %struct.e1000_hw.1*
  %80 = load i32, i32* @PHY_STATUS, align 4
  %81 = call i64 %77(%struct.e1000_hw.1* %79, i32 %80, i64* %4)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %174

85:                                               ; preds = %72
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %88 = xor i64 %87, -1
  %89 = and i64 %86, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %97

92:                                               ; preds = %85
  %93 = call i32 @msec_delay_irq(i32 100)
  br label %94

94:                                               ; preds = %92
  %95 = load i64, i64* %5, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %5, align 8
  br label %56

97:                                               ; preds = %91, %56
  %98 = call i32 @msec_delay_irq(i32 1000)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %100 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %102, align 8
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %105 = bitcast %struct.e1000_hw* %104 to %struct.e1000_hw.0*
  %106 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %107 = call i64 %103(%struct.e1000_hw.0* %105, i32 %106, i32 25)
  store i64 %107, i64* %3, align 8
  %108 = load i64, i64* %3, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %174

111:                                              ; preds = %97
  %112 = call i32 @msec_delay_irq(i32 50)
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %114 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %116, align 8
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %119 = bitcast %struct.e1000_hw* %118 to %struct.e1000_hw.0*
  %120 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %121 = call i64 %117(%struct.e1000_hw.0* %119, i32 %120, i32 65520)
  store i64 %121, i64* %3, align 8
  %122 = load i64, i64* %3, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %174

125:                                              ; preds = %111
  %126 = call i32 @msec_delay_irq(i32 50)
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %128 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %130, align 8
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = bitcast %struct.e1000_hw* %132 to %struct.e1000_hw.0*
  %134 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %135 = call i64 %131(%struct.e1000_hw.0* %133, i32 %134, i32 65280)
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %174

139:                                              ; preds = %125
  %140 = call i32 @msec_delay_irq(i32 50)
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %144, align 8
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %147 = bitcast %struct.e1000_hw* %146 to %struct.e1000_hw.0*
  %148 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %149 = call i64 %145(%struct.e1000_hw.0* %147, i32 %148, i32 0)
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %3, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  br label %174

153:                                              ; preds = %139
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %157, align 8
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %160 = bitcast %struct.e1000_hw* %159 to %struct.e1000_hw.0*
  %161 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %162 = call i64 %158(%struct.e1000_hw.0* %160, i32 %161, i32 0)
  store i64 %162, i64* %3, align 8
  %163 = load i64, i64* %3, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %174

166:                                              ; preds = %153
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %168 = load i64, i64* @PHY_FORCE_TIME, align 8
  %169 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %167, i64 %168, i32 100000, i32* %6)
  store i64 %169, i64* %3, align 8
  %170 = load i64, i64* %3, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %174

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %172, %165, %152, %138, %124, %110, %84, %71, %53, %40, %27, %14
  %175 = load i64, i64* %3, align 8
  ret i64 %175
}

declare dso_local i32 @msec_delay_irq(i32) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
