; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pci_devinfo* }
%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.pci_iov_arg = type { i32 }

@Giant = common dso_local global i32 0, align 4
@IOV_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCIR_SRIOV_TOTAL_VFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCIR_SRIOV_NUM_VFS = common dso_local global i32 0, align 4
@PCIR_SRIOV_VF_OFF = common dso_local global i32 0, align 4
@PCIR_SRIOV_VF_STRIDE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PCIR_SRIOV_CTL = common dso_local global i32 0, align 4
@PCIM_SRIOV_VF_EN = common dso_local global i32 0, align 4
@PCIM_SRIOV_VF_MSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iov\00", align 1
@hz = common dso_local global i32 0, align 4
@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IOV_RMAN_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.pci_iov_arg*)* @pci_iov_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_config(%struct.cdev* %0, %struct.pci_iov_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.pci_iov_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.pcicfg_iov*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.pci_iov_arg* %1, %struct.pci_iov_arg** %5, align 8
  %21 = call i32 @mtx_lock(i32* @Giant)
  %22 = load %struct.cdev*, %struct.cdev** %4, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.pci_devinfo*, %struct.pci_devinfo** %23, align 8
  store %struct.pci_devinfo* %24, %struct.pci_devinfo** %8, align 8
  %25 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %26 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %27, align 8
  store %struct.pcicfg_iov* %28, %struct.pcicfg_iov** %9, align 8
  %29 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %30 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %20, align 4
  store i32* null, i32** %10, align 8
  %35 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %36 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IOV_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %43 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %2
  %47 = call i32 @mtx_unlock(i32* @Giant)
  %48 = load i32, i32* @EBUSY, align 4
  store i32 %48, i32* %3, align 4
  br label %270

49:                                               ; preds = %41
  %50 = load i32, i32* @IOV_BUSY, align 4
  %51 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %52 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %56 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %57 = call i32 @pci_iov_parse_config(%struct.pcicfg_iov* %55, %struct.pci_iov_arg* %56, i32** %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %179

61:                                               ; preds = %49
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @pci_iov_config_get_num_vfs(i32* %62)
  store i32 %63, i32* %18, align 4
  %64 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %65 = load i32, i32* @PCIR_SRIOV_TOTAL_VFS, align 4
  %66 = call i32 @IOV_READ(%struct.pci_devinfo* %64, i32 %65, i32 2)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %12, align 4
  br label %179

72:                                               ; preds = %61
  %73 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %74 = call i32 @pci_iov_config_page_size(%struct.pci_devinfo* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %179

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @pci_iov_set_ari(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %179

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @pci_iov_init(i32 %85, i32 %86, i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %179

92:                                               ; preds = %84
  store i32 1, i32* %20, align 4
  %93 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %94 = load i32, i32* @PCIR_SRIOV_NUM_VFS, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @IOV_WRITE(%struct.pci_devinfo* %93, i32 %94, i32 %95, i32 2)
  %97 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %98 = load i32, i32* @PCIR_SRIOV_VF_OFF, align 4
  %99 = call i32 @IOV_READ(%struct.pci_devinfo* %97, i32 %98, i32 2)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %101 = load i32, i32* @PCIR_SRIOV_VF_STRIDE, align 4
  %102 = call i32 @IOV_READ(%struct.pci_devinfo* %100, i32 %101, i32 2)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @pci_get_rid(i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %18, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %107, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @pci_get_bus(i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @PCI_RID2BUS(i32 %115)
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %92
  %119 = load i32, i32* @ENOSPC, align 4
  store i32 %119, i32* %12, align 4
  br label %179

120:                                              ; preds = %92
  %121 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %122 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %123 = call i32 @IOV_READ(%struct.pci_devinfo* %121, i32 %122, i32 2)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* @PCIM_SRIOV_VF_EN, align 4
  %125 = load i32, i32* @PCIM_SRIOV_VF_MSE, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %17, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %17, align 4
  %130 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %131 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @IOV_WRITE(%struct.pci_devinfo* %130, i32 %131, i32 %132, i32 2)
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %136 = call i32 @pci_iov_init_rman(i32 %134, %struct.pcicfg_iov* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %120
  br label %179

140:                                              ; preds = %120
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %143 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %145 = call i32 @pci_iov_setup_bars(%struct.pci_devinfo* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %179

149:                                              ; preds = %140
  %150 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %151 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %152 = call i32 @IOV_READ(%struct.pci_devinfo* %150, i32 %151, i32 2)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* @PCIM_SRIOV_VF_EN, align 4
  %154 = load i32, i32* @PCIM_SRIOV_VF_MSE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %17, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %17, align 4
  %158 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %159 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @IOV_WRITE(%struct.pci_devinfo* %158, i32 %159, i32 %160, i32 2)
  %162 = load i32, i32* @hz, align 4
  %163 = call i32 @roundup(i32 %162, i32 10)
  %164 = call i32 @pause(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @pci_iov_enumerate_vfs(%struct.pci_devinfo* %165, i32* %166, i32 %167, i32 %168)
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @nvlist_destroy(i32* %170)
  %172 = load i32, i32* @IOV_BUSY, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %175 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %3, align 4
  br label %270

179:                                              ; preds = %148, %139, %118, %91, %83, %77, %70, %60
  %180 = load i32, i32* %20, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @PCI_IOV_UNINIT(i32 %183)
  br label %185

185:                                              ; preds = %182, %179
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %237, %185
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %240

190:                                              ; preds = %186
  %191 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %192 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %191, i32 0, i32 3
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %236

200:                                              ; preds = %190
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @SYS_RES_MEMORY, align 4
  %204 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %205 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i64 @PCIR_SRIOV_BAR(i32 %207)
  %209 = add nsw i64 %206, %208
  %210 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %211 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @pci_release_resource(i32 %201, i32 %202, i32 %203, i64 %209, i32* %217)
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @SYS_RES_MEMORY, align 4
  %222 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %223 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i64 @PCIR_SRIOV_BAR(i32 %225)
  %227 = add nsw i64 %224, %226
  %228 = call i32 @pci_delete_resource(i32 %219, i32 %220, i32 %221, i64 %227)
  %229 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %230 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %229, i32 0, i32 3
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32* null, i32** %235, align 8
  br label %236

236:                                              ; preds = %200, %190
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %186

240:                                              ; preds = %186
  %241 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %242 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @IOV_RMAN_INITED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %240
  %248 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %249 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %248, i32 0, i32 2
  %250 = call i32 @rman_fini(i32* %249)
  %251 = load i32, i32* @IOV_RMAN_INITED, align 4
  %252 = xor i32 %251, -1
  %253 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %254 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %247, %240
  %258 = load i32*, i32** %10, align 8
  %259 = call i32 @nvlist_destroy(i32* %258)
  %260 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %261 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  %262 = load i32, i32* @IOV_BUSY, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %265 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = call i32 @mtx_unlock(i32* @Giant)
  %269 = load i32, i32* %12, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %257, %149, %46
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @pci_iov_parse_config(%struct.pcicfg_iov*, %struct.pci_iov_arg*, i32**) #1

declare dso_local i32 @pci_iov_config_get_num_vfs(i32*) #1

declare dso_local i32 @IOV_READ(%struct.pci_devinfo*, i32, i32) #1

declare dso_local i32 @pci_iov_config_page_size(%struct.pci_devinfo*) #1

declare dso_local i32 @pci_iov_set_ari(i32) #1

declare dso_local i32 @pci_iov_init(i32, i32, i32*) #1

declare dso_local i32 @IOV_WRITE(%struct.pci_devinfo*, i32, i32, i32) #1

declare dso_local i32 @pci_get_rid(i32) #1

declare dso_local i64 @pci_get_bus(i32) #1

declare dso_local i64 @PCI_RID2BUS(i32) #1

declare dso_local i32 @pci_iov_init_rman(i32, %struct.pcicfg_iov*) #1

declare dso_local i32 @pci_iov_setup_bars(%struct.pci_devinfo*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @pci_iov_enumerate_vfs(%struct.pci_devinfo*, i32*, i32, i32) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @PCI_IOV_UNINIT(i32) #1

declare dso_local i32 @pci_release_resource(i32, i32, i32, i64, i32*) #1

declare dso_local i64 @PCIR_SRIOV_BAR(i32) #1

declare dso_local i32 @pci_delete_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
