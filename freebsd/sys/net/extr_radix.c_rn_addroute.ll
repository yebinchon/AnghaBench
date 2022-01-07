; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i16, i64, i64, i32, i64, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, i64, i32 }
%struct.radix_head = type { i32, %struct.radix_node* }
%struct.radix_mask = type { i16, i32, i64, i32, %struct.TYPE_2__*, %struct.radix_mask* }
%struct.TYPE_2__ = type { i64 }

@RNF_ACTIVE = common dso_local global i32 0, align 4
@RNF_NORMAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Non-unique normal route, mask not entered\0A\00", align 1
@rn_clist = common dso_local global %struct.radix_node* null, align 8
@rn_nodenum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_addroute(i8* %0, i8* %1, %struct.radix_head* %2, %struct.radix_node* %3) #0 {
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radix_head*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca %struct.radix_node*, align 8
  %15 = alloca %struct.radix_node*, align 8
  %16 = alloca %struct.radix_node*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.radix_mask*, align 8
  %22 = alloca %struct.radix_mask**, align 8
  %23 = alloca %struct.radix_node*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.radix_head* %2, %struct.radix_head** %8, align 8
  store %struct.radix_node* %3, %struct.radix_node** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %11, align 8
  store %struct.radix_node* null, %struct.radix_node** %13, align 8
  %28 = load %struct.radix_head*, %struct.radix_head** %8, align 8
  %29 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %28, i32 0, i32 1
  %30 = load %struct.radix_node*, %struct.radix_node** %29, align 8
  store %struct.radix_node* %30, %struct.radix_node** %16, align 8
  store i16 0, i16* %17, align 2
  store i16 0, i16* %18, align 2
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %4
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.radix_head*, %struct.radix_head** %8, align 8
  %36 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %39 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.radix_node* @rn_addmask(i64 %34, i32 %37, i32 0, i32 %40)
  store %struct.radix_node* %41, %struct.radix_node** %13, align 8
  %42 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %43 = icmp eq %struct.radix_node* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %439

45:                                               ; preds = %33
  %46 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %47 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  store i16 %48, i16* %18, align 2
  %49 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %50 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 8
  %52 = sext i16 %51 to i32
  %53 = sub nsw i32 -1, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %17, align 2
  %55 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %56 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %45, %4
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.radix_head*, %struct.radix_head** %8, align 8
  %61 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %62 = call %struct.radix_node* @rn_insert(i64 %59, %struct.radix_head* %60, i32* %19, %struct.radix_node* %61)
  store %struct.radix_node* %62, %struct.radix_node** %14, align 8
  store %struct.radix_node* %62, %struct.radix_node** %15, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %184

65:                                               ; preds = %58
  %66 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %66, %struct.radix_node** %12, align 8
  br label %67

67:                                               ; preds = %109, %65
  %68 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %69 = icmp ne %struct.radix_node* %68, null
  br i1 %69, label %70, label %114

70:                                               ; preds = %67
  %71 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %72 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %439

77:                                               ; preds = %70
  %78 = load i64, i64* %11, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %82 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i16, i16* %18, align 2
  %87 = sext i16 %86 to i32
  %88 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %89 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %88, i32 0, i32 0
  %90 = load i16, i16* %89, align 8
  %91 = sext i16 %90 to i32
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %107, label %93

