; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_initialize_M88E1512_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_initialize_M88E1512_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"e1000_initialize_M88E1512_phy\00", align 1
@M88E1512_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_M88E1543_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_2 = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_1 = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_3 = common dso_local global i32 0, align 4
@E1000_M88E1512_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_initialize_M88E1512_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %8, i64* %5, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @M88E1512_E_PHY_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %199

16:                                               ; preds = %1
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %24 = call i64 %20(%struct.e1000_hw.1* %22, i32 %23, i32 255)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %199

28:                                               ; preds = %16
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %36 = call i64 %32(%struct.e1000_hw.1* %34, i32 %35, i32 8523)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %199

40:                                               ; preds = %28
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.1*
  %47 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %48 = call i64 %44(%struct.e1000_hw.1* %46, i32 %47, i32 8516)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %199

52:                                               ; preds = %40
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32 3112)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %199

64:                                               ; preds = %52
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %72 = call i64 %68(%struct.e1000_hw.1* %70, i32 %71, i32 8518)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %199

76:                                               ; preds = %64
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %79, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = bitcast %struct.e1000_hw* %81 to %struct.e1000_hw.1*
  %83 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %84 = call i64 %80(%struct.e1000_hw.1* %82, i32 %83, i32 45619)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %199

88:                                               ; preds = %76
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %91, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = bitcast %struct.e1000_hw* %93 to %struct.e1000_hw.1*
  %95 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %96 = call i64 %92(%struct.e1000_hw.1* %94, i32 %95, i32 8525)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %199

100:                                              ; preds = %88
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.1*
  %107 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %108 = call i64 %104(%struct.e1000_hw.1* %106, i32 %107, i32 52236)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %199

112:                                              ; preds = %100
  %113 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %115, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = bitcast %struct.e1000_hw* %117 to %struct.e1000_hw.1*
  %119 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %120 = call i64 %116(%struct.e1000_hw.1* %118, i32 %119, i32 8537)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %199

124:                                              ; preds = %112
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %127, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = bitcast %struct.e1000_hw* %129 to %struct.e1000_hw.1*
  %131 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %132 = call i64 %128(%struct.e1000_hw.1* %130, i32 %131, i32 251)
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %199

136:                                              ; preds = %124
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %139, align 8
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = bitcast %struct.e1000_hw* %141 to %struct.e1000_hw.1*
  %143 = load i32, i32* @E1000_M88E1512_CFG_REG_3, align 4
  %144 = call i64 %140(%struct.e1000_hw.1* %142, i32 %143, i32 13)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %199

148:                                              ; preds = %136
  %149 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %151, align 8
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = bitcast %struct.e1000_hw* %153 to %struct.e1000_hw.1*
  %155 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %156 = call i64 %152(%struct.e1000_hw.1* %154, i32 %155, i32 18)
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* %5, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %199

160:                                              ; preds = %148
  %161 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %162 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %163, align 8
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = bitcast %struct.e1000_hw* %165 to %struct.e1000_hw.1*
  %167 = load i32, i32* @E1000_M88E1512_MODE, align 4
  %168 = call i64 %164(%struct.e1000_hw.1* %166, i32 %167, i32 32769)
  store i64 %168, i64* %5, align 8
  %169 = load i64, i64* %5, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %199

172:                                              ; preds = %160
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %175, align 8
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = bitcast %struct.e1000_hw* %177 to %struct.e1000_hw.1*
  %179 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %180 = call i64 %176(%struct.e1000_hw.1* %178, i32 %179, i32 0)
  store i64 %180, i64* %5, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %199

184:                                              ; preds = %172
  %185 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %186 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %187, align 8
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %190 = bitcast %struct.e1000_hw* %189 to %struct.e1000_hw.0*
  %191 = call i64 %188(%struct.e1000_hw.0* %190)
  store i64 %191, i64* %5, align 8
  %192 = load i64, i64* %5, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %196 = load i64, i64* %5, align 8
  store i64 %196, i64* %2, align 8
  br label %201

197:                                              ; preds = %184
  %198 = call i32 @msec_delay(i32 1000)
  br label %199

199:                                              ; preds = %197, %183, %171, %159, %147, %135, %123, %111, %99, %87, %75, %63, %51, %39, %27, %15
  %200 = load i64, i64* %5, align 8
  store i64 %200, i64* %2, align 8
  br label %201

201:                                              ; preds = %199, %194
  %202 = load i64, i64* %2, align 8
  ret i64 %202
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
