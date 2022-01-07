; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_link_capabilities_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_link_capabilities_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_get_link_capabilities_82599\00", align 1
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber_qsfp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_link_capabilities_82599(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %52, label %17

17:                                               ; preds = %3
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %17
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45, %38, %31, %24, %17, %3
  %53 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %202

57:                                               ; preds = %45
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = load i32, i32* @IXGBE_AUTOC, align 4
  %71 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %173 [
    i32 132, label %76
    i32 135, label %81
    i32 133, label %86
    i32 134, label %91
    i32 131, label %96
    i32 130, label %96
    i32 129, label %131
    i32 128, label %166
  ]

76:                                               ; preds = %72
  %77 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %175

81:                                               ; preds = %72
  %82 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %175

86:                                               ; preds = %72
  %87 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %175

91:                                               ; preds = %72
  %92 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %175

96:                                               ; preds = %72, %72
  %97 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  br label %175

131:                                              ; preds = %72
  %132 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %131
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* @TRUE, align 4
  %165 = load i32*, i32** %6, align 8
  store i32 %164, i32* %165, align 4
  br label %175

166:                                              ; preds = %72
  %167 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %168 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %169 = or i32 %167, %168
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = load i32*, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  br label %175

173:                                              ; preds = %72
  %174 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %174, i32* %7, align 4
  br label %202

175:                                              ; preds = %166, %163, %128, %91, %86, %81, %76
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %177 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %175
  %182 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %183 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %184 = or i32 %182, %183
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %189 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @ixgbe_media_type_fiber_qsfp, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %181
  %195 = load i32, i32* @FALSE, align 4
  %196 = load i32*, i32** %6, align 8
  store i32 %195, i32* %196, align 4
  br label %200

197:                                              ; preds = %181
  %198 = load i32, i32* @TRUE, align 4
  %199 = load i32*, i32** %6, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %201

201:                                              ; preds = %200, %175
  br label %202

202:                                              ; preds = %201, %173, %52
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
