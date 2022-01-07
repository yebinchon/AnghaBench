; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_set_input_mask_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_set_input_mask_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i32*, i32*, i32, i32, i32, i64 }

@IXGBE_FDIRM_DIPv6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ixgbe_fdir_set_atr_input_mask_82599\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c" bucket hash should always be 0 in mask\0A\00", align 1
@IXGBE_FDIRM_POOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" Error on vm pool mask\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FDIRM_L4P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c" Error on src/dst port mask\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" Error on flow type mask\0A\00", align 1
@IXGBE_FDIRM_VLANID = common dso_local global i32 0, align 4
@IXGBE_FDIRM_VLANP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c" Error on VLAN mask\0A\00", align 1
@IXGBE_FDIRM_FLEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c" Error on flexible byte mask\0A\00", align 1
@IXGBE_FDIRM_L3P = common dso_local global i32 0, align 4
@IXGBE_FDIRIP6M_DIPM_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRIP6M_ALWAYS_MASK = common dso_local global i32 0, align 4
@IXGBE_FDIRIP6M_INNER_MAC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c" Error on inner_mac byte mask\0A\00", align 1
@IXGBE_FDIRIP6M_TNI_VNI = common dso_local global i32 0, align 4
@IXGBE_FDIRIP6M_TNI_VNI_24 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c" Error on TNI/VNI byte mask\0A\00", align 1
@IXGBE_FDIRIP6M_TUNNEL_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c" Error on tunnel type byte mask\0A\00", align 1
@IXGBE_FDIRIP6M = common dso_local global i32 0, align 4
@IXGBE_FDIRTCPM = common dso_local global i32 0, align 4
@IXGBE_FDIRUDPM = common dso_local global i32 0, align 4
@IXGBE_FDIRDIP4M = common dso_local global i32 0, align 4
@IXGBE_FDIRSIP4M = common dso_local global i32 0, align 4
@IXGBE_FDIRSCTPM = common dso_local global i32 0, align 4
@IXGBE_FDIRM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %union.ixgbe_atr_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @IXGBE_FDIRM_DIPv6, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @UNREFERENCED_1PARAMETER(i32 %12)
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %16 = bitcast %union.ixgbe_atr_input* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %24 = bitcast %union.ixgbe_atr_input* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 127
  switch i32 %27, label %33 [
    i32 0, label %28
    i32 127, label %32
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @IXGBE_FDIRM_POOL, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %28
  br label %36

33:                                               ; preds = %22
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %35, i32* %4, align 4
  br label %241

36:                                               ; preds = %32
  %37 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %38 = bitcast %union.ixgbe_atr_input* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 131
  switch i32 %41, label %62 [
    i32 0, label %42
    i32 131, label %61
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @IXGBE_FDIRM_L4P, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %47 = bitcast %union.ixgbe_atr_input* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %53 = bitcast %union.ixgbe_atr_input* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %42
  %58 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %59, i32* %4, align 4
  br label %241

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %36, %60
  br label %65

62:                                               ; preds = %36
  %63 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %64, i32* %4, align 4
  br label %241

65:                                               ; preds = %61
  %66 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %67 = bitcast %union.ixgbe_atr_input* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IXGBE_NTOHS(i32 %69)
  %71 = and i32 %70, 61439
  switch i32 %71, label %85 [
    i32 0, label %72
    i32 4095, label %76
    i32 57344, label %80
    i32 61439, label %84
  ]

72:                                               ; preds = %65
  %73 = load i32, i32* @IXGBE_FDIRM_VLANID, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %72
  %77 = load i32, i32* @IXGBE_FDIRM_VLANP, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %88

80:                                               ; preds = %65
  %81 = load i32, i32* @IXGBE_FDIRM_VLANID, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %65, %80
  br label %88

85:                                               ; preds = %65
  %86 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %87, i32* %4, align 4
  br label %241

88:                                               ; preds = %84, %76
  %89 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %90 = bitcast %union.ixgbe_atr_input* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 65535
  switch i32 %93, label %99 [
    i32 0, label %94
    i32 65535, label %98
  ]

94:                                               ; preds = %88
  %95 = load i32, i32* @IXGBE_FDIRM_FLEX, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %88, %94
  br label %102

99:                                               ; preds = %88
  %100 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %101, i32* %4, align 4
  br label %241

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %187

105:                                              ; preds = %102
  %106 = load i32, i32* @IXGBE_FDIRM_L3P, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @IXGBE_FDIRIP6M_DIPM_SHIFT, align 4
  %110 = shl i32 65535, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @IXGBE_FDIRIP6M_ALWAYS_MASK, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %115 = bitcast %union.ixgbe_atr_input* %114 to %struct.TYPE_4__*
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 255
  switch i32 %120, label %126 [
    i32 0, label %121
    i32 255, label %125
  ]

121:                                              ; preds = %105
  %122 = load i32, i32* @IXGBE_FDIRIP6M_INNER_MAC, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %105, %121
  br label %129

126:                                              ; preds = %105
  %127 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %128 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %128, i32* %4, align 4
  br label %241

129:                                              ; preds = %125
  %130 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %131 = bitcast %union.ixgbe_atr_input* %130 to %struct.TYPE_4__*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %143 [
    i32 0, label %134
    i32 16777215, label %138
    i32 -1, label %142
  ]

134:                                              ; preds = %129
  %135 = load i32, i32* @IXGBE_FDIRIP6M_TNI_VNI, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %146

138:                                              ; preds = %129
  %139 = load i32, i32* @IXGBE_FDIRIP6M_TNI_VNI_24, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %146

142:                                              ; preds = %129
  br label %146

143:                                              ; preds = %129
  %144 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %145, i32* %4, align 4
  br label %241

146:                                              ; preds = %142, %138, %134
  %147 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %148 = bitcast %union.ixgbe_atr_input* %147 to %struct.TYPE_4__*
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 65535
  switch i32 %151, label %157 [
    i32 0, label %152
    i32 65535, label %156
  ]

152:                                              ; preds = %146
  %153 = load i32, i32* @IXGBE_FDIRIP6M_TUNNEL_TYPE, align 4
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %146, %152
  br label %160

157:                                              ; preds = %146
  %158 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %159, i32* %4, align 4
  br label %241

160:                                              ; preds = %156
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %162 = load i32, i32* @IXGBE_FDIRIP6M, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %161, i32 %162, i32 %163)
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %166 = load i32, i32* @IXGBE_FDIRTCPM, align 4
  %167 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %165, i32 %166, i32 -1)
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %169 = load i32, i32* @IXGBE_FDIRUDPM, align 4
  %170 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %168, i32 %169, i32 -1)
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %172 = load i32, i32* @IXGBE_FDIRDIP4M, align 4
  %173 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %171, i32 %172, i32 -1)
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %175 = load i32, i32* @IXGBE_FDIRSIP4M, align 4
  %176 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %174, i32 %175, i32 -1)
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %178 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %185 [
    i32 130, label %181
    i32 128, label %181
    i32 129, label %181
  ]

