; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpspidx_withmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpspidx_withmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicyindex = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IPSEC_ULPROTO_ANY = common dso_local global i64 0, align 8
@IPSEC_PORT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secpolicyindex*, %struct.secpolicyindex*)* @key_cmpspidx_withmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpspidx_withmask(%struct.secpolicyindex* %0, %struct.secpolicyindex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicyindex*, align 8
  %5 = alloca %struct.secpolicyindex*, align 8
  store %struct.secpolicyindex* %0, %struct.secpolicyindex** %4, align 8
  store %struct.secpolicyindex* %1, %struct.secpolicyindex** %5, align 8
  %6 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %7 = icmp eq %struct.secpolicyindex* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %10 = icmp eq %struct.secpolicyindex* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %326

12:                                               ; preds = %8, %2
  %13 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %14 = icmp eq %struct.secpolicyindex* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %17 = icmp eq %struct.secpolicyindex* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %326

19:                                               ; preds = %15
  %20 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %21 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %26 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %67, label %31

31:                                               ; preds = %19
  %32 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %33 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %38 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %36, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %31
  %44 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %45 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %50 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %43
  %56 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %57 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %62 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55, %43, %31, %19
  store i32 0, i32* %3, align 4
  br label %326

68:                                               ; preds = %55
  %69 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %70 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPSEC_ULPROTO_ANY, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %76 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %79 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %326

83:                                               ; preds = %74, %68
  %84 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %85 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %190 [
    i32 129, label %89
    i32 128, label %126
  ]

89:                                               ; preds = %83
  %90 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %91 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %99 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %104 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %326

110:                                              ; preds = %97, %89
  %111 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %112 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %116 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %120 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @key_bbcmp(i32* %114, i32* %118, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %326

125:                                              ; preds = %110
  br label %204

126:                                              ; preds = %83
  %127 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %128 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %136 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %141 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %139, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %326

147:                                              ; preds = %134, %126
  %148 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %149 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %147
  %155 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %156 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %154
  %162 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %163 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %168 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %166, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %326

174:                                              ; preds = %161, %154, %147
  %175 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %176 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %180 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %184 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @key_bbcmp(i32* %178, i32* %182, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %326

189:                                              ; preds = %174
  br label %204

190:                                              ; preds = %83
  %191 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %192 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %191, i32 0, i32 3
  %193 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %194 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %193, i32 0, i32 3
  %195 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %196 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @bcmp(%struct.TYPE_9__* %192, %struct.TYPE_9__* %194, i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %326

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %189, %125
  %205 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %206 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  switch i32 %209, label %311 [
    i32 129, label %210
    i32 128, label %247
  ]

210:                                              ; preds = %204
  %211 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %212 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %210
  %219 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %220 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %225 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %223, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %326

231:                                              ; preds = %218, %210
  %232 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %233 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %237 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %241 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @key_bbcmp(i32* %235, i32* %239, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %326

246:                                              ; preds = %231
  br label %325

247:                                              ; preds = %204
  %248 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %249 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %247
  %256 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %257 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %262 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %260, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %255
  store i32 0, i32* %3, align 4
  br label %326

268:                                              ; preds = %255, %247
  %269 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %270 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %268
  %276 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %277 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %295

282:                                              ; preds = %275
  %283 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %284 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %289 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %287, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %326

295:                                              ; preds = %282, %275, %268
  %296 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %297 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %301 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %305 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @key_bbcmp(i32* %299, i32* %303, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %326

310:                                              ; preds = %295
  br label %325

311:                                              ; preds = %204
  %312 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %313 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %312, i32 0, i32 1
  %314 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %315 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %314, i32 0, i32 1
  %316 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %317 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @bcmp(%struct.TYPE_9__* %313, %struct.TYPE_9__* %315, i64 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %311
  store i32 0, i32* %3, align 4
  br label %326

324:                                              ; preds = %311
  br label %325

325:                                              ; preds = %324, %310, %246
  store i32 1, i32* %3, align 4
  br label %326

326:                                              ; preds = %325, %323, %309, %294, %267, %245, %230, %202, %188, %173, %146, %124, %109, %82, %67, %18, %11
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @key_bbcmp(i32*, i32*, i32) #1

declare dso_local i32 @bcmp(%struct.TYPE_9__*, %struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
