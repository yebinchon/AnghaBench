; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_cfg_itype_and_nqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_cfg_itype_and_nqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vf_resources }
%struct.vf_resources = type { i32, i32, i32 }
%struct.intrs_and_queues = type { i32, i32, i32, i32 }

@INTR_MSIX = common dso_local global i32 0, align 4
@INTR_INTX = common dso_local global i32 0, align 4
@T4VF_EXTRA_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Not enough ingress queues (%d) for %d ports\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@t4_nrxq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"too many ingress queues\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Not enough ETH queues (%d) for %d ports\0A\00", align 1
@t4_ntxq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"too many ETH queues\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Not enough egress queues (%d) for %d ports\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"too many egress queues\00", align 1
@INTR_MSI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"failed to allocate vectors:%d, type=%d, req=%d, rcvd=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"failed to find a usable interrupt type.  allowed=%d, msi-x=%d, msi=%d, intx=1\00", align 1
@t4_intr_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.intrs_and_queues*)* @cfg_itype_and_nqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_itype_and_nqueues(%struct.adapter* %0, %struct.intrs_and_queues* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.intrs_and_queues*, align 8
  %6 = alloca %struct.vf_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.intrs_and_queues* %1, %struct.intrs_and_queues** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.vf_resources* %16, %struct.vf_resources** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %22 = call i32 @bzero(%struct.intrs_and_queues* %21, i32 16)
  %23 = load i32, i32* @INTR_MSIX, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %312, %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %315

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @INTR_INTX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %312

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @INTR_MSIX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_msix_count(i32 %39)
  store i32 %40, i32* %12, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_msi_count(i32 %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %312

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %53 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @T4VF_EXTRA_INTR, align 4
  %55 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %56 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %58 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %61 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %50
  %68 = load %struct.adapter*, %struct.adapter** %4, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %72 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %3, align 4
  br label %330

77:                                               ; preds = %50
  %78 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %79 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %89 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = icmp sgt i32 %86, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %96 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %93, %85
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @t4_nrxq, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %108, %109
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp sle i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @KASSERT(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %120 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load %struct.adapter*, %struct.adapter** %4, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %129 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* @ENXIO, align 4
  store i32 %133, i32* %3, align 4
  br label %330

134:                                              ; preds = %113
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @t4_ntxq, align 4
  %137 = mul nsw i32 %135, %136
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %140 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %145 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sdiv i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = mul nsw i32 %148, %149
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %143, %134
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %154 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %152, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @KASSERT(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %159 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %160 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %162, 2
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %151
  %166 = load %struct.adapter*, %struct.adapter** %4, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %170 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172)
  %174 = load i32, i32* @ENXIO, align 4
  store i32 %174, i32* %3, align 4
  br label %330

175:                                              ; preds = %151
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %176, %177
  %179 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %180 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %8, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %175
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp sle i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @KASSERT(i32 %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %193 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sle i32 %191, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @KASSERT(i32 %196, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %198, %199
  %201 = load %struct.vf_resources*, %struct.vf_resources** %6, align 8
  %202 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp sle i32 %200, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @KASSERT(i32 %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %209 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %214 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %217 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  %218 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %219 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %223, label %277

223:                                              ; preds = %185
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @INTR_MSI, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %223
  %228 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %229 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @powerof2(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %277

233:                                              ; preds = %227, %223
  %234 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %235 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @INTR_MSIX, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.adapter*, %struct.adapter** %4, align 8
  %242 = getelementptr inbounds %struct.adapter, %struct.adapter* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @pci_alloc_msix(i32 %243, i32* %12)
  store i32 %244, i32* %13, align 4
  br label %250

245:                                              ; preds = %233
  %246 = load %struct.adapter*, %struct.adapter** %4, align 8
  %247 = getelementptr inbounds %struct.adapter, %struct.adapter* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @pci_alloc_msi(i32 %248, i32* %12)
  store i32 %249, i32* %13, align 4
  br label %250

250:                                              ; preds = %245, %240
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %250
  %254 = load %struct.adapter*, %struct.adapter** %4, align 8
  %255 = getelementptr inbounds %struct.adapter, %struct.adapter* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %260 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %256, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %258, i32 %261, i32 %262)
  %264 = load i32, i32* %13, align 4
  store i32 %264, i32* %3, align 4
  br label %330

265:                                              ; preds = %250
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %268 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %266, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  store i32 0, i32* %3, align 4
  br label %330

272:                                              ; preds = %265
  %273 = load %struct.adapter*, %struct.adapter** %4, align 8
  %274 = getelementptr inbounds %struct.adapter, %struct.adapter* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @pci_release_msi(i32 %275)
  br label %277

277:                                              ; preds = %272, %227, %185
  %278 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %279 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  %280 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %281 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* @INTR_MSIX, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %277
  %287 = load %struct.adapter*, %struct.adapter** %4, align 8
  %288 = getelementptr inbounds %struct.adapter, %struct.adapter* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @pci_alloc_msix(i32 %289, i32* %12)
  store i32 %290, i32* %13, align 4
  br label %296

291:                                              ; preds = %277
  %292 = load %struct.adapter*, %struct.adapter** %4, align 8
  %293 = getelementptr inbounds %struct.adapter, %struct.adapter* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @pci_alloc_msi(i32 %294, i32* %12)
  store i32 %295, i32* %13, align 4
  br label %296

296:                                              ; preds = %291, %286
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %296
  %300 = load %struct.adapter*, %struct.adapter** %4, align 8
  %301 = getelementptr inbounds %struct.adapter, %struct.adapter* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %13, align 4
  %305 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %306 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %12, align 4
  %309 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %302, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %303, i32 %304, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %299, %296
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %3, align 4
  br label %330

312:                                              ; preds = %49, %31
  %313 = load i32, i32* %10, align 4
  %314 = ashr i32 %313, 1
  store i32 %314, i32* %10, align 4
  br label %24

315:                                              ; preds = %24
  %316 = load %struct.adapter*, %struct.adapter** %4, align 8
  %317 = getelementptr inbounds %struct.adapter, %struct.adapter* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @t4_intr_types, align 4
  %320 = load %struct.adapter*, %struct.adapter** %4, align 8
  %321 = getelementptr inbounds %struct.adapter, %struct.adapter* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @pci_msix_count(i32 %322)
  %324 = load %struct.adapter*, %struct.adapter** %4, align 8
  %325 = getelementptr inbounds %struct.adapter, %struct.adapter* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @pci_msi_count(i32 %326)
  %328 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %318, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i32 %319, i32 %323, i32 %327)
  %329 = load i32, i32* @ENXIO, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %315, %310, %271, %253, %165, %124, %67
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @bzero(%struct.intrs_and_queues*, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @powerof2(i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
