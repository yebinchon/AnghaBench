; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_2__, %struct.octeon_device*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lio_ioq_vector = type { i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_2__, %struct.lio_ioq_vector*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate bus res msix[%d]\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@lio_msix_intr_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register intr handler\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rxtx%u\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"bus bind interrupt fail\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bound Queue %d to CPU %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MSI-X enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Unable to allocate bus res msix for non-ioq interrupt\0A\00", align 1
@lio_intr_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"MSI-X disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lio_ioq_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %285

19:                                               ; preds = %2
  %20 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %21, align 8
  %23 = bitcast %struct.octeon_device* %22 to %struct.lio_ioq_vector*
  store %struct.lio_ioq_vector* %23, %struct.lio_ioq_vector** %7, align 8
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @pci_alloc_msix(i32 %37, i32* %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %19
  br label %280

47:                                               ; preds = %40
  %48 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %140, %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %145

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load i32, i32* @RF_SHAREABLE, align 4
  %62 = load i32, i32* @RF_ACTIVE, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @bus_alloc_resource_any(i32 %59, i32 %60, i32* %13, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %67 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %69 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %204

76:                                               ; preds = %56
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %79 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @INTR_TYPE_NET, align 4
  %82 = load i32, i32* @INTR_MPSAFE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @lio_msix_intr_handler, align 4
  %85 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %86 = bitcast %struct.lio_ioq_vector* %85 to %struct.octeon_device*
  %87 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %88 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %87, i32 0, i32 4
  %89 = call i32 @bus_setup_intr(i32 %77, i32* %80, i32 %83, i32* null, i32 %84, %struct.octeon_device* %86, i32** %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %76
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @SYS_RES_IRQ, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %97 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %93, i32 %94, i32 %95, i32* %98)
  %100 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %101 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  %102 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %103 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %204

104:                                              ; preds = %76
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %107 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %110 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i32*, i32*, i8*, ...) @bus_describe_intr(i32 %105, i32* %108, i32* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %116 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @mp_ncpus, align 4
  %119 = srem i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %122 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %121, i32 0, i32 5
  %123 = call i32 @CPU_SETOF(i32 %120, i32* %122)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %126 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @bus_bind_intr(i32 %124, i32* %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %104
  %133 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %134 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %104
  %136 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_dbg(%struct.octeon_device* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %144 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %143, i32 1
  store %struct.lio_ioq_vector* %144, %struct.lio_ioq_vector** %7, align 8
  br label %51

145:                                              ; preds = %51
  %146 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %147 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_dbg(%struct.octeon_device* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @SYS_RES_IRQ, align 4
  %151 = load i32, i32* @RF_SHAREABLE, align 4
  %152 = load i32, i32* @RF_ACTIVE, align 4
  %153 = or i32 %151, %152
  %154 = call i8* @bus_alloc_resource_any(i32 %149, i32 %150, i32* %13, i32 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %157 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %156, i32 0, i32 3
  store i32* %155, i32** %157, align 8
  %158 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %145
  %163 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %164 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %163, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %204

165:                                              ; preds = %145
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %168 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @INTR_TYPE_NET, align 4
  %171 = load i32, i32* @INTR_MPSAFE, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @lio_intr_handler, align 4
  %174 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %175 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %176 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %175, i32 0, i32 4
  %177 = call i32 @bus_setup_intr(i32 %166, i32* %169, i32 %172, i32* null, i32 %173, %struct.octeon_device* %174, i32** %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %165
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @SYS_RES_IRQ, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %185 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @bus_release_resource(i32 %181, i32 %182, i32 %183, i32* %186)
  %188 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 3
  store i32* null, i32** %189, align 8
  %190 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %191 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %204

192:                                              ; preds = %165
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %195 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %198 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 (i32, i32*, i32*, i8*, ...) @bus_describe_intr(i32 %193, i32* %196, i32* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %203 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %3, align 4
  br label %285

204:                                              ; preds = %180, %162, %92, %72
  %205 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %206 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %212 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %215 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @bus_teardown_intr(i32 %210, i32* %213, i32* %216)
  %218 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %219 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %218, i32 0, i32 4
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %209, %204
  br label %221

221:                                              ; preds = %261, %220
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %262

224:                                              ; preds = %221
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %10, align 4
  %227 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %228 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %227, i32 -1
  store %struct.lio_ioq_vector* %228, %struct.lio_ioq_vector** %7, align 8
  %229 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %230 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %244

233:                                              ; preds = %224
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %236 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %239 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @bus_teardown_intr(i32 %234, i32* %237, i32* %240)
  %242 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %243 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %242, i32 0, i32 4
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %233, %224
  %245 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %246 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @SYS_RES_IRQ, align 4
  %252 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %253 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %256 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @bus_release_resource(i32 %250, i32 %251, i32 %254, i32* %257)
  %259 = load %struct.lio_ioq_vector*, %struct.lio_ioq_vector** %7, align 8
  %260 = getelementptr inbounds %struct.lio_ioq_vector, %struct.lio_ioq_vector* %259, i32 0, i32 3
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %249, %244
  br label %221

262:                                              ; preds = %221
  %263 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %264 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %279

267:                                              ; preds = %262
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @SYS_RES_IRQ, align 4
  %270 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %271 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %274 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @bus_release_resource(i32 %268, i32 %269, i32 %272, i32* %275)
  %277 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %278 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %277, i32 0, i32 3
  store i32* null, i32** %278, align 8
  br label %279

279:                                              ; preds = %267, %262
  br label %280

280:                                              ; preds = %279, %46
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @pci_release_msi(i32 %281)
  %283 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %284 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %283, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %285

285:                                              ; preds = %280, %192, %18
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.octeon_device*, i32**) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32*, i8*, ...) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @bus_bind_intr(i32, i32*, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, ...) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
