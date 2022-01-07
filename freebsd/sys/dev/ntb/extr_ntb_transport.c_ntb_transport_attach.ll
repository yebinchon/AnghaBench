; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, i32, %struct.ntb_transport_mw*, %struct.ntb_transport_mw*, i32, i32, i32, i32, %struct.ntb_transport_child* }
%struct.ntb_transport_mw = type { i64, i64, i64, i64, i32*, i64, i32, i32, i32, i32, i32 }
%struct.ntb_transport_child = type { i32, i32, i32, %struct.ntb_transport_child*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"Doorbells are not sequential (%jx).\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"At least 1 memory window required.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"hint.%s.%d.compact\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"At least 3 scratchpads required.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Scratchpads enough only for %d memory windows.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"At least 6 scratchpads required.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"At least one doorbell required.\0A\00", align 1
@M_NTB_T = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@max_mw_size = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Memory window %d limited from %ju to %ju\0A\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"Memory window %d is too big (%ju)\0A\00", align 1
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to set mw%d caching\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"hint.%s.%d.config\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Not enough resources for config\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"Can not add child.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"%d \22%s\22: queues %d\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ntb_transport_link_cleanup_work = common dso_local global i32 0, align 4
@ntb_transport_ops = common dso_local global i32 0, align 4
@NTB_SPEED_AUTO = common dso_local global i32 0, align 4
@NTB_WIDTH_AUTO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"load time mw%d xlat fails, rc %d\0A\00", align 1
@enable_xeon_watchdog = common dso_local global i64 0, align 8
@xeon_link_watchdog_hb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_transport_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_ctx*, align 8
  %5 = alloca %struct.ntb_transport_child**, align 8
  %6 = alloca %struct.ntb_transport_child*, align 8
  %7 = alloca %struct.ntb_transport_mw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [128 x i8], align 16
  %18 = alloca [32 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.ntb_transport_ctx* @device_get_softc(i32 %23)
  store %struct.ntb_transport_ctx* %24, %struct.ntb_transport_ctx** %4, align 8
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 10
  store %struct.ntb_transport_child** %26, %struct.ntb_transport_child*** %5, align 8
  %27 = bitcast [128 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 128, i1 false)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ntb_mw_count(i32 %31)
  %33 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ntb_spad_count(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ntb_db_valid_mask(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @flsll(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %46, i8* %49)
  %51 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %501

59:                                               ; preds = %1
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 4, %64
  %66 = icmp slt i32 %60, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %71 = load i32, i32* %3, align 4
  %72 = call i8* @device_get_name(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_get_unit(i32 %73)
  %75 = call i32 @snprintf(i8* %70, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %74)
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %77 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %77, i32 0, i32 1
  %79 = call i32 @TUNABLE_INT_FETCH(i8* %76, i32* %78)
  %80 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %59
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %501

91:                                               ; preds = %84
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 2, %95
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 2
  %101 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %98, %91
  br label %136

109:                                              ; preds = %59
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 6
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %2, align 4
  br label %501

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 4, %121
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %125, 4
  %127 = sdiv i32 %126, 2
  %128 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %132 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %124, %116
  br label %136

136:                                              ; preds = %135, %108
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @ENXIO, align 4
  store i32 %142, i32* %2, align 4
  br label %501

143:                                              ; preds = %136
  %144 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 72
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @M_NTB_T, align 4
  %151 = load i32, i32* @M_WAITOK, align 4
  %152 = load i32, i32* @M_ZERO, align 4
  %153 = or i32 %151, %152
  %154 = call i8* @malloc(i32 %149, i32 %150, i32 %153)
  %155 = bitcast i8* %154 to %struct.ntb_transport_mw*
  %156 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %157 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %156, i32 0, i32 4
  store %struct.ntb_transport_mw* %155, %struct.ntb_transport_mw** %157, align 8
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %260, %143
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %263

164:                                              ; preds = %158
  %165 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %166 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %165, i32 0, i32 4
  %167 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %167, i64 %169
  store %struct.ntb_transport_mw* %170, %struct.ntb_transport_mw** %7, align 8
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %174 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %173, i32 0, i32 10
  %175 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %176 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %175, i32 0, i32 9
  %177 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %178 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %177, i32 0, i32 0
  %179 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %180 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %179, i32 0, i32 8
  %181 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %182 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %181, i32 0, i32 7
  %183 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %184 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %183, i32 0, i32 6
  %185 = call i32 @ntb_mw_get_range(i32 %171, i32 %172, i32* %174, i32* %176, i64* %178, i32* %180, i32* %182, i32* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %164
  br label %489

189:                                              ; preds = %164
  %190 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %191 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %194 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* @max_mw_size, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %189
  %198 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %199 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @max_mw_size, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %207 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load i64, i64* @max_mw_size, align 8
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %205, i8* %209, i64 %210)
  %212 = load i64, i64* @max_mw_size, align 8
  %213 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %214 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %203, %197, %189
  %216 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %217 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %215
  %221 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %222 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @UINT32_MAX, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %230 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i32, i8*, ...) @device_printf(i32 %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %228, i8* %232)
  %234 = load i32, i32* @ENXIO, align 4
  store i32 %234, i32* %9, align 4
  br label %489

235:                                              ; preds = %220, %215
  %236 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %237 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %236, i32 0, i32 5
  store i64 0, i64* %237, align 8
  %238 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %239 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %238, i32 0, i32 2
  store i64 0, i64* %239, align 8
  %240 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %241 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %240, i32 0, i32 4
  store i32* null, i32** %241, align 8
  %242 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %243 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %242, i32 0, i32 3
  store i64 0, i64* %243, align 8
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %247 = call i32 @ntb_mw_set_wc(i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %235
  %251 = load i32, i32* %10, align 4
  %252 = call i32 (i32, i8*, i32, ...) @ntb_printf(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %250, %235
  %254 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %257 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @ntb_set_mw(%struct.ntb_transport_ctx* %254, i32 %255, i64 %258)
  br label %260

260:                                              ; preds = %253
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  br label %158

263:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %266 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @imin(i32 %264, i32 %267)
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %16, align 4
  %270 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %271 = load i32, i32* %3, align 4
  %272 = call i8* @device_get_name(i32 %271)
  %273 = load i32, i32* %3, align 4
  %274 = call i32 @device_get_unit(i32 %273)
  %275 = call i32 @snprintf(i8* %270, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %272, i32 %274)
  %276 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %277 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %278 = call i32 @TUNABLE_STR_FETCH(i8* %276, i8* %277, i32 128)
  %279 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  store i8* %279, i8** %19, align 8
  store i32 0, i32* %10, align 4
  br label %280

280:                                              ; preds = %381, %263
  %281 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i8* %281, i8** %21, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %387

283:                                              ; preds = %280
  %284 = load i8*, i8** %21, align 8
  store i8* %284, i8** %20, align 8
  %285 = call i8* @strsep(i8** %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i8* %285, i8** %22, align 8
  %286 = load i8*, i8** %22, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load i8*, i8** %22, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 0
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  store i8* null, i8** %22, align 8
  br label %295

295:                                              ; preds = %294, %288, %283
  %296 = load i8*, i8** %20, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %307

298:                                              ; preds = %295
  %299 = load i8*, i8** %20, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load i8*, i8** %20, align 8
  %306 = call i32 @strtol(i8* %305, i32* null, i32 10)
  br label %311

307:                                              ; preds = %298, %295
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %14, align 4
  %310 = sub nsw i32 %308, %309
  br label %311

311:                                              ; preds = %307, %304
  %312 = phi i32 [ %306, %304 ], [ %310, %307 ]
  store i32 %312, i32* %13, align 4
  %313 = load i32, i32* %13, align 4
  %314 = icmp sle i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store i32 1, i32* %13, align 4
  br label %316

316:                                              ; preds = %315, %311
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %16, align 4
  %319 = load i32, i32* %14, align 4
  %320 = sub nsw i32 %318, %319
  %321 = icmp sgt i32 %317, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %316
  %323 = load i32, i32* %3, align 4
  %324 = call i32 (i32, i8*, ...) @device_printf(i32 %323, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %387

325:                                              ; preds = %316
  %326 = load i32, i32* @M_DEVBUF, align 4
  %327 = load i32, i32* @M_WAITOK, align 4
  %328 = load i32, i32* @M_ZERO, align 4
  %329 = or i32 %327, %328
  %330 = call i8* @malloc(i32 32, i32 %326, i32 %329)
  %331 = bitcast i8* %330 to %struct.ntb_transport_child*
  store %struct.ntb_transport_child* %331, %struct.ntb_transport_child** %6, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %334 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 8
  %335 = load i32, i32* %14, align 4
  %336 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %337 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %13, align 4
  %339 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %340 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* %3, align 4
  %342 = load i8*, i8** %22, align 8
  %343 = call i32* @device_add_child(i32 %341, i8* %342, i32 -1)
  %344 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %345 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %344, i32 0, i32 4
  store i32* %343, i32** %345, align 8
  %346 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %347 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %346, i32 0, i32 4
  %348 = load i32*, i32** %347, align 8
  %349 = icmp eq i32* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %325
  %351 = load i32, i32* %3, align 4
  %352 = call i32 (i32, i8*, ...) @device_printf(i32 %351, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %387

353:                                              ; preds = %325
  %354 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %355 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %354, i32 0, i32 4
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %358 = call i32 @device_set_ivars(i32* %356, %struct.ntb_transport_child* %357)
  %359 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %360 = load %struct.ntb_transport_child**, %struct.ntb_transport_child*** %5, align 8
  store %struct.ntb_transport_child* %359, %struct.ntb_transport_child** %360, align 8
  %361 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %6, align 8
  %362 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %361, i32 0, i32 3
  store %struct.ntb_transport_child** %362, %struct.ntb_transport_child*** %5, align 8
  %363 = load i64, i64* @bootverbose, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %353
  %366 = load i32, i32* %3, align 4
  %367 = load i32, i32* %10, align 4
  %368 = load i8*, i8** %22, align 8
  %369 = load i32, i32* %14, align 4
  %370 = call i32 (i32, i8*, ...) @device_printf(i32 %366, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %367, i8* %368, i32 %369)
  %371 = load i32, i32* %13, align 4
  %372 = icmp sgt i32 %371, 1
  br i1 %372, label %373, label %379

373:                                              ; preds = %365
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* %13, align 4
  %376 = add nsw i32 %374, %375
  %377 = sub nsw i32 %376, 1
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %377)
  br label %379

379:                                              ; preds = %373, %365
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %381

381:                                              ; preds = %379, %353
  %382 = load i32, i32* %13, align 4
  %383 = load i32, i32* %14, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %280

387:                                              ; preds = %350, %322, %280
  %388 = load i32, i32* %14, align 4
  %389 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %390 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %389, i32 0, i32 2
  store i32 %388, i32* %390, align 8
  %391 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %392 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = mul i64 %394, 72
  %396 = trunc i64 %395 to i32
  %397 = load i32, i32* @M_NTB_T, align 4
  %398 = load i32, i32* @M_WAITOK, align 4
  %399 = load i32, i32* @M_ZERO, align 4
  %400 = or i32 %398, %399
  %401 = call i8* @malloc(i32 %396, i32 %397, i32 %400)
  %402 = bitcast i8* %401 to %struct.ntb_transport_mw*
  %403 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %404 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %403, i32 0, i32 5
  store %struct.ntb_transport_mw* %402, %struct.ntb_transport_mw** %404, align 8
  store i32 0, i32* %10, align 4
  br label %405

405:                                              ; preds = %415, %387
  %406 = load i32, i32* %10, align 4
  %407 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %408 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %418

411:                                              ; preds = %405
  %412 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %413 = load i32, i32* %10, align 4
  %414 = call i32 @ntb_transport_init_queue(%struct.ntb_transport_ctx* %412, i32 %413)
  br label %415

415:                                              ; preds = %411
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %10, align 4
  br label %405

418:                                              ; preds = %405
  %419 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %420 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %419, i32 0, i32 9
  %421 = call i32 @callout_init(i32* %420, i32 0)
  %422 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %423 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %422, i32 0, i32 6
  %424 = call i32 @callout_init(i32* %423, i32 0)
  %425 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %426 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %425, i32 0, i32 8
  %427 = load i32, i32* @ntb_transport_link_cleanup_work, align 4
  %428 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %429 = call i32 @TASK_INIT(i32* %426, i32 0, i32 %427, %struct.ntb_transport_ctx* %428)
  %430 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %431 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %430, i32 0, i32 3
  store i32 0, i32* %431, align 4
  %432 = load i32, i32* %3, align 4
  %433 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %434 = call i32 @ntb_set_ctx(i32 %432, %struct.ntb_transport_ctx* %433, i32* @ntb_transport_ops)
  store i32 %434, i32* %9, align 4
  %435 = load i32, i32* %9, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %418
  br label %489

438:                                              ; preds = %418
  %439 = load i32, i32* %3, align 4
  %440 = load i32, i32* @NTB_SPEED_AUTO, align 4
  %441 = load i32, i32* @NTB_WIDTH_AUTO, align 4
  %442 = call i32 @ntb_link_enable(i32 %439, i32 %440, i32 %441)
  store i32 0, i32* %10, align 4
  br label %443

443:                                              ; preds = %474, %438
  %444 = load i32, i32* %10, align 4
  %445 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %446 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp slt i32 %444, %447
  br i1 %448, label %449, label %477

449:                                              ; preds = %443
  %450 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %451 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %450, i32 0, i32 4
  %452 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %451, align 8
  %453 = load i32, i32* %10, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %452, i64 %454
  store %struct.ntb_transport_mw* %455, %struct.ntb_transport_mw** %7, align 8
  %456 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %457 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* %10, align 4
  %460 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %461 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %460, i32 0, i32 3
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %464 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %463, i32 0, i32 2
  %465 = load i64, i64* %464, align 8
  %466 = call i32 @ntb_mw_set_trans(i32 %458, i32 %459, i64 %462, i64 %465)
  store i32 %466, i32* %9, align 4
  %467 = load i32, i32* %9, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %449
  %470 = load i32, i32* %10, align 4
  %471 = load i32, i32* %9, align 4
  %472 = call i32 (i32, i8*, i32, ...) @ntb_printf(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %470, i32 %471)
  br label %473

473:                                              ; preds = %469, %449
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %10, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %10, align 4
  br label %443

477:                                              ; preds = %443
  %478 = load i64, i64* @enable_xeon_watchdog, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %477
  %481 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %482 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %481, i32 0, i32 6
  %483 = load i32, i32* @xeon_link_watchdog_hb, align 4
  %484 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %485 = call i32 @callout_reset(i32* %482, i32 0, i32 %483, %struct.ntb_transport_ctx* %484)
  br label %486

486:                                              ; preds = %480, %477
  %487 = load i32, i32* %3, align 4
  %488 = call i32 @bus_generic_attach(i32 %487)
  store i32 0, i32* %2, align 4
  br label %501

489:                                              ; preds = %437, %226, %188
  %490 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %491 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %490, i32 0, i32 5
  %492 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %491, align 8
  %493 = load i32, i32* @M_NTB_T, align 4
  %494 = call i32 @free(%struct.ntb_transport_mw* %492, i32 %493)
  %495 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %496 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %495, i32 0, i32 4
  %497 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %496, align 8
  %498 = load i32, i32* @M_NTB_T, align 4
  %499 = call i32 @free(%struct.ntb_transport_mw* %497, i32 %498)
  %500 = load i32, i32* %9, align 4
  store i32 %500, i32* %2, align 4
  br label %501

501:                                              ; preds = %489, %486, %139, %112, %87, %55
  %502 = load i32, i32* %2, align 4
  ret i32 %502
}

declare dso_local %struct.ntb_transport_ctx* @device_get_softc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ntb_mw_count(i32) #1

declare dso_local i32 @ntb_spad_count(i32) #1

declare dso_local i32 @ntb_db_valid_mask(i32) #1

declare dso_local i32 @flsll(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ntb_mw_get_range(i32, i32, i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ntb_mw_set_wc(i32, i32, i32) #1

declare dso_local i32 @ntb_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ntb_set_mw(%struct.ntb_transport_ctx*, i32, i64) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ntb_transport_child*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntb_transport_init_queue(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ntb_transport_ctx*) #1

declare dso_local i32 @ntb_set_ctx(i32, %struct.ntb_transport_ctx*, i32*) #1

declare dso_local i32 @ntb_link_enable(i32, i32, i32) #1

declare dso_local i32 @ntb_mw_set_trans(i32, i32, i64, i64) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ntb_transport_ctx*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @free(%struct.ntb_transport_mw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
