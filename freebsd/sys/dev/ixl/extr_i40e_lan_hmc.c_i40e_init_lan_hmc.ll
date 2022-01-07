; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_init_lan_hmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_init_lan_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, %struct.i40e_hmc_obj_info*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__, %struct.i40e_hmc_sd_entry*, i64 }
%struct.i40e_hmc_sd_entry = type { i32 }
%struct.i40e_hmc_obj_info = type { i64, i32, i32, i8* }
%struct.TYPE_6__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_HMC_INFO_SIGNATURE = common dso_local global i32 0, align 4
@I40E_HMC_LAN_MAX = common dso_local global i32 0, align 4
@I40E_HMC_LAN_FULL = common dso_local global i64 0, align 8
@I40E_HMC_LAN_TX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANQMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_LANTXOBJSZ = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"i40e_init_lan_hmc: Tx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_LAN_RX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANRXOBJSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"i40e_init_lan_hmc: Rx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_FCOE_CTX = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEDDPOBJSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"i40e_init_lan_hmc: FCoE context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_FCOE_FILT = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEFMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEFOBJSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"i40e_init_lan_hmc: FCoE filter: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_lan_hmc(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_hmc_obj_info*, align 8
  %12 = alloca %struct.i40e_hmc_obj_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @I40E_HMC_INFO_SIGNATURE, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* @I40E_HMC_LAN_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %27, %struct.TYPE_6__* %30, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  br label %439

39:                                               ; preds = %5
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.i40e_hmc_obj_info*
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %47 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store %struct.i40e_hmc_obj_info* %45, %struct.i40e_hmc_obj_info** %48, align 8
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %51, align 8
  %53 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %54 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %52, i64 %53
  store %struct.i40e_hmc_obj_info* %54, %struct.i40e_hmc_obj_info** %12, align 8
  %55 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %56 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %58 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %60 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %59, i32 0, i32 3
  store i8* null, i8** %60, align 8
  %61 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %62 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %65, align 8
  %67 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %68 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %66, i64 %67
  store %struct.i40e_hmc_obj_info* %68, %struct.i40e_hmc_obj_info** %11, align 8
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %70 = load i32, i32* @I40E_GLHMC_LANQMAX, align 4
  %71 = call i64 @rd32(%struct.i40e_hw* %69, i32 %70)
  %72 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %73 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %77 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %79 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %78, i32 0, i32 3
  store i8* null, i8** %79, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %81 = load i32, i32* @I40E_GLHMC_LANTXOBJSZ, align 4
  %82 = call i64 @rd32(%struct.i40e_hw* %80, i32 %81)
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i8* @BIT_ULL(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %87 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %90 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %39
  %94 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %97 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %98, i32 %99)
  br label %439

101:                                              ; preds = %39
  %102 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %103 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %110 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %113 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %118, align 8
  %120 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %121 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %119, i64 %120
  store %struct.i40e_hmc_obj_info* %121, %struct.i40e_hmc_obj_info** %11, align 8
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %123 = load i32, i32* @I40E_GLHMC_LANQMAX, align 4
  %124 = call i64 @rd32(%struct.i40e_hw* %122, i32 %123)
  %125 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %126 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %130 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %132 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %133, align 8
  %135 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %136 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %140 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %141, align 8
  %143 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %144 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %142, i64 %143
  %145 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %148 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %149, align 8
  %151 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %152 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %150, i64 %151
  %153 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %146, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, i8* %138, i64 %156
  %158 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %159 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %161 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @i40e_align_l2obj_base(i8* %162)
  %164 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %165 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %167 = load i32, i32* @I40E_GLHMC_LANRXOBJSZ, align 4
  %168 = call i64 @rd32(%struct.i40e_hw* %166, i32 %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i8* @BIT_ULL(i64 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %173 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %176 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %101
  %180 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %180, i32* %13, align 4
  %181 = load i64, i64* %8, align 8
  %182 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %183 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %181, i64 %184, i32 %185)
  br label %439

187:                                              ; preds = %101
  %188 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %189 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %192 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %190
  store i64 %194, i64* %192, align 8
  %195 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %196 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %199 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %203 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %204, align 8
  %206 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %207 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %205, i64 %206
  store %struct.i40e_hmc_obj_info* %207, %struct.i40e_hmc_obj_info** %11, align 8
  %208 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %209 = load i32, i32* @I40E_GLHMC_FCOEMAX, align 4
  %210 = call i64 @rd32(%struct.i40e_hw* %208, i32 %209)
  %211 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %212 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load i64, i64* %9, align 8
  %214 = trunc i64 %213 to i32
  %215 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %216 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %218 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %219, align 8
  %221 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %222 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %220, i64 %221
  %223 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %226 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 2
  %228 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %227, align 8
  %229 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %230 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %228, i64 %229
  %231 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %234 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %235, align 8
  %237 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %238 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %236, i64 %237
  %239 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %232, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %224, i64 %242
  %244 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %245 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  %246 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %247 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = call i8* @i40e_align_l2obj_base(i8* %248)
  %250 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %251 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  %252 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %253 = load i32, i32* @I40E_GLHMC_FCOEDDPOBJSZ, align 4
  %254 = call i64 @rd32(%struct.i40e_hw* %252, i32 %253)
  store i64 %254, i64* %15, align 8
  %255 = load i64, i64* %15, align 8
  %256 = call i8* @BIT_ULL(i64 %255)
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %259 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load i64, i64* %9, align 8
  %261 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %262 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %260, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %187
  %266 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %266, i32* %13, align 4
  %267 = load i64, i64* %9, align 8
  %268 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %269 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i64 %267, i64 %270, i32 %271)
  br label %439

273:                                              ; preds = %187
  %274 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %275 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %278 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, %276
  store i64 %280, i64* %278, align 8
  %281 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %282 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %285 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %289 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %290, align 8
  %292 = load i64, i64* @I40E_HMC_FCOE_FILT, align 8
  %293 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %291, i64 %292
  store %struct.i40e_hmc_obj_info* %293, %struct.i40e_hmc_obj_info** %11, align 8
  %294 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %295 = load i32, i32* @I40E_GLHMC_FCOEFMAX, align 4
  %296 = call i64 @rd32(%struct.i40e_hw* %294, i32 %295)
  %297 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %298 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load i64, i64* %10, align 8
  %300 = trunc i64 %299 to i32
  %301 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %302 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %304 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 2
  %306 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %305, align 8
  %307 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %308 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %306, i64 %307
  %309 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %308, i32 0, i32 3
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %312 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  %314 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %313, align 8
  %315 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %316 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %314, i64 %315
  %317 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %320 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 2
  %322 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %321, align 8
  %323 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %324 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %322, i64 %323
  %325 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 %318, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr i8, i8* %310, i64 %328
  %330 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %331 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %330, i32 0, i32 3
  store i8* %329, i8** %331, align 8
  %332 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %333 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %332, i32 0, i32 3
  %334 = load i8*, i8** %333, align 8
  %335 = call i8* @i40e_align_l2obj_base(i8* %334)
  %336 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %337 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %336, i32 0, i32 3
  store i8* %335, i8** %337, align 8
  %338 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %339 = load i32, i32* @I40E_GLHMC_FCOEFOBJSZ, align 4
  %340 = call i64 @rd32(%struct.i40e_hw* %338, i32 %339)
  store i64 %340, i64* %15, align 8
  %341 = load i64, i64* %15, align 8
  %342 = call i8* @BIT_ULL(i64 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %345 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 4
  %346 = load i64, i64* %10, align 8
  %347 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %348 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp sgt i64 %346, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %273
  %352 = load i32, i32* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %352, i32* %13, align 4
  %353 = load i64, i64* %10, align 8
  %354 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %355 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %13, align 4
  %358 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i64 %353, i64 %356, i32 %357)
  br label %439

359:                                              ; preds = %273
  %360 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %361 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %364 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, %362
  store i64 %366, i64* %364, align 8
  %367 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %368 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %371 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %375 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  store i64 0, i64* %376, align 8
  %377 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %378 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 3
  store i64 0, i64* %380, align 8
  %381 = load i64, i64* %7, align 8
  %382 = load i64, i64* %8, align 8
  %383 = load i64, i64* %9, align 8
  %384 = load i64, i64* %10, align 8
  %385 = call i32 @i40e_calculate_l2fpm_size(i64 %381, i64 %382, i64 %383, i64 %384)
  store i32 %385, i32* %14, align 4
  %386 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %387 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 2
  %390 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %389, align 8
  %391 = icmp eq %struct.i40e_hmc_sd_entry* null, %390
  br i1 %391, label %392, label %435

392:                                              ; preds = %359
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %395 = add nsw i32 %393, %394
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %399 = sext i32 %398 to i64
  %400 = sdiv i64 %397, %399
  %401 = trunc i64 %400 to i32
  %402 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %403 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 0
  store i32 %401, i32* %405, align 8
  %406 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %407 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %408 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %412 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = sext i32 %415 to i64
  %417 = mul i64 4, %416
  %418 = trunc i64 %417 to i32
  %419 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %406, %struct.TYPE_6__* %410, i32 %418)
  store i32 %419, i32* %13, align 4
  %420 = load i32, i32* %13, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %392
  br label %439

423:                                              ; preds = %392
  %424 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %425 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = inttoptr i64 %429 to %struct.i40e_hmc_sd_entry*
  %431 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %432 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 2
  store %struct.i40e_hmc_sd_entry* %430, %struct.i40e_hmc_sd_entry** %434, align 8
  br label %435

435:                                              ; preds = %423, %359
  %436 = load i32, i32* %14, align 4
  %437 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %438 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %437, i32 0, i32 2
  store i32 %436, i32* %438, align 4
  br label %439

439:                                              ; preds = %435, %422, %351, %265, %179, %93, %38
  %440 = load i32, i32* %13, align 4
  ret i32 %440
}

declare dso_local i32 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i8* @BIT_ULL(i64) #1

declare dso_local i32 @DEBUGOUT3(i8*, i64, i64, i32) #1

declare dso_local i8* @i40e_align_l2obj_base(i8*) #1

declare dso_local i32 @i40e_calculate_l2fpm_size(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
