; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_fill_shmem_func_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_fill_shmem_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.ecore_mcp_function_info }
%struct.ecore_mcp_function_info = type { i32, i32, i32, i8*, i8**, i32, i32, i32, i8* }
%struct.ecore_ptt = type { i32 }
%struct.public_func = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@FUNC_MF_CFG_PAUSE_ON_HOST_RING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown personality %08x\0A\00", align 1
@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MAC is 0 in shmem\0A\00", align 1
@FUNC_MF_CFG_OV_STAG_MASK = common dso_local global i32 0, align 4
@ECORE_WOL_SUPPORT_NONE = common dso_local global i64 0, align 8
@ECORE_OV_WOL_DEFAULT = common dso_local global i64 0, align 8
@DRV_MSG_CODE_OS_WOL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_OS_WOL_SUPPORTED = common dso_local global i64 0, align 8
@ECORE_WOL_SUPPORT_PME = common dso_local global i64 0, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@ECORE_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [160 x i8] c"Read configuration from shmem: pause_on_host %02x protocol %02x BW [%02x - %02x] MAC %02x:%02x:%02x:%02x:%02x:%02x wwn port %llx node %llx ovlan %04x wol %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_fill_shmem_func_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_mcp_function_info*, align 8
  %7 = alloca %struct.public_func, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = call i32 @MCP_PF_ID(%struct.ecore_hwfn* %13)
  %15 = call i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, %struct.public_func* %7, i32 %14)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.ecore_mcp_function_info* %19, %struct.ecore_mcp_function_info** %6, align 8
  %20 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FUNC_MF_CFG_PAUSE_ON_HOST_RING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %31 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %31, i32 0, i32 7
  %33 = call i64 @ecore_mcp_get_shmem_proto(%struct.ecore_hwfn* %29, %struct.public_func* %7, %struct.ecore_ptt* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = call i32 @DP_ERR(%struct.ecore_hwfn* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %251

44:                                               ; preds = %2
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %46 = call i32 @ecore_read_pf_bandwidth(%struct.ecore_hwfn* %45, %struct.public_func* %7)
  %47 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %61 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %60, i32 0, i32 4
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %59, i8** %63, align 8
  %64 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %68, i32 0, i32 4
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* %67, i8** %71, align 8
  %72 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 24
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %77, i32 0, i32 4
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  store i8* %76, i8** %80, align 8
  %81 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 16
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %86, i32 0, i32 4
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  store i8* %85, i8** %89, align 8
  %90 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %96 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %95, i32 0, i32 4
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 4
  store i8* %94, i8** %98, align 8
  %99 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %104 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %103, i32 0, i32 4
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 5
  store i8* %102, i8** %106, align 8
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %108 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %111, i32 0, i32 4
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @OSAL_MEMCPY(i32* %110, i8** %113, i32 %114)
  br label %119

116:                                              ; preds = %50
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %118 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %117, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %54
  %120 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 32
  %127 = or i32 %122, %126
  %128 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %129 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = shl i32 %135, 32
  %137 = or i32 %132, %136
  %138 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %139 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FUNC_MF_CFG_OV_STAG_MASK, align 4
  %143 = and i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %147 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %152 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %151, i32 0, i32 8
  store i8* %150, i8** %152, align 8
  %153 = load i64, i64* @ECORE_WOL_SUPPORT_NONE, align 8
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %155 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  %157 = load i64, i64* @ECORE_OV_WOL_DEFAULT, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %160 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %159, i32 0, i32 1
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i8* %158, i8** %162, align 8
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %164 = call i64 @ecore_mcp_is_init(%struct.ecore_hwfn* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %119
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %168 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %169 = load i32, i32* @DRV_MSG_CODE_OS_WOL, align 4
  %170 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %167, %struct.ecore_ptt* %168, i32 %169, i32 0, i64* %8, i64* %9)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @ECORE_SUCCESS, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %3, align 4
  br label %251

176:                                              ; preds = %166
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @FW_MSG_CODE_OS_WOL_SUPPORTED, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i64, i64* @ECORE_WOL_SUPPORT_PME, align 8
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %183 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %176
  br label %186

186:                                              ; preds = %185, %119
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %188 = load i32, i32* @ECORE_MSG_SP, align 4
  %189 = load i32, i32* @ECORE_MSG_IFUP, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %192 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %195 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %198 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %201 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %204 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %203, i32 0, i32 4
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %209 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %208, i32 0, i32 4
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %214 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %213, i32 0, i32 4
  %215 = load i8**, i8*** %214, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 2
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %219 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %218, i32 0, i32 4
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 3
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %224 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %223, i32 0, i32 4
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 4
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %229 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %228, i32 0, i32 4
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 5
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %234 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %238 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %6, align 8
  %242 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %245 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %187, i32 %190, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %196, i32 %199, i32 %202, i8* %207, i8* %212, i8* %217, i8* %222, i8* %227, i8* %232, i64 %236, i64 %240, i8* %243, i8* %248)
  %250 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %186, %174, %35
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.ecore_hwfn*) #1

declare dso_local i64 @ecore_mcp_get_shmem_proto(%struct.ecore_hwfn*, %struct.public_func*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64) #1

declare dso_local i32 @ecore_read_pf_bandwidth(%struct.ecore_hwfn*, %struct.public_func*) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i8**, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i64 @ecore_mcp_is_init(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