93:                                               ; preds = %85
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %96 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @rn_refines(i64 %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %103 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @rn_lexobetter(i64 %101, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %93, %85, %77
  br label %114

108:                                              ; preds = %100, %80
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %110, %struct.radix_node** %12, align 8
  %111 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %112 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %111, i32 0, i32 6
  %113 = load %struct.radix_node*, %struct.radix_node** %112, align 8
  store %struct.radix_node* %113, %struct.radix_node** %14, align 8
  br label %67

114:                                              ; preds = %107, %67
  %115 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %116 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %117 = icmp eq %struct.radix_node* %115, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %114
  %119 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  store %struct.radix_node* %119, %struct.radix_node** %23, align 8
  %120 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %121 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %121, %struct.radix_node** %14, align 8
  %122 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %121, i32 0, i32 6
  store %struct.radix_node* %120, %struct.radix_node** %122, align 8
  %123 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %124 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %127 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %129 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %128, i32 0, i32 5
  %130 = load %struct.radix_node*, %struct.radix_node** %129, align 8
  store %struct.radix_node* %130, %struct.radix_node** %13, align 8
  %131 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %132 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %131, i32 0, i32 5
  store %struct.radix_node* %130, %struct.radix_node** %132, align 8
  %133 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %134 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %135 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %134, i32 0, i32 5
  store %struct.radix_node* %133, %struct.radix_node** %135, align 8
  %136 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %137 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %136, i32 0, i32 8
  %138 = load %struct.radix_node*, %struct.radix_node** %137, align 8
  %139 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %140 = icmp eq %struct.radix_node* %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %118
  %142 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %143 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %144 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %143, i32 0, i32 8
  store %struct.radix_node* %142, %struct.radix_node** %144, align 8
  br label %149

145:                                              ; preds = %118
  %146 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %147 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %148 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %147, i32 0, i32 7
  store %struct.radix_node* %146, %struct.radix_node** %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  %150 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %150, %struct.radix_node** %15, align 8
  %151 = load %struct.radix_node*, %struct.radix_node** %23, align 8
  store %struct.radix_node* %151, %struct.radix_node** %13, align 8
  br label %175

152:                                              ; preds = %114
  %153 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %154 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %153, i32 0, i32 6
  %155 = load %struct.radix_node*, %struct.radix_node** %154, align 8
  %156 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %156, %struct.radix_node** %14, align 8
  %157 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %156, i32 0, i32 6
  store %struct.radix_node* %155, %struct.radix_node** %157, align 8
  %158 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %159 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %160 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %159, i32 0, i32 6
  store %struct.radix_node* %158, %struct.radix_node** %160, align 8
  %161 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %162 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %163 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %162, i32 0, i32 5
  store %struct.radix_node* %161, %struct.radix_node** %163, align 8
  %164 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %165 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %164, i32 0, i32 6
  %166 = load %struct.radix_node*, %struct.radix_node** %165, align 8
  %167 = icmp ne %struct.radix_node* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %152
  %169 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %170 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %171 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %170, i32 0, i32 6
  %172 = load %struct.radix_node*, %struct.radix_node** %171, align 8
  %173 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %172, i32 0, i32 5
  store %struct.radix_node* %169, %struct.radix_node** %173, align 8
  br label %174

174:                                              ; preds = %168, %152
  br label %175

175:                                              ; preds = %174, %149
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %178 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %180 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %179, i32 0, i32 0
  store i16 -1, i16* %180, align 8
  %181 = load i32, i32* @RNF_ACTIVE, align 4
  %182 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %183 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %175, %58
  %185 = load i64, i64* %11, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %184
  %188 = load i64, i64* %11, align 8
  %189 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %190 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %192 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %191, i32 0, i32 0
  %193 = load i16, i16* %192, align 8
  %194 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %195 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %194, i32 0, i32 0
  store i16 %193, i16* %195, align 8
  %196 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %197 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @RNF_NORMAL, align 4
  %200 = and i32 %198, %199
  %201 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %202 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %187, %184
  %206 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %207 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %206, i32 0, i32 5
  %208 = load %struct.radix_node*, %struct.radix_node** %207, align 8
  store %struct.radix_node* %208, %struct.radix_node** %12, align 8
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %313

212:                                              ; preds = %205
  %213 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %214 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %213, i32 0, i32 0
  %215 = load i16, i16* %214, align 8
  %216 = sext i16 %215 to i32
  %217 = sub nsw i32 -1, %216
  %218 = trunc i32 %217 to i16
  store i16 %218, i16* %18, align 2
  %219 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %220 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %219, i32 0, i32 7
  %221 = load %struct.radix_node*, %struct.radix_node** %220, align 8
  %222 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %223 = icmp eq %struct.radix_node* %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %212
  %225 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %226 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %225, i32 0, i32 8
  %227 = load %struct.radix_node*, %struct.radix_node** %226, align 8
  store %struct.radix_node* %227, %struct.radix_node** %13, align 8
  br label %232

228:                                              ; preds = %212
  %229 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %230 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %229, i32 0, i32 7
  %231 = load %struct.radix_node*, %struct.radix_node** %230, align 8
  store %struct.radix_node* %231, %struct.radix_node** %13, align 8
  br label %232

232:                                              ; preds = %228, %224
  %233 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %234 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %233, i32 0, i32 0
  %235 = load i16, i16* %234, align 8
  %236 = sext i16 %235 to i32
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %279

238:                                              ; preds = %232
  %239 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %240 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %239, i32 0, i32 4
  %241 = bitcast i64* %240 to %struct.radix_mask**
  store %struct.radix_mask** %241, %struct.radix_mask*** %22, align 8
  br label %242

242:                                              ; preds = %274, %238
  %243 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %244 = icmp ne %struct.radix_node* %243, null
  br i1 %244, label %245, label %278

245:                                              ; preds = %242
  %246 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %247 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %273

250:                                              ; preds = %245
  %251 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %252 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %251, i32 0, i32 0
  %253 = load i16, i16* %252, align 8
  %254 = sext i16 %253 to i32
  %255 = load i16, i16* %18, align 2
  %256 = sext i16 %255 to i32
  %257 = icmp sge i32 %254, %256
  br i1 %257, label %258, label %273

258:                                              ; preds = %250
  %259 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %260 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %258
  %264 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %265 = call %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node* %264, %struct.radix_mask* null)
  store %struct.radix_mask* %265, %struct.radix_mask** %21, align 8
  %266 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* %265, %struct.radix_mask** %266, align 8
  %267 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %268 = icmp ne %struct.radix_mask* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %271 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %270, i32 0, i32 5
  store %struct.radix_mask** %271, %struct.radix_mask*** %22, align 8
  br label %272

272:                                              ; preds = %269, %263
  br label %273

273:                                              ; preds = %272, %258, %250, %245
  br label %274

274:                                              ; preds = %273
  %275 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %276 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %275, i32 0, i32 6
  %277 = load %struct.radix_node*, %struct.radix_node** %276, align 8
  store %struct.radix_node* %277, %struct.radix_node** %13, align 8
  br label %242

278:                                              ; preds = %242
  br label %312

279:                                              ; preds = %232
  %280 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %281 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %311

284:                                              ; preds = %279
  %285 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %286 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %285, i32 0, i32 4
  %287 = bitcast i64* %286 to %struct.radix_mask**
  store %struct.radix_mask** %287, %struct.radix_mask*** %22, align 8
  br label %288

288:                                              ; preds = %302, %284
  %289 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %290 = load %struct.radix_mask*, %struct.radix_mask** %289, align 8
  store %struct.radix_mask* %290, %struct.radix_mask** %21, align 8
  %291 = icmp ne %struct.radix_mask* %290, null
  br i1 %291, label %292, label %305

292:                                              ; preds = %288
  %293 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %294 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %293, i32 0, i32 0
  %295 = load i16, i16* %294, align 8
  %296 = sext i16 %295 to i32
  %297 = load i16, i16* %18, align 2
  %298 = sext i16 %297 to i32
  %299 = icmp sge i32 %296, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  br label %305

301:                                              ; preds = %292
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %304 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %303, i32 0, i32 5
  store %struct.radix_mask** %304, %struct.radix_mask*** %22, align 8
  br label %288

305:                                              ; preds = %300, %288
  %306 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %307 = ptrtoint %struct.radix_mask* %306 to i64
  %308 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %309 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %308, i32 0, i32 4
  store i64 %307, i64* %309, align 8
  %310 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* null, %struct.radix_mask** %310, align 8
  br label %311

311:                                              ; preds = %305, %279
  br label %312

312:                                              ; preds = %311, %278
  br label %313

313:                                              ; preds = %312, %211
  %314 = load i64, i64* %11, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %324, label %316

316:                                              ; preds = %313
  %317 = load i16, i16* %17, align 2
  %318 = sext i16 %317 to i32
  %319 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %320 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %319, i32 0, i32 0
  %321 = load i16, i16* %320, align 8
  %322 = sext i16 %321 to i32
  %323 = icmp sgt i32 %318, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %316, %313
  %325 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %325, %struct.radix_node** %5, align 8
  br label %439

326:                                              ; preds = %316
  %327 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %328 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %327, i32 0, i32 0
  %329 = load i16, i16* %328, align 8
  store i16 %329, i16* %18, align 2
  br label %330

330:                                              ; preds = %347, %326
  %331 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %331, %struct.radix_node** %13, align 8
  %332 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %333 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %332, i32 0, i32 5
  %334 = load %struct.radix_node*, %struct.radix_node** %333, align 8
  store %struct.radix_node* %334, %struct.radix_node** %12, align 8
  br label %335

335:                                              ; preds = %330
  %336 = load i16, i16* %17, align 2
  %337 = sext i16 %336 to i32
  %338 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %339 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %338, i32 0, i32 0
  %340 = load i16, i16* %339, align 8
  %341 = sext i16 %340 to i32
  %342 = icmp sle i32 %337, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %335
  %344 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %345 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %346 = icmp ne %struct.radix_node* %344, %345
  br label %347

347:                                              ; preds = %343, %335
  %348 = phi i1 [ false, %335 ], [ %346, %343 ]
  br i1 %348, label %330, label %349

349:                                              ; preds = %347
  %350 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %351 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %350, i32 0, i32 4
  %352 = bitcast i64* %351 to %struct.radix_mask**
  store %struct.radix_mask** %352, %struct.radix_mask*** %22, align 8
  br label %353

353:                                              ; preds = %429, %349
  %354 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %355 = load %struct.radix_mask*, %struct.radix_mask** %354, align 8
  store %struct.radix_mask* %355, %struct.radix_mask** %21, align 8
  %356 = icmp ne %struct.radix_mask* %355, null
  br i1 %356, label %357, label %432

357:                                              ; preds = %353
  %358 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %359 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %358, i32 0, i32 0
  %360 = load i16, i16* %359, align 8
  %361 = sext i16 %360 to i32
  %362 = load i16, i16* %18, align 2
  %363 = sext i16 %362 to i32
  %364 = icmp slt i32 %361, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %357
  br label %429

366:                                              ; preds = %357
  %367 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %368 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %367, i32 0, i32 0
  %369 = load i16, i16* %368, align 8
  %370 = sext i16 %369 to i32
  %371 = load i16, i16* %18, align 2
  %372 = sext i16 %371 to i32
  %373 = icmp sgt i32 %370, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  br label %432

375:                                              ; preds = %366
  %376 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %377 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @RNF_NORMAL, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %399

382:                                              ; preds = %375
  %383 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %384 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %383, i32 0, i32 4
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %20, align 8
  %388 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %389 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @RNF_NORMAL, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %382
  %395 = load i32, i32* @LOG_ERR, align 4
  %396 = call i32 @log(i32 %395, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %397 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %397, %struct.radix_node** %5, align 8
  br label %439

398:                                              ; preds = %382
  br label %403

399:                                              ; preds = %375
  %400 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %401 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %20, align 8
  br label %403

403:                                              ; preds = %399, %398
  %404 = load i64, i64* %20, align 8
  %405 = load i64, i64* %11, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %417

407:                                              ; preds = %403
  %408 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %409 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 8
  %412 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %413 = ptrtoint %struct.radix_mask* %412 to i64
  %414 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %415 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %414, i32 0, i32 4
  store i64 %413, i64* %415, align 8
  %416 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %416, %struct.radix_node** %5, align 8
  br label %439

417:                                              ; preds = %403
  %418 = load i64, i64* %11, align 8
  %419 = load i64, i64* %20, align 8
  %420 = call i64 @rn_refines(i64 %418, i64 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %417
  %423 = load i64, i64* %11, align 8
  %424 = load i64, i64* %20, align 8
  %425 = call i64 @rn_lexobetter(i64 %423, i64 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %422, %417
  br label %432

428:                                              ; preds = %422
  br label %429

429:                                              ; preds = %428, %365
  %430 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %431 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %430, i32 0, i32 5
  store %struct.radix_mask** %431, %struct.radix_mask*** %22, align 8
  br label %353

432:                                              ; preds = %427, %374, %353
  %433 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %434 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %435 = load %struct.radix_mask*, %struct.radix_mask** %434, align 8
  %436 = call %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node* %433, %struct.radix_mask* %435)
  %437 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* %436, %struct.radix_mask** %437, align 8
  %438 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %438, %struct.radix_node** %5, align 8
  br label %439

439:                                              ; preds = %432, %407, %394, %324, %76, %44
  %440 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  ret %struct.radix_node* %440
}

declare dso_local %struct.radix_node* @rn_addmask(i64, i32, i32, i32) #1

declare dso_local %struct.radix_node* @rn_insert(i64, %struct.radix_head*, i32*, %struct.radix_node*) #1

declare dso_local i64 @rn_refines(i64, i64) #1

declare dso_local i64 @rn_lexobetter(i64, i64) #1

declare dso_local %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node*, %struct.radix_mask*) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
