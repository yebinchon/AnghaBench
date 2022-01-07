; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_19__, i32, %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@SLI4_INTF_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SLI_INTF is not valid\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported SLI revision (intf=%#x)\0A\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"status=%#x error1=%#x error2=%#x\0A\00", align 1
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR1 = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR2 = common dso_local global i32 0, align 4
@SLI4_PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@SLI4_FAMILY_CHECK_ASIC_TYPE = common dso_local global i64 0, align 8
@SLI4_ASIC_ID_REG = common dso_local global i32 0, align 4
@sli4_asic_table = common dso_local global %struct.TYPE_21__* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"no matching asic family/rev found: %02x/%02x\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"bootstrap mailbox allocation failed\0A\00", align 1
@SLI4_BMBX_MASK_LO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"bad alignment for bootstrap mailbox\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"bmbx v=%p p=0x%x %08x s=%zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"VPD buffer allocation failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"FW initialization failed\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_setup(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @UINT32_MAX, align 8
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = call i32 @ocs_memset(%struct.TYPE_20__* %16, i32 0, i32 184)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SLI4_INTF_REG, align 4
  %26 = call i64 @ocs_config_read32(i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @sli_intf_valid_check(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %306

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @sli_intf_sli_revision(i64 %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 4, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  store i32 -1, i32* %4, align 4
  br label %306

46:                                               ; preds = %33
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @sli_intf_sli_family(i64 %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @sli_intf_if_type(i64 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %64 = call i32 @sli_reg_read(%struct.TYPE_20__* %62, i32 %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = load i32, i32* @SLI4_REG_SLIPORT_ERROR1, align 4
  %67 = call i32 @sli_reg_read(%struct.TYPE_20__* %65, i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = load i32, i32* @SLI4_REG_SLIPORT_ERROR2, align 4
  %70 = call i32 @sli_reg_read(%struct.TYPE_20__* %68, i32 %69)
  %71 = call i32 (i32, i8*, i32, i32, i32, ...) @ocs_log_debug(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %60, %46
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SLI4_PCI_CLASS_REVISION, align 4
  %75 = call i64 @ocs_config_read32(i32 %73, i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @sli_pci_rev_id(i64 %76)
  store i64 %77, i64* %10, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @SLI4_FAMILY_CHECK_ASIC_TYPE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @SLI4_ASIC_ID_REG, align 4
  %87 = call i64 @ocs_config_read32(i32 %85, i32 %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i64 @sli_asic_gen(i64 %88)
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %84, %72
  store i64 0, i64* %12, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sli4_asic_table, align 8
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %13, align 8
  br label %92

92:                                               ; preds = %121, %90
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sli4_asic_table, align 8
  %95 = call i64 @ARRAY_SIZE(%struct.TYPE_21__* %94)
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  br label %126

120:                                              ; preds = %103, %97
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %12, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %12, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 1
  store %struct.TYPE_21__* %125, %struct.TYPE_21__** %13, align 8
  br label %92

126:                                              ; preds = %109, %92
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %6, align 4
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %138, i64 %139)
  store i32 -1, i32* %4, align 4
  br label %306

141:                                              ; preds = %131
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 5
  %147 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i64 @ocs_dma_alloc(i32 %144, %struct.TYPE_16__* %146, i32 %150, i32 16)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %306

156:                                              ; preds = %141
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SLI4_BMBX_MASK_LO, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %306

167:                                              ; preds = %156
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ocs_addr32_hi(i32 %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @ocs_addr32_lo(i32 %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i32, i8*, i32, i32, i32, ...) @ocs_log_debug(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %172, i32 %177, i32 %182, i64 %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = call i64 @ocs_dma_alloc(i32 %190, %struct.TYPE_16__* %193, i32 4096, i32 4096)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %167
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @ocs_log_test(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %203

203:                                              ; preds = %196, %167
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %205 = call i64 @sli_fw_init(%struct.TYPE_20__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %306

212:                                              ; preds = %203
  %213 = load i8*, i8** @TRUE, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 10
  store i8* %213, i8** %218, align 8
  %219 = load i8*, i8** @TRUE, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 9
  store i8* %219, i8** %224, align 8
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 8
  store i8* %225, i8** %230, align 8
  %231 = load i8*, i8** @TRUE, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 7
  store i8* %231, i8** %236, align 8
  %237 = load i8*, i8** @TRUE, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 6
  store i8* %237, i8** %242, align 8
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 5
  store i8* %243, i8** %248, align 8
  %249 = load i8*, i8** @TRUE, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 4
  store i8* %249, i8** %254, align 8
  %255 = load i8*, i8** @TRUE, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  store i8* %255, i8** %260, align 8
  %261 = load i8*, i8** @TRUE, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 3
  store i8* %261, i8** %266, align 8
  %267 = load i8*, i8** @TRUE, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 2
  store i8* %267, i8** %272, align 8
  %273 = load i8*, i8** @TRUE, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 1
  store i8* %273, i8** %278, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %212
  %285 = load i8*, i8** @TRUE, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  store i8* %285, i8** %290, align 8
  br label %291

291:                                              ; preds = %284, %212
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = load i8*, i8** @TRUE, align 8
  %297 = call i64 @sli_request_features(%struct.TYPE_20__* %292, %struct.TYPE_22__* %295, i8* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  store i32 -1, i32* %4, align 4
  br label %306

300:                                              ; preds = %291
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %302 = call i64 @sli_get_config(%struct.TYPE_20__* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  store i32 -1, i32* %4, align 4
  br label %306

305:                                              ; preds = %300
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %305, %304, %299, %207, %164, %153, %136, %42, %30
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @ocs_memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @ocs_config_read32(i32, i32) #1

declare dso_local i64 @sli_intf_valid_check(i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @sli_intf_sli_revision(i64) #1

declare dso_local i64 @sli_intf_sli_family(i64) #1

declare dso_local i32 @sli_intf_if_type(i64) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @sli_reg_read(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @sli_pci_rev_id(i64) #1

declare dso_local i64 @sli_asic_gen(i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_21__*) #1

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i64 @sli_fw_init(%struct.TYPE_20__*) #1

declare dso_local i64 @sli_request_features(%struct.TYPE_20__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i64 @sli_get_config(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
