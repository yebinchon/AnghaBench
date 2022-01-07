; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_getfid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_getfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileid_desc = type { i64, i32 }
%struct.udf_dirstream = type { i64, i64, i64, i32, i64, i32, i64, i32*, %struct.fileid_desc*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@M_UDFFID = common dso_local global i32 0, align 4
@UDF_FID_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"udf: invalid FID fragment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"udf: invalid FID\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fileid_desc* (%struct.udf_dirstream*)* @udf_getfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fileid_desc* @udf_getfid(%struct.udf_dirstream* %0) #0 {
  %2 = alloca %struct.fileid_desc*, align 8
  %3 = alloca %struct.udf_dirstream*, align 8
  %4 = alloca %struct.fileid_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.udf_dirstream* %0, %struct.udf_dirstream** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %9 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %12 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  %15 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %16 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %21 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %20, i32 0, i32 3
  store i32 0, i32* %21, align 8
  store %struct.fileid_desc* null, %struct.fileid_desc** %2, align 8
  br label %303

22:                                               ; preds = %1
  %23 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %24 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %29 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %31 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %34 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %33, i32 0, i32 4
  %35 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %36 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %39 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %38, i32 0, i32 10
  %40 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %41 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %40, i32 0, i32 8
  %42 = call i32 @udf_readatoffset(i32 %32, i64* %34, i64 %37, i32** %39, %struct.fileid_desc** %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %27
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %48 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %50 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %49, i32 0, i32 10
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %55 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @brelse(i32* %56)
  br label %58

58:                                               ; preds = %53, %45
  store %struct.fileid_desc* null, %struct.fileid_desc** %2, align 8
  br label %303

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %62 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %67 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %72 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %71, i32 0, i32 5
  store i32 0, i32* %72, align 8
  %73 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %74 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @M_UDFFID, align 4
  %77 = call i32 @free(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %65, %60
  %79 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %80 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %79, i32 0, i32 8
  %81 = load %struct.fileid_desc*, %struct.fileid_desc** %80, align 8
  %82 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %83 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %81, i64 %84
  store %struct.fileid_desc* %85, %struct.fileid_desc** %4, align 8
  %86 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %87 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UDF_FID_SIZE, align 8
  %90 = add i64 %88, %89
  %91 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %92 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %90, %93
  br i1 %94, label %114, label %95

95:                                               ; preds = %78
  %96 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %97 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %100 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @le16toh(i32 %101)
  %103 = add i64 %98, %102
  %104 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %105 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  %108 = load i64, i64* @UDF_FID_SIZE, align 8
  %109 = add i64 %107, %108
  %110 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %111 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ugt i64 %109, %112
  br i1 %113, label %114, label %257

114:                                              ; preds = %95, %78
  %115 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %116 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %119 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %125 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %124, i32 0, i32 9
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %123, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %114
  %131 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %134 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  store %struct.fileid_desc* null, %struct.fileid_desc** %2, align 8
  br label %303

135:                                              ; preds = %114
  %136 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %137 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %136, i32 0, i32 9
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @M_UDFFID, align 4
  %142 = load i32, i32* @M_WAITOK, align 4
  %143 = load i32, i32* @M_ZERO, align 4
  %144 = or i32 %142, %143
  %145 = call i32* @malloc(i32 %140, i32 %141, i32 %144)
  %146 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %147 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %146, i32 0, i32 7
  store i32* %145, i32** %147, align 8
  %148 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %149 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %150 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @bcopy(%struct.fileid_desc* %148, i32* %151, i32 %152)
  %154 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %155 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = bitcast i32* %156 to %struct.fileid_desc*
  store %struct.fileid_desc* %157, %struct.fileid_desc** %4, align 8
  %158 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %159 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %158, i32 0, i32 10
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %135
  %163 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %164 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %163, i32 0, i32 10
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @brelse(i32* %165)
  br label %167

167:                                              ; preds = %162, %135
  %168 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %169 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %172 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %176 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %178 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %181 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %180, i32 0, i32 4
  %182 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %183 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %186 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %185, i32 0, i32 10
  %187 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %188 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %187, i32 0, i32 8
  %189 = call i32 @udf_readatoffset(i32 %179, i64* %181, i64 %184, i32** %186, %struct.fileid_desc** %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %167
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %195 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  store %struct.fileid_desc* null, %struct.fileid_desc** %2, align 8
  br label %303

196:                                              ; preds = %167
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @UDF_FID_SIZE, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %203 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %202, i32 0, i32 8
  %204 = load %struct.fileid_desc*, %struct.fileid_desc** %203, align 8
  %205 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %206 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %205, i32 0, i32 7
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i64, i64* @UDF_FID_SIZE, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = sub nsw i64 %211, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @bcopy(%struct.fileid_desc* %204, i32* %210, i32 %215)
  br label %217

217:                                              ; preds = %201, %196
  %218 = load i64, i64* @UDF_FID_SIZE, align 8
  %219 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %220 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @le16toh(i32 %221)
  %223 = add nsw i64 %218, %222
  %224 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %225 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %231 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %230, i32 0, i32 9
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %229, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %217
  %237 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %238 = load i32, i32* @EIO, align 4
  %239 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %240 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  store %struct.fileid_desc* null, %struct.fileid_desc** %2, align 8
  br label %303

241:                                              ; preds = %217
  %242 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %243 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %242, i32 0, i32 8
  %244 = load %struct.fileid_desc*, %struct.fileid_desc** %243, align 8
  %245 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %246 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %245, i32 0, i32 7
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %6, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i32 @bcopy(%struct.fileid_desc* %244, i32* %250, i32 %253)
  %255 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %256 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %255, i32 0, i32 5
  store i32 1, i32* %256, align 8
  br label %269

257:                                              ; preds = %95
  %258 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %259 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @le16toh(i32 %260)
  %262 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  %263 = getelementptr inbounds %struct.fileid_desc, %struct.fileid_desc* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = load i64, i64* @UDF_FID_SIZE, align 8
  %267 = add nsw i64 %265, %266
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %257, %241
  %270 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %271 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %274 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %272, %275
  %277 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %278 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %277, i32 0, i32 6
  store i64 %276, i64* %278, align 8
  %279 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %280 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 3
  %286 = and i32 %285, -4
  %287 = sext i32 %286 to i64
  %288 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %289 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, %287
  store i64 %291, i64* %289, align 8
  br label %301

292:                                              ; preds = %269
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %6, align 4
  %295 = sub nsw i32 %293, %294
  %296 = add nsw i32 %295, 3
  %297 = and i32 %296, -4
  %298 = sext i32 %297 to i64
  %299 = load %struct.udf_dirstream*, %struct.udf_dirstream** %3, align 8
  %300 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %299, i32 0, i32 1
  store i64 %298, i64* %300, align 8
  br label %301

301:                                              ; preds = %292, %283
  %302 = load %struct.fileid_desc*, %struct.fileid_desc** %4, align 8
  store %struct.fileid_desc* %302, %struct.fileid_desc** %2, align 8
  br label %303

303:                                              ; preds = %301, %236, %192, %130, %58, %19
  %304 = load %struct.fileid_desc*, %struct.fileid_desc** %2, align 8
  ret %struct.fileid_desc* %304
}

declare dso_local i32 @udf_readatoffset(i32, i64*, i64, i32**, %struct.fileid_desc**) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.fileid_desc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
