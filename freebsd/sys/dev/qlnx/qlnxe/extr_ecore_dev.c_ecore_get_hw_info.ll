; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_hw_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32* }
%struct.ecore_ptt = type { i32 }
%struct.ecore_hw_prepare_params = type { i32, i32, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_HW_PREPARE_BAD_IOV = common dso_local global i32 0, align 4
@ECORE_HW_PREPARE_BAD_IGU = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ecore_get_hw_info.mcp_hw_mac = internal global [6 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@ECORE_MCP_VLAN_UNSET = common dso_local global i64 0, align 8
@ECORE_PCI_DEFAULT = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_ROCE = common dso_local global i32 0, align 4
@ECORE_PCI_ETH = common dso_local global i32 0, align 4
@NUM_PHYS_TCS_4PORT_K2 = common dso_local global i32 0, align 4
@ECORE_HW_PREPARE_BAD_MCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, %struct.ecore_hw_prepare_params*)* @ecore_get_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_get_hw_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, %struct.ecore_hw_prepare_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hw_prepare_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_hw_prepare_params* %3, %struct.ecore_hw_prepare_params** %9, align 8
  %13 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %14 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = call i64 @IS_LEAD_HWFN(%struct.ecore_hwfn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = call i32 @ecore_iov_hw_info(%struct.ecore_hwfn* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %27 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @ECORE_HW_PREPARE_BAD_IOV, align 4
  %32 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %33 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %253

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %40 = call i64 @IS_LEAD_HWFN(%struct.ecore_hwfn* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %45 = call i32 @ecore_hw_info_port_num(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %49 = call i32 @ecore_mcp_get_capabilities(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48)
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @CHIP_REV_IS_ASIC(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %58 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %59 = call i32 @ecore_hw_get_nvm_info(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, %struct.ecore_hw_prepare_params* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %253

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %68 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %69 = call i32 @ecore_int_igu_read_cam(%struct.ecore_hwfn* %67, %struct.ecore_ptt* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ECORE_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %75 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @ECORE_HW_PREPARE_BAD_IGU, align 4
  %80 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %81 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %253

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @CHIP_REV_IS_ASIC(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %93 = call i64 @ecore_mcp_is_init(%struct.ecore_hwfn* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @OSAL_MEMCPY(i32* %99, i32* %105, i32 %106)
  br label %123

108:                                              ; preds = %91, %85
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @ETH_ALEN, align 4
  %114 = call i32 @OSAL_MEMCPY(i32* %112, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ecore_get_hw_info.mcp_hw_mac, i64 0, i64 0), i32 %113)
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %116 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %108, %95
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %125 = call i64 @ecore_mcp_is_init(%struct.ecore_hwfn* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %123
  %128 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %129 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ECORE_MCP_VLAN_UNSET, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %127
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %138 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %144 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %136, %127
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %148 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %149 = call i32 @ecore_mcp_cmd_port_init(%struct.ecore_hwfn* %147, %struct.ecore_ptt* %148)
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %151 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %152 = call i32 @ecore_mcp_get_eee_caps(%struct.ecore_hwfn* %150, %struct.ecore_ptt* %151)
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %154 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %155 = call i32 @ecore_mcp_read_ufp_config(%struct.ecore_hwfn* %153, %struct.ecore_ptt* %154)
  br label %156

156:                                              ; preds = %146, %123
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @ECORE_PCI_DEFAULT, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %163 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  br label %181

165:                                              ; preds = %156
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %167 = call i64 @ecore_mcp_is_init(%struct.ecore_hwfn* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %171 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 8
  br label %180

180:                                              ; preds = %169, %165
  br label %181

181:                                              ; preds = %180, %160
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %183 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @CHIP_REV_IS_EMUL(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %181
  %188 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %189 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ECORE_IS_AH(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %187
  %194 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %195 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @ECORE_PCI_ETH_ROCE, align 4
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %201 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 8
  br label %208

203:                                              ; preds = %193
  %204 = load i32, i32* @ECORE_PCI_ETH, align 4
  %205 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %206 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 8
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %208, %187, %181
  %210 = load i32, i32* @NUM_PHYS_TCS_4PORT_K2, align 4
  %211 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %212 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32 %210, i32* %213, align 4
  %214 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %215 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  store i32 1, i32* %216, align 4
  %217 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %218 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %219 = call i32 @ecore_get_num_funcs(%struct.ecore_hwfn* %217, %struct.ecore_ptt* %218)
  %220 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %221 = call i64 @ecore_mcp_is_init(%struct.ecore_hwfn* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %209
  %224 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %225 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %231 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  store i32 %229, i32* %232, align 8
  br label %233

233:                                              ; preds = %223, %209
  %234 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %235 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @ecore_hw_get_resc(%struct.ecore_hwfn* %234, %struct.ecore_ptt* %235, i32 %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @ECORE_SUCCESS, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %233
  %242 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %243 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* @ECORE_HW_PREPARE_BAD_MCP, align 4
  %249 = load %struct.ecore_hw_prepare_params*, %struct.ecore_hw_prepare_params** %9, align 8
  %250 = getelementptr inbounds %struct.ecore_hw_prepare_params, %struct.ecore_hw_prepare_params* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %246, %241, %233
  %252 = load i32, i32* %11, align 4
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %251, %82, %63, %34
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i64 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iov_hw_info(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_hw_info_port_num(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_get_capabilities(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @CHIP_REV_IS_ASIC(i32) #1

declare dso_local i32 @ecore_hw_get_nvm_info(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_hw_prepare_params*) #1

declare dso_local i32 @ecore_int_igu_read_cam(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @ecore_mcp_is_init(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_port_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_get_eee_caps(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_read_ufp_config(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i64 @ECORE_IS_AH(i32) #1

declare dso_local i32 @ecore_get_num_funcs(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_hw_get_resc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