181:                                              ; preds = %160, %160, %160
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %183 = load i32, i32* @IXGBE_FDIRSCTPM, align 4
  %184 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %182, i32 %183, i32 -1)
  br label %186

185:                                              ; preds = %160
  br label %186

186:                                              ; preds = %185, %181
  br label %187

187:                                              ; preds = %186, %102
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %189 = load i32, i32* @IXGBE_FDIRM, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %188, i32 %189, i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %239, label %194

194:                                              ; preds = %187
  %195 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %196 = call i32 @ixgbe_get_fdirtcpm_82599(%union.ixgbe_atr_input* %195)
  store i32 %196, i32* %9, align 4
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %198 = load i32, i32* @IXGBE_FDIRTCPM, align 4
  %199 = load i32, i32* %9, align 4
  %200 = xor i32 %199, -1
  %201 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %197, i32 %198, i32 %200)
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %203 = load i32, i32* @IXGBE_FDIRUDPM, align 4
  %204 = load i32, i32* %9, align 4
  %205 = xor i32 %204, -1
  %206 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %202, i32 %203, i32 %205)
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %208 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %217 [
    i32 130, label %211
    i32 128, label %211
    i32 129, label %211
  ]

211:                                              ; preds = %194, %194, %194
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %213 = load i32, i32* @IXGBE_FDIRSCTPM, align 4
  %214 = load i32, i32* %9, align 4
  %215 = xor i32 %214, -1
  %216 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %212, i32 %213, i32 %215)
  br label %218

217:                                              ; preds = %194
  br label %218

218:                                              ; preds = %217, %211
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %220 = load i32, i32* @IXGBE_FDIRSIP4M, align 4
  %221 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %222 = bitcast %union.ixgbe_atr_input* %221 to %struct.TYPE_4__*
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %226, -1
  %228 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %219, i32 %220, i32 %227)
  %229 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %230 = load i32, i32* @IXGBE_FDIRDIP4M, align 4
  %231 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %232 = bitcast %union.ixgbe_atr_input* %231 to %struct.TYPE_4__*
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 7
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %236, -1
  %238 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %229, i32 %230, i32 %237)
  br label %239

239:                                              ; preds = %218, %187
  %240 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %157, %143, %126, %99, %85, %62, %57, %33
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_NTOHS(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_get_fdirtcpm_82599(%union.ixgbe_atr_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
