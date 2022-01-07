; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_11__, i8*, i64, %struct.TYPE_20__, %struct.TYPE_17__, i32, i8*, i64, i64, %struct.TYPE_12__, i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.physical = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@DEF_MRU = common dso_local global i8* null, align 8
@PROTO_CHAP = common dso_local global i8* null, align 8
@PROTO_PAP = common dso_local global i8* null, align 8
@PHYS_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcp_Setup(%struct.lcp* %0, i32 %1) #0 {
  %3 = alloca %struct.lcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  store %struct.lcp* %0, %struct.lcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lcp*, %struct.lcp** %3, align 8
  %7 = getelementptr inbounds %struct.lcp, %struct.lcp* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.physical* @link2physical(i32 %9)
  store %struct.physical* %10, %struct.physical** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.lcp*, %struct.lcp** %3, align 8
  %13 = getelementptr inbounds %struct.lcp, %struct.lcp* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i8*, i8** @DEF_MRU, align 8
  %16 = load %struct.lcp*, %struct.lcp** %3, align 8
  %17 = getelementptr inbounds %struct.lcp, %struct.lcp* %16, i32 0, i32 29
  store i8* %15, i8** %17, align 8
  %18 = load %struct.lcp*, %struct.lcp** %3, align 8
  %19 = getelementptr inbounds %struct.lcp, %struct.lcp* %18, i32 0, i32 28
  store i64 0, i64* %19, align 8
  %20 = load %struct.lcp*, %struct.lcp** %3, align 8
  %21 = getelementptr inbounds %struct.lcp, %struct.lcp* %20, i32 0, i32 27
  store i64 0, i64* %21, align 8
  %22 = load %struct.lcp*, %struct.lcp** %3, align 8
  %23 = getelementptr inbounds %struct.lcp, %struct.lcp* %22, i32 0, i32 26
  store i64 0, i64* %23, align 8
  %24 = load %struct.lcp*, %struct.lcp** %3, align 8
  %25 = getelementptr inbounds %struct.lcp, %struct.lcp* %24, i32 0, i32 25
  store i64 0, i64* %25, align 8
  %26 = load %struct.lcp*, %struct.lcp** %3, align 8
  %27 = getelementptr inbounds %struct.lcp, %struct.lcp* %26, i32 0, i32 24
  store i64 0, i64* %27, align 8
  %28 = load %struct.lcp*, %struct.lcp** %3, align 8
  %29 = getelementptr inbounds %struct.lcp, %struct.lcp* %28, i32 0, i32 23
  store i64 0, i64* %29, align 8
  %30 = load %struct.lcp*, %struct.lcp** %3, align 8
  %31 = getelementptr inbounds %struct.lcp, %struct.lcp* %30, i32 0, i32 22
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.lcp*, %struct.lcp** %3, align 8
  %34 = getelementptr inbounds %struct.lcp, %struct.lcp* %33, i32 0, i32 21
  store i64 0, i64* %34, align 8
  %35 = load %struct.lcp*, %struct.lcp** %3, align 8
  %36 = getelementptr inbounds %struct.lcp, %struct.lcp* %35, i32 0, i32 20
  store i64 0, i64* %36, align 8
  %37 = load %struct.lcp*, %struct.lcp** %3, align 8
  %38 = getelementptr inbounds %struct.lcp, %struct.lcp* %37, i32 0, i32 16
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 10
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.lcp*, %struct.lcp** %3, align 8
  %42 = getelementptr inbounds %struct.lcp, %struct.lcp* %41, i32 0, i32 19
  store i8* %40, i8** %42, align 8
  %43 = icmp eq i8* %40, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load i8*, i8** @DEF_MRU, align 8
  %46 = load %struct.lcp*, %struct.lcp** %3, align 8
  %47 = getelementptr inbounds %struct.lcp, %struct.lcp* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %2
  %49 = load %struct.lcp*, %struct.lcp** %3, align 8
  %50 = getelementptr inbounds %struct.lcp, %struct.lcp* %49, i32 0, i32 17
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lcp*, %struct.lcp** %3, align 8
  %59 = getelementptr inbounds %struct.lcp, %struct.lcp* %58, i32 0, i32 18
  store i32 %57, i32* %59, align 8
  %60 = load %struct.lcp*, %struct.lcp** %3, align 8
  %61 = getelementptr inbounds %struct.lcp, %struct.lcp* %60, i32 0, i32 17
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IsEnabled(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.lcp*, %struct.lcp** %3, align 8
  %74 = getelementptr inbounds %struct.lcp, %struct.lcp* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lcp*, %struct.lcp** %3, align 8
  %76 = getelementptr inbounds %struct.lcp, %struct.lcp* %75, i32 0, i32 16
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IsEnabled(i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load %struct.lcp*, %struct.lcp** %3, align 8
  %84 = getelementptr inbounds %struct.lcp, %struct.lcp* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.lcp*, %struct.lcp** %3, align 8
  %86 = getelementptr inbounds %struct.lcp, %struct.lcp* %85, i32 0, i32 17
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %217

90:                                               ; preds = %48
  %91 = load %struct.lcp*, %struct.lcp** %3, align 8
  %92 = getelementptr inbounds %struct.lcp, %struct.lcp* %91, i32 0, i32 2
  store i32 -1, i32* %92, align 8
  %93 = load %struct.lcp*, %struct.lcp** %3, align 8
  %94 = getelementptr inbounds %struct.lcp, %struct.lcp* %93, i32 0, i32 16
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lcp*, %struct.lcp** %3, align 8
  %98 = getelementptr inbounds %struct.lcp, %struct.lcp* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.lcp*, %struct.lcp** %3, align 8
  %100 = getelementptr inbounds %struct.lcp, %struct.lcp* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = load %struct.lcp*, %struct.lcp** %3, align 8
  %102 = getelementptr inbounds %struct.lcp, %struct.lcp* %101, i32 0, i32 16
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @IsEnabled(i32 %104)
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load %struct.lcp*, %struct.lcp** %3, align 8
  %110 = getelementptr inbounds %struct.lcp, %struct.lcp* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = call i64 (...) @GenerateMagic()
  %112 = load %struct.lcp*, %struct.lcp** %3, align 8
  %113 = getelementptr inbounds %struct.lcp, %struct.lcp* %112, i32 0, i32 15
  store i64 %111, i64* %113, align 8
  %114 = load %struct.lcp*, %struct.lcp** %3, align 8
  %115 = getelementptr inbounds %struct.lcp, %struct.lcp* %114, i32 0, i32 16
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IsEnabled(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %90
  %121 = load i8*, i8** @PROTO_CHAP, align 8
  %122 = load %struct.lcp*, %struct.lcp** %3, align 8
  %123 = getelementptr inbounds %struct.lcp, %struct.lcp* %122, i32 0, i32 14
  store i8* %121, i8** %123, align 8
  %124 = load %struct.lcp*, %struct.lcp** %3, align 8
  %125 = getelementptr inbounds %struct.lcp, %struct.lcp* %124, i32 0, i32 6
  store i32 5, i32* %125, align 8
  br label %180

126:                                              ; preds = %90
  %127 = load %struct.lcp*, %struct.lcp** %3, align 8
  %128 = getelementptr inbounds %struct.lcp, %struct.lcp* %127, i32 0, i32 16
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IsEnabled(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load %struct.lcp*, %struct.lcp** %3, align 8
  %135 = getelementptr inbounds %struct.lcp, %struct.lcp* %134, i32 0, i32 16
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @IsEnabled(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133, %126
  %141 = load i8*, i8** @PROTO_CHAP, align 8
  %142 = load %struct.lcp*, %struct.lcp** %3, align 8
  %143 = getelementptr inbounds %struct.lcp, %struct.lcp* %142, i32 0, i32 14
  store i8* %141, i8** %143, align 8
  %144 = load %struct.lcp*, %struct.lcp** %3, align 8
  %145 = getelementptr inbounds %struct.lcp, %struct.lcp* %144, i32 0, i32 6
  store i32 128, i32* %145, align 8
  br label %179

146:                                              ; preds = %133
  %147 = load %struct.lcp*, %struct.lcp** %3, align 8
  %148 = getelementptr inbounds %struct.lcp, %struct.lcp* %147, i32 0, i32 16
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @IsEnabled(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i8*, i8** @PROTO_CHAP, align 8
  %155 = load %struct.lcp*, %struct.lcp** %3, align 8
  %156 = getelementptr inbounds %struct.lcp, %struct.lcp* %155, i32 0, i32 14
  store i8* %154, i8** %156, align 8
  %157 = load %struct.lcp*, %struct.lcp** %3, align 8
  %158 = getelementptr inbounds %struct.lcp, %struct.lcp* %157, i32 0, i32 6
  store i32 129, i32* %158, align 8
  br label %178

159:                                              ; preds = %146
  %160 = load %struct.lcp*, %struct.lcp** %3, align 8
  %161 = getelementptr inbounds %struct.lcp, %struct.lcp* %160, i32 0, i32 16
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @IsEnabled(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i8*, i8** @PROTO_PAP, align 8
  %168 = load %struct.lcp*, %struct.lcp** %3, align 8
  %169 = getelementptr inbounds %struct.lcp, %struct.lcp* %168, i32 0, i32 14
  store i8* %167, i8** %169, align 8
  %170 = load %struct.lcp*, %struct.lcp** %3, align 8
  %171 = getelementptr inbounds %struct.lcp, %struct.lcp* %170, i32 0, i32 6
  store i32 0, i32* %171, align 8
  br label %177

172:                                              ; preds = %159
  %173 = load %struct.lcp*, %struct.lcp** %3, align 8
  %174 = getelementptr inbounds %struct.lcp, %struct.lcp* %173, i32 0, i32 14
  store i8* null, i8** %174, align 8
  %175 = load %struct.lcp*, %struct.lcp** %3, align 8
  %176 = getelementptr inbounds %struct.lcp, %struct.lcp* %175, i32 0, i32 6
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %166
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %178, %140
  br label %180

180:                                              ; preds = %179, %120
  %181 = load %struct.physical*, %struct.physical** %5, align 8
  %182 = getelementptr inbounds %struct.physical, %struct.physical* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PHYS_DIRECT, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.lcp*, %struct.lcp** %3, align 8
  %188 = getelementptr inbounds %struct.lcp, %struct.lcp* %187, i32 0, i32 13
  %189 = load %struct.physical*, %struct.physical** %5, align 8
  %190 = getelementptr inbounds %struct.physical, %struct.physical* %189, i32 0, i32 1
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = call i32 @memcpy(%struct.TYPE_11__* %188, i32* %193, i32 4)
  br label %199

195:                                              ; preds = %180
  %196 = load %struct.lcp*, %struct.lcp** %3, align 8
  %197 = getelementptr inbounds %struct.lcp, %struct.lcp* %196, i32 0, i32 13
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %195, %186
  %200 = load %struct.lcp*, %struct.lcp** %3, align 8
  %201 = getelementptr inbounds %struct.lcp, %struct.lcp* %200, i32 0, i32 16
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @IsEnabled(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load %struct.lcp*, %struct.lcp** %3, align 8
  %208 = getelementptr inbounds %struct.lcp, %struct.lcp* %207, i32 0, i32 16
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %210, 100
  br label %213

212:                                              ; preds = %199
  br label %213

213:                                              ; preds = %212, %206
  %214 = phi i32 [ %211, %206 ], [ 0, %212 ]
  %215 = load %struct.lcp*, %struct.lcp** %3, align 8
  %216 = getelementptr inbounds %struct.lcp, %struct.lcp* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  br label %237

217:                                              ; preds = %48
  %218 = load %struct.lcp*, %struct.lcp** %3, align 8
  %219 = getelementptr inbounds %struct.lcp, %struct.lcp* %218, i32 0, i32 3
  store i32 0, i32* %219, align 4
  %220 = load %struct.lcp*, %struct.lcp** %3, align 8
  %221 = getelementptr inbounds %struct.lcp, %struct.lcp* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  %222 = load %struct.lcp*, %struct.lcp** %3, align 8
  %223 = getelementptr inbounds %struct.lcp, %struct.lcp* %222, i32 0, i32 5
  store i32 1, i32* %223, align 4
  %224 = load %struct.lcp*, %struct.lcp** %3, align 8
  %225 = getelementptr inbounds %struct.lcp, %struct.lcp* %224, i32 0, i32 4
  store i32 1, i32* %225, align 8
  %226 = load %struct.lcp*, %struct.lcp** %3, align 8
  %227 = getelementptr inbounds %struct.lcp, %struct.lcp* %226, i32 0, i32 15
  store i64 0, i64* %227, align 8
  %228 = load %struct.lcp*, %struct.lcp** %3, align 8
  %229 = getelementptr inbounds %struct.lcp, %struct.lcp* %228, i32 0, i32 14
  store i8* null, i8** %229, align 8
  %230 = load %struct.lcp*, %struct.lcp** %3, align 8
  %231 = getelementptr inbounds %struct.lcp, %struct.lcp* %230, i32 0, i32 6
  store i32 0, i32* %231, align 8
  %232 = load %struct.lcp*, %struct.lcp** %3, align 8
  %233 = getelementptr inbounds %struct.lcp, %struct.lcp* %232, i32 0, i32 13
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.lcp*, %struct.lcp** %3, align 8
  %236 = getelementptr inbounds %struct.lcp, %struct.lcp* %235, i32 0, i32 7
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %217, %213
  %238 = load %struct.lcp*, %struct.lcp** %3, align 8
  %239 = getelementptr inbounds %struct.lcp, %struct.lcp* %238, i32 0, i32 11
  store i64 0, i64* %239, align 8
  %240 = load %struct.lcp*, %struct.lcp** %3, align 8
  %241 = getelementptr inbounds %struct.lcp, %struct.lcp* %240, i32 0, i32 12
  store i64 0, i64* %241, align 8
  %242 = load %struct.lcp*, %struct.lcp** %3, align 8
  %243 = getelementptr inbounds %struct.lcp, %struct.lcp* %242, i32 0, i32 9
  store i64 0, i64* %243, align 8
  %244 = load %struct.lcp*, %struct.lcp** %3, align 8
  %245 = getelementptr inbounds %struct.lcp, %struct.lcp* %244, i32 0, i32 10
  store i64 0, i64* %245, align 8
  %246 = load %struct.lcp*, %struct.lcp** %3, align 8
  %247 = getelementptr inbounds %struct.lcp, %struct.lcp* %246, i32 0, i32 8
  store i64 0, i64* %247, align 8
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i64 @GenerateMagic(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
