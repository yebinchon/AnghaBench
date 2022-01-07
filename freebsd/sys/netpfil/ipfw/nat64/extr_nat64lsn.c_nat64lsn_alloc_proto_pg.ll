; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_alloc_proto_pg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_alloc_proto_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nat64lsn_alias = type { i32, i32, i32 }
%struct.nat64lsn_pgchunk = type { %struct.nat64lsn_pg** }
%struct.nat64lsn_pg = type { i32, %struct.nat64lsn_pg**, %struct.nat64lsn_pg**, i64, i32, i32, %struct.nat64lsn_pg*, i32* }

@nat64lsn_pgchunk_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@nat64lsn_pg_zone = common dso_local global i32 0, align 4
@M_NAT64LSN = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@nat64lsn_state_zone = common dso_local global i32 0, align 4
@NAT64_MIN_PORT = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@spgcreated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.nat64lsn_alias*, i32*, i32*, %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pg**, i32)* @nat64lsn_alloc_proto_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_alloc_proto_pg(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_alias* %1, i32* %2, i32* %3, %struct.nat64lsn_pgchunk** %4, %struct.nat64lsn_pg** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nat64lsn_cfg*, align 8
  %10 = alloca %struct.nat64lsn_alias*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nat64lsn_pgchunk**, align 8
  %14 = alloca %struct.nat64lsn_pg**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nat64lsn_pg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %9, align 8
  store %struct.nat64lsn_alias* %1, %struct.nat64lsn_alias** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.nat64lsn_pgchunk** %4, %struct.nat64lsn_pgchunk*** %13, align 8
  store %struct.nat64lsn_pg** %5, %struct.nat64lsn_pg*** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @nat64lsn_find_pg_place(i32* %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = call i32 @PG_ERROR(i32 1)
  store i32 %25, i32* %8, align 4
  br label %286

26:                                               ; preds = %7
  %27 = load i32, i32* %18, align 4
  %28 = sdiv i32 %27, 32
  store i32 %28, i32* %19, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %19, align 4
  %32 = call i32 @ISSET32(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @nat64lsn_pgchunk_zone, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call i8* @uma_zalloc(i32 %35, i32 %36)
  %38 = bitcast i8* %37 to %struct.nat64lsn_pgchunk*
  %39 = load %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pgchunk*** %13, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %39, i64 %41
  store %struct.nat64lsn_pgchunk* %38, %struct.nat64lsn_pgchunk** %42, align 8
  %43 = load %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pgchunk*** %13, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %43, i64 %45
  %47 = load %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %46, align 8
  %48 = icmp eq %struct.nat64lsn_pgchunk* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = call i32 @PG_ERROR(i32 2)
  store i32 %50, i32* %8, align 4
  br label %286

51:                                               ; preds = %34
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @ck_pr_bts_32(i32* %52, i32 %53)
  %55 = call i32 (...) @ck_pr_fence_store()
  br label %56

56:                                               ; preds = %51, %26
  %57 = load i32, i32* @nat64lsn_pg_zone, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i8* @uma_zalloc(i32 %57, i32 %58)
  %60 = bitcast i8* %59 to %struct.nat64lsn_pg*
  store %struct.nat64lsn_pg* %60, %struct.nat64lsn_pg** %16, align 8
  %61 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %62 = icmp eq %struct.nat64lsn_pg* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 @PG_ERROR(i32 3)
  store i32 %64, i32* %8, align 4
  br label %286

65:                                               ; preds = %56
  %66 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %67 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %70 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %72 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %168

75:                                               ; preds = %65
  %76 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %77 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @M_NAT64LSN, align 4
  %83 = load i32, i32* @M_NOWAIT, align 4
  %84 = call i8* @malloc(i32 %81, i32 %82, i32 %83)
  %85 = bitcast i8* %84 to %struct.nat64lsn_pg**
  %86 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %87 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %86, i32 0, i32 2
  store %struct.nat64lsn_pg** %85, %struct.nat64lsn_pg*** %87, align 8
  %88 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %89 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %88, i32 0, i32 2
  %90 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %89, align 8
  %91 = icmp eq %struct.nat64lsn_pg** %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load i32, i32* @nat64lsn_pg_zone, align 4
  %94 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %95 = call i32 @uma_zfree(i32 %93, %struct.nat64lsn_pg* %94)
  %96 = call i32 @PG_ERROR(i32 4)
  store i32 %96, i32* %8, align 4
  br label %286

97:                                               ; preds = %75
  %98 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %99 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @M_NAT64LSN, align 4
  %105 = load i32, i32* @M_NOWAIT, align 4
  %106 = load i32, i32* @M_ZERO, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @malloc(i32 %103, i32 %104, i32 %107)
  %109 = bitcast i8* %108 to %struct.nat64lsn_pg**
  %110 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %111 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %110, i32 0, i32 1
  store %struct.nat64lsn_pg** %109, %struct.nat64lsn_pg*** %111, align 8
  %112 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %113 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %112, i32 0, i32 1
  %114 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %113, align 8
  %115 = icmp eq %struct.nat64lsn_pg** %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %97
  %117 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %118 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %117, i32 0, i32 2
  %119 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %118, align 8
  %120 = load i32, i32* @M_NAT64LSN, align 4
  %121 = call i32 @free(%struct.nat64lsn_pg** %119, i32 %120)
  %122 = load i32, i32* @nat64lsn_pg_zone, align 4
  %123 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %124 = call i32 @uma_zfree(i32 %122, %struct.nat64lsn_pg* %123)
  %125 = call i32 @PG_ERROR(i32 5)
  store i32 %125, i32* %8, align 4
  br label %286

126:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %130 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %127
  %134 = load i32, i32* @nat64lsn_state_zone, align 4
  %135 = load i32, i32* @M_NOWAIT, align 4
  %136 = call i8* @uma_zalloc(i32 %134, i32 %135)
  %137 = bitcast i8* %136 to %struct.nat64lsn_pg*
  %138 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %139 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %138, i32 0, i32 1
  %140 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %140, i64 %142
  store %struct.nat64lsn_pg* %137, %struct.nat64lsn_pg** %143, align 8
  %144 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %145 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %144, i32 0, i32 1
  %146 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %146, i64 %148
  %150 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %149, align 8
  %151 = icmp eq %struct.nat64lsn_pg* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %133
  br label %251

153:                                              ; preds = %133
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %127

157:                                              ; preds = %127
  %158 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %159 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %158, i32 0, i32 2
  %160 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %159, align 8
  %161 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %162 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @memset(%struct.nat64lsn_pg** %160, i32 255, i32 %166)
  br label %188

168:                                              ; preds = %65
  %169 = load i32, i32* @nat64lsn_state_zone, align 4
  %170 = load i32, i32* @M_NOWAIT, align 4
  %171 = call i8* @uma_zalloc(i32 %169, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %174 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %173, i32 0, i32 7
  store i32* %172, i32** %174, align 8
  %175 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %176 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %168
  %180 = load i32, i32* @nat64lsn_pg_zone, align 4
  %181 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %182 = call i32 @uma_zfree(i32 %180, %struct.nat64lsn_pg* %181)
  %183 = call i32 @PG_ERROR(i32 6)
  store i32 %183, i32* %8, align 4
  br label %286

184:                                              ; preds = %168
  %185 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %186 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %185, i32 0, i32 6
  %187 = call i32 @memset(%struct.nat64lsn_pg** %186, i32 255, i32 4)
  br label %188

188:                                              ; preds = %184, %157
  %189 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %190 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @SET_AGE(i32 %191)
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %195 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  %196 = load i64, i64* @NAT64_MIN_PORT, align 8
  %197 = load i32, i32* %18, align 4
  %198 = mul nsw i32 64, %197
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %196, %199
  %201 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %202 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  %203 = load %struct.nat64lsn_pgchunk**, %struct.nat64lsn_pgchunk*** %13, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %203, i64 %205
  %207 = load %struct.nat64lsn_pgchunk*, %struct.nat64lsn_pgchunk** %206, align 8
  %208 = getelementptr inbounds %struct.nat64lsn_pgchunk, %struct.nat64lsn_pgchunk* %207, i32 0, i32 0
  %209 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = srem i32 %210, 32
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %209, i64 %212
  %214 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %215 = call i32 @ck_pr_store_ptr(%struct.nat64lsn_pg** %213, %struct.nat64lsn_pg* %214)
  %216 = call i32 (...) @ck_pr_fence_store()
  %217 = load i32*, i32** %12, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sdiv i32 %218, 32
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %18, align 4
  %223 = srem i32 %222, 32
  %224 = call i32 @ck_pr_bts_32(i32* %221, i32 %223)
  %225 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %14, align 8
  %226 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %227 = call i32 @ck_pr_store_ptr(%struct.nat64lsn_pg** %225, %struct.nat64lsn_pg* %226)
  %228 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %10, align 8
  %229 = call i32 @ALIAS_LOCK(%struct.nat64lsn_alias* %228)
  %230 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %10, align 8
  %231 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %230, i32 0, i32 2
  %232 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %233 = load i32, i32* @entries, align 4
  %234 = call i32 @CK_SLIST_INSERT_HEAD(i32* %231, %struct.nat64lsn_pg* %232, i32 %233)
  %235 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %10, align 8
  %236 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @SET_AGE(i32 %237)
  %239 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %10, align 8
  %240 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  %243 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %10, align 8
  %244 = call i32 @ALIAS_UNLOCK(%struct.nat64lsn_alias* %243)
  %245 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %246 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* @spgcreated, align 4
  %249 = call i32 @NAT64STAT_INC(i32* %247, i32 %248)
  %250 = call i32 @PG_ERROR(i32 0)
  store i32 %250, i32* %8, align 4
  br label %286

251:                                              ; preds = %152
  store i32 0, i32* %17, align 4
  br label %252

252:                                              ; preds = %268, %251
  %253 = load i32, i32* %17, align 4
  %254 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %255 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %252
  %259 = load i32, i32* @nat64lsn_state_zone, align 4
  %260 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %261 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %260, i32 0, i32 1
  %262 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %261, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %262, i64 %264
  %266 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %265, align 8
  %267 = call i32 @uma_zfree(i32 %259, %struct.nat64lsn_pg* %266)
  br label %268

268:                                              ; preds = %258
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %17, align 4
  br label %252

271:                                              ; preds = %252
  %272 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %273 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %272, i32 0, i32 2
  %274 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %273, align 8
  %275 = load i32, i32* @M_NAT64LSN, align 4
  %276 = call i32 @free(%struct.nat64lsn_pg** %274, i32 %275)
  %277 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %278 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %277, i32 0, i32 1
  %279 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %278, align 8
  %280 = load i32, i32* @M_NAT64LSN, align 4
  %281 = call i32 @free(%struct.nat64lsn_pg** %279, i32 %280)
  %282 = load i32, i32* @nat64lsn_pg_zone, align 4
  %283 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %16, align 8
  %284 = call i32 @uma_zfree(i32 %282, %struct.nat64lsn_pg* %283)
  %285 = call i32 @PG_ERROR(i32 7)
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %271, %188, %179, %116, %92, %63, %49, %24
  %287 = load i32, i32* %8, align 4
  ret i32 %287
}

declare dso_local i32 @nat64lsn_find_pg_place(i32*) #1

declare dso_local i32 @PG_ERROR(i32) #1

declare dso_local i32 @ISSET32(i32, i32) #1

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @ck_pr_bts_32(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.nat64lsn_pg*) #1

declare dso_local i32 @free(%struct.nat64lsn_pg**, i32) #1

declare dso_local i32 @memset(%struct.nat64lsn_pg**, i32, i32) #1

declare dso_local i32 @SET_AGE(i32) #1

declare dso_local i32 @ck_pr_store_ptr(%struct.nat64lsn_pg**, %struct.nat64lsn_pg*) #1

declare dso_local i32 @ALIAS_LOCK(%struct.nat64lsn_alias*) #1

declare dso_local i32 @CK_SLIST_INSERT_HEAD(i32*, %struct.nat64lsn_pg*, i32) #1

declare dso_local i32 @ALIAS_UNLOCK(%struct.nat64lsn_alias*) #1

declare dso_local i32 @NAT64STAT_INC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
