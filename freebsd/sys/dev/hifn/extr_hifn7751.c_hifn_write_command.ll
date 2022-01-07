; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_write_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_write_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_command = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64, i8*, i8*, i8* }

@HIFN_BASE_CMD_MAC = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_CRYPT = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_LENMASK_LO = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_SRCLEN_S = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_SRCLEN_M = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DSTLEN_S = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DSTLEN_M = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_SRCLEN_S = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_SRCLEN_M = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_SRCLEN_S = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_SRCLEN_M = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_NEW_KEY = common dso_local global i32 0, align 4
@HIFN_MAC_KEY_LENGTH = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_NEW_KEY = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_MASK = common dso_local global i32 0, align 4
@HIFN_3DES_KEY_LENGTH = common dso_local global i32 0, align 4
@HIFN_DES_KEY_LENGTH = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_NEW_IV = common dso_local global i32 0, align 4
@HIFN_AES_IV_LENGTH = common dso_local global i32 0, align 4
@HIFN_IV_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_command*, i32*)* @hifn_write_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_write_command(%struct.hifn_command* %0, i32* %1) #0 {
  %3 = alloca %struct.hifn_command*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hifn_command* %0, %struct.hifn_command** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %18 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HIFN_BASE_CMD_MAC, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %23 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HIFN_BASE_CMD_CRYPT, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %30 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @htole16(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %36 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %39 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %2
  %43 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %44 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %47 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %55 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @HIFN_BASE_CMD_LENMASK_LO, align 4
  %60 = and i32 %58, %59
  %61 = call i8* @htole16(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @HIFN_BASE_CMD_LENMASK_LO, align 4
  %66 = and i32 %64, %65
  %67 = call i8* @htole16(i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @HIFN_BASE_CMD_SRCLEN_S, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* @HIFN_BASE_CMD_SRCLEN_M, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @HIFN_BASE_CMD_DSTLEN_S, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @HIFN_BASE_CMD_DSTLEN_M, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %78, %83
  %85 = call i8* @htole16(i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 32
  store i32* %89, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %57
  %93 = load i32*, i32** %5, align 8
  %94 = bitcast i32* %93 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %7, align 8
  %95 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %96 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %95, i32 0, i32 11
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, 65535
  %102 = call i8* @htole16(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = ashr i32 %105, 16
  store i32 %106, i32* %13, align 4
  %107 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %108 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @HIFN_MAC_CMD_SRCLEN_S, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @HIFN_MAC_CMD_SRCLEN_M, align 4
  %114 = and i32 %112, %113
  %115 = or i32 %109, %114
  %116 = call i8* @htole16(i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %120 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %119, i32 0, i32 11
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @htole16(i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 32
  store i32* %130, i32** %5, align 8
  br label %131

131:                                              ; preds = %92, %57
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %131
  %135 = load i32*, i32** %5, align 8
  %136 = bitcast i32* %135 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %8, align 8
  %137 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %138 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %137, i32 0, i32 10
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = and i32 %142, 65535
  %144 = call i8* @htole16(i32 %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = ashr i32 %147, 16
  store i32 %148, i32* %13, align 4
  %149 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %150 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @HIFN_CRYPT_CMD_SRCLEN_S, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @HIFN_CRYPT_CMD_SRCLEN_M, align 4
  %156 = and i32 %154, %155
  %157 = or i32 %151, %156
  %158 = call i8* @htole16(i32 %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %162 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %161, i32 0, i32 10
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @htole16(i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 32
  store i32* %172, i32** %5, align 8
  br label %173

173:                                              ; preds = %134, %131
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  %177 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %178 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @HIFN_MAC_CMD_NEW_KEY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %185 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @HIFN_MAC_KEY_LENGTH, align 4
  %189 = call i32 @bcopy(i32 %186, i32* %187, i32 %188)
  %190 = load i32, i32* @HIFN_MAC_KEY_LENGTH, align 4
  %191 = load i32*, i32** %5, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %5, align 8
  br label %194

194:                                              ; preds = %183, %176, %173
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %276

197:                                              ; preds = %194
  %198 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %199 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @HIFN_CRYPT_CMD_NEW_KEY, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %276

204:                                              ; preds = %197
  %205 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %206 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @HIFN_CRYPT_CMD_ALG_MASK, align 4
  %209 = and i32 %207, %208
  switch i32 %209, label %275 [
    i32 131, label %210
    i32 129, label %221
    i32 128, label %232
    i32 130, label %260
  ]

210:                                              ; preds = %204
  %211 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %212 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* @HIFN_3DES_KEY_LENGTH, align 4
  %216 = call i32 @bcopy(i32 %213, i32* %214, i32 %215)
  %217 = load i32, i32* @HIFN_3DES_KEY_LENGTH, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %5, align 8
  br label %275

221:                                              ; preds = %204
  %222 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %223 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* @HIFN_DES_KEY_LENGTH, align 4
  %227 = call i32 @bcopy(i32 %224, i32* %225, i32 %226)
  %228 = load i32, i32* @HIFN_DES_KEY_LENGTH, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %5, align 8
  br label %275

232:                                              ; preds = %204
  store i32 256, i32* %11, align 4
  br label %233

233:                                              ; preds = %252, %232
  %234 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %235 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = call i32 @MIN(i32 %236, i32 %237)
  store i32 %238, i32* %15, align 4
  %239 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %240 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @bcopy(i32 %241, i32* %242, i32 %243)
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 %246, %245
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32*, i32** %5, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %5, align 8
  br label %252

252:                                              ; preds = %233
  %253 = load i32, i32* %11, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %233, label %255

255:                                              ; preds = %252
  %256 = load i32*, i32** %5, align 8
  %257 = call i32 @bzero(i32* %256, i32 4)
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 4
  store i32* %259, i32** %5, align 8
  br label %275

260:                                              ; preds = %204
  %261 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %262 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %266 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @bcopy(i32 %263, i32* %264, i32 %267)
  %269 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %270 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load i32*, i32** %5, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32* %274, i32** %5, align 8
  br label %275

275:                                              ; preds = %204, %260, %255, %221, %210
  br label %276

276:                                              ; preds = %275, %197, %194
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %307

279:                                              ; preds = %276
  %280 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %281 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @HIFN_CRYPT_CMD_NEW_IV, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %307

286:                                              ; preds = %279
  %287 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %288 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @HIFN_CRYPT_CMD_ALG_MASK, align 4
  %291 = and i32 %289, %290
  switch i32 %291, label %294 [
    i32 130, label %292
  ]

292:                                              ; preds = %286
  %293 = load i32, i32* @HIFN_AES_IV_LENGTH, align 4
  store i32 %293, i32* %12, align 4
  br label %296

294:                                              ; preds = %286
  %295 = load i32, i32* @HIFN_IV_LENGTH, align 4
  store i32 %295, i32* %12, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %298 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %12, align 4
  %302 = call i32 @bcopy(i32 %299, i32* %300, i32 %301)
  %303 = load i32, i32* %12, align 4
  %304 = load i32*, i32** %5, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %5, align 8
  br label %307

307:                                              ; preds = %296, %279, %276
  %308 = load %struct.hifn_command*, %struct.hifn_command** %3, align 8
  %309 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @HIFN_BASE_CMD_MAC, align 4
  %312 = load i32, i32* @HIFN_BASE_CMD_CRYPT, align 4
  %313 = or i32 %311, %312
  %314 = and i32 %310, %313
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %307
  %317 = load i32*, i32** %5, align 8
  %318 = call i32 @bzero(i32* %317, i32 8)
  %319 = load i32*, i32** %5, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 8
  store i32* %320, i32** %5, align 8
  br label %321

321:                                              ; preds = %316, %307
  %322 = load i32*, i32** %5, align 8
  %323 = load i32*, i32** %4, align 8
  %324 = ptrtoint i32* %322 to i64
  %325 = ptrtoint i32* %323 to i64
  %326 = sub i64 %324, %325
  %327 = sdiv exact i64 %326, 4
  %328 = trunc i64 %327 to i32
  ret i32 %328
}

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
