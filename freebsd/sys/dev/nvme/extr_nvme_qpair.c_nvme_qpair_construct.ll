; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32, i32, i64, i32, i64, i64, i32, i8*, i32, i32, i32, i32, i8*, i8*, %struct.nvme_completion*, %struct.nvme_command*, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.nvme_controller* }
%struct.nvme_completion = type { i32 }
%struct.nvme_command = type { i32 }
%struct.nvme_controller = type { i32, i32, i64 }
%struct.nvme_tracker = type { i32, i64*, i64, %struct.nvme_qpair*, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nvme_qpair_msix_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"io%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nvme qpair lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@NVME_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"payload tag create failed %d\0A\00", align 1
@NVME_MAX_PRP_LIST_ENTRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"tag create failed %d\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to alloc qpair memory\0A\00", align 1
@nvme_single_map = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to load qpair memory\0A\00", align 1
@doorbell = common dso_local global i32* null, align 8
@M_NVME = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@tailq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to allocate enough trackers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_qpair_construct(%struct.nvme_qpair* %0, i8* %1, i8* %2, %struct.nvme_controller* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_qpair*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvme_controller*, align 8
  %10 = alloca %struct.nvme_tracker*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nvme_controller* %3, %struct.nvme_controller** %9, align 8
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %25 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %30 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %36 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %46 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %47 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %46, i32 0, i32 26
  store %struct.nvme_controller* %45, %struct.nvme_controller** %47, align 8
  %48 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %49 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %33
  %53 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %54 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %58 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %60 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SYS_RES_IRQ, align 4
  %63 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %64 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %63, i32 0, i32 4
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = call i32 @bus_alloc_resource_any(i32 %61, i32 %62, i32* %64, i32 %65)
  %67 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %68 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %67, i32 0, i32 25
  store i32 %66, i32* %68, align 8
  %69 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %70 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %73 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %72, i32 0, i32 25
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @INTR_TYPE_MISC, align 4
  %76 = load i32, i32* @INTR_MPSAFE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @nvme_qpair_msix_handler, align 4
  %79 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %80 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %81 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %80, i32 0, i32 24
  %82 = call i32 @bus_setup_intr(i32 %71, i32 %74, i32 %77, i32* null, i32 %78, %struct.nvme_qpair* %79, i32* %81)
  %83 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %84 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %52
  %88 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %89 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %92 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %91, i32 0, i32 25
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %95 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %94, i32 0, i32 24
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i32, i32, i8*, ...) @bus_describe_intr(i32 %90, i32 %93, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %113

98:                                               ; preds = %52
  %99 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %100 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %103 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %102, i32 0, i32 25
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %106 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %105, i32 0, i32 24
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %109 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 (i32, i32, i32, i8*, ...) @bus_describe_intr(i32 %101, i32 %104, i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %98, %87
  br label %114

114:                                              ; preds = %113, %33
  %115 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %116 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %115, i32 0, i32 23
  %117 = load i32, i32* @MTX_DEF, align 4
  %118 = call i32 @mtx_init(i32* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %117)
  %119 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %120 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bus_get_dma_tag(i32 %121)
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %125 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %126 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = sdiv i32 %128, %129
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %135 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %134, i32 0, i32 10
  %136 = call i32 @bus_dma_tag_create(i32 %122, i32 4, i32 %123, i32 %124, i32 %125, i32* null, i32* null, i64 %127, i32 %131, i64 %133, i32 0, i32* null, i32* null, i32* %135)
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %114
  %140 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %141 = load i32, i32* %23, align 4
  %142 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %423

143:                                              ; preds = %114
  %144 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %145 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i32, i32* @PAGE_SIZE, align 4
  %151 = call i64 @roundup2(i64 %149, i32 %150)
  store i64 %151, i64* %11, align 8
  %152 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %153 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = call i64 @roundup2(i64 %157, i32 %158)
  store i64 %159, i64* %12, align 8
  %160 = load i32, i32* @NVME_MAX_PRP_LIST_ENTRIES, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 8, %161
  store i64 %162, i64* %13, align 8
  %163 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %164 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = mul i64 %165, %166
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = add i64 %168, %169
  %171 = load i64, i64* %15, align 8
  %172 = add i64 %170, %171
  store i64 %172, i64* %14, align 8
  %173 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %174 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @bus_get_dma_tag(i32 %175)
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %179 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %183 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %182, i32 0, i32 22
  %184 = call i32 @bus_dma_tag_create(i32 %176, i32 %177, i32 0, i32 %178, i32 %179, i32* null, i32* null, i64 %180, i32 1, i64 %181, i32 0, i32* null, i32* null, i32* %183)
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %143
  %188 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %189 = load i32, i32* %23, align 4
  %190 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %423

191:                                              ; preds = %143
  %192 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %193 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %192, i32 0, i32 22
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %196 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @bus_dma_tag_set_domain(i32 %194, i32 %197)
  %199 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %200 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %199, i32 0, i32 22
  %201 = load i32, i32* %200, align 4
  %202 = bitcast i32** %19 to i8**
  %203 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %204 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %205 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %204, i32 0, i32 21
  %206 = call i64 @bus_dmamem_alloc(i32 %201, i8** %202, i32 %203, i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %191
  %209 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %210 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %423

211:                                              ; preds = %191
  %212 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %213 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %212, i32 0, i32 22
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %216 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %215, i32 0, i32 21
  %217 = load i32, i32* %216, align 8
  %218 = load i32*, i32** %19, align 8
  %219 = load i64, i64* %14, align 8
  %220 = load i32, i32* @nvme_single_map, align 4
  %221 = call i64 @bus_dmamap_load(i32 %214, i32 %217, i32* %218, i64 %219, i32 %220, i64* %16, i32 0)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %211
  %224 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %225 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %423

226:                                              ; preds = %211
  %227 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %228 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %227, i32 0, i32 20
  store i64 0, i64* %228, align 8
  %229 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %230 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %229, i32 0, i32 19
  store i64 0, i64* %230, align 8
  %231 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %232 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %231, i32 0, i32 18
  store i64 0, i64* %232, align 8
  %233 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %234 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %233, i32 0, i32 17
  store i64 0, i64* %234, align 8
  %235 = load i32*, i32** %19, align 8
  %236 = bitcast i32* %235 to %struct.nvme_command*
  %237 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %238 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %237, i32 0, i32 16
  store %struct.nvme_command* %236, %struct.nvme_command** %238, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = load i64, i64* %11, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = bitcast i32* %241 to %struct.nvme_completion*
  %243 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %244 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %243, i32 0, i32 15
  store %struct.nvme_completion* %242, %struct.nvme_completion** %244, align 8
  %245 = load i32*, i32** %19, align 8
  %246 = load i64, i64* %11, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i64, i64* %12, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32* %249, i32** %20, align 8
  %250 = load i64, i64* %16, align 8
  %251 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %252 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %251, i32 0, i32 5
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %16, align 8
  %254 = load i64, i64* %11, align 8
  %255 = add i64 %253, %254
  %256 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %257 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %256, i32 0, i32 6
  store i64 %255, i64* %257, align 8
  %258 = load i64, i64* %16, align 8
  %259 = load i64, i64* %11, align 8
  %260 = add i64 %258, %259
  %261 = load i64, i64* %12, align 8
  %262 = add i64 %260, %261
  store i64 %262, i64* %17, align 8
  %263 = load i32*, i32** @doorbell, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = call i8* @nvme_mmio_offsetof(i32 %265)
  %267 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %268 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %271 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  %274 = shl i32 %269, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr i8, i8* %266, i64 %275
  %277 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %278 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %277, i32 0, i32 14
  store i8* %276, i8** %278, align 8
  %279 = load i32*, i32** @doorbell, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @nvme_mmio_offsetof(i32 %281)
  %283 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %284 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %287 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  %290 = shl i32 %285, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr i8, i8* %282, i64 %291
  %293 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %294 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = shl i32 1, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr i8, i8* %292, i64 %297
  %299 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %300 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %299, i32 0, i32 13
  store i8* %298, i8** %300, align 8
  %301 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %302 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %301, i32 0, i32 9
  %303 = call i32 @TAILQ_INIT(i32* %302)
  %304 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %305 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %304, i32 0, i32 12
  %306 = call i32 @TAILQ_INIT(i32* %305)
  %307 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %308 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %307, i32 0, i32 11
  %309 = call i32 @STAILQ_INIT(i32* %308)
  %310 = load i64, i64* %17, align 8
  store i64 %310, i64* %18, align 8
  %311 = load i32*, i32** %20, align 8
  store i32* %311, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %312

312:                                              ; preds = %394, %226
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %316 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = icmp ult i64 %314, %317
  br i1 %318, label %319, label %397

319:                                              ; preds = %312
  %320 = load i64, i64* %18, align 8
  %321 = load i64, i64* %13, align 8
  %322 = add i64 %320, %321
  %323 = load i64, i64* %17, align 8
  %324 = load i64, i64* %15, align 8
  %325 = add i64 %323, %324
  %326 = icmp ugt i64 %322, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %319
  %328 = load i32, i32* %22, align 4
  %329 = sext i32 %328 to i64
  %330 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %331 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %330, i32 0, i32 3
  store i64 %329, i64* %331, align 8
  br label %397

332:                                              ; preds = %319
  %333 = load i64, i64* %18, align 8
  %334 = call i64 @trunc_page(i64 %333)
  %335 = load i64, i64* %18, align 8
  %336 = load i64, i64* %13, align 8
  %337 = add i64 %335, %336
  %338 = sub i64 %337, 1
  %339 = call i64 @trunc_page(i64 %338)
  %340 = icmp ne i64 %334, %339
  br i1 %340, label %341, label %350

341:                                              ; preds = %332
  %342 = load i64, i64* %18, align 8
  %343 = load i32, i32* @PAGE_SIZE, align 4
  %344 = call i64 @roundup2(i64 %342, i32 %343)
  store i64 %344, i64* %18, align 8
  %345 = load i32*, i32** %21, align 8
  %346 = ptrtoint i32* %345 to i64
  %347 = load i32, i32* @PAGE_SIZE, align 4
  %348 = call i64 @roundup2(i64 %346, i32 %347)
  %349 = inttoptr i64 %348 to i32*
  store i32* %349, i32** %21, align 8
  br label %350

350:                                              ; preds = %341, %332
  %351 = load i32, i32* @M_NVME, align 4
  %352 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %353 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @DOMAINSET_PREF(i32 %354)
  %356 = load i32, i32* @M_ZERO, align 4
  %357 = load i32, i32* @M_WAITOK, align 4
  %358 = or i32 %356, %357
  %359 = call i8* @malloc_domainset(i32 40, i32 %351, i32 %355, i32 %358)
  %360 = bitcast i8* %359 to %struct.nvme_tracker*
  store %struct.nvme_tracker* %360, %struct.nvme_tracker** %10, align 8
  %361 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %362 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %365 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %364, i32 0, i32 5
  %366 = call i32 @bus_dmamap_create(i32 %363, i32 0, i32* %365)
  %367 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %368 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %367, i32 0, i32 4
  %369 = call i32 @callout_init(i32* %368, i32 1)
  %370 = load i32, i32* %22, align 4
  %371 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %372 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 8
  %373 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %374 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %375 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %374, i32 0, i32 3
  store %struct.nvme_qpair* %373, %struct.nvme_qpair** %375, align 8
  %376 = load i32*, i32** %21, align 8
  %377 = bitcast i32* %376 to i64*
  %378 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %379 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %378, i32 0, i32 1
  store i64* %377, i64** %379, align 8
  %380 = load i64, i64* %18, align 8
  %381 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %382 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %381, i32 0, i32 2
  store i64 %380, i64* %382, align 8
  %383 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %384 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %383, i32 0, i32 9
  %385 = load %struct.nvme_tracker*, %struct.nvme_tracker** %10, align 8
  %386 = load i32, i32* @tailq, align 4
  %387 = call i32 @TAILQ_INSERT_HEAD(i32* %384, %struct.nvme_tracker* %385, i32 %386)
  %388 = load i64, i64* %13, align 8
  %389 = load i64, i64* %18, align 8
  %390 = add i64 %389, %388
  store i64 %390, i64* %18, align 8
  %391 = load i64, i64* %13, align 8
  %392 = load i32*, i32** %21, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 %391
  store i32* %393, i32** %21, align 8
  br label %394

394:                                              ; preds = %350
  %395 = load i32, i32* %22, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %22, align 4
  br label %312

397:                                              ; preds = %327, %312
  %398 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %399 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load %struct.nvme_controller*, %struct.nvme_controller** %9, align 8
  %404 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %403, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %423

405:                                              ; preds = %397
  %406 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %407 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = mul i64 8, %409
  %411 = trunc i64 %410 to i32
  %412 = load i32, i32* @M_NVME, align 4
  %413 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %414 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @DOMAINSET_PREF(i32 %415)
  %417 = load i32, i32* @M_ZERO, align 4
  %418 = load i32, i32* @M_WAITOK, align 4
  %419 = or i32 %417, %418
  %420 = call i8* @malloc_domainset(i32 %411, i32 %412, i32 %416, i32 %419)
  %421 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %422 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %421, i32 0, i32 8
  store i8* %420, i8** %422, align 8
  store i32 0, i32* %5, align 4
  br label %427

423:                                              ; preds = %402, %223, %208, %187, %139
  %424 = load %struct.nvme_qpair*, %struct.nvme_qpair** %6, align 8
  %425 = call i32 @nvme_qpair_destroy(%struct.nvme_qpair* %424)
  %426 = load i32, i32* @ENOMEM, align 4
  store i32 %426, i32* %5, align 4
  br label %427

427:                                              ; preds = %423, %405
  %428 = load i32, i32* %5, align 4
  ret i32 %428
}

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.nvme_qpair*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, ...) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @bus_dma_tag_set_domain(i32, i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i64, i32, i64*, i32) #1

declare dso_local i8* @nvme_mmio_offsetof(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i8* @malloc_domainset(i32, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @nvme_qpair_destroy(%struct.nvme_qpair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
