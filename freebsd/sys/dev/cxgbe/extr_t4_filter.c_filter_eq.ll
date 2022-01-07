; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_filter_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_filter_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_filter_specification = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_filter_specification*, %struct.t4_filter_specification*)* @filter_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_eq(%struct.t4_filter_specification* %0, %struct.t4_filter_specification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4_filter_specification*, align 8
  %5 = alloca %struct.t4_filter_specification*, align 8
  %6 = alloca i32, align 4
  store %struct.t4_filter_specification* %0, %struct.t4_filter_specification** %4, align 8
  store %struct.t4_filter_specification* %1, %struct.t4_filter_specification** %5, align 8
  %7 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %8 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %13 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %21 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %24 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %260

28:                                               ; preds = %16
  %29 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %30 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 16, i32 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %36 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 13
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %41 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 13
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @bcmp(i32* %39, i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %28
  %49 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %50 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 12
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %55 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 12
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @bcmp(i32* %53, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %48
  %63 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %64 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %68 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %62
  %73 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %74 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %78 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72, %62, %48, %28
  store i32 0, i32* %3, align 4
  br label %260

83:                                               ; preds = %72
  %84 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %85 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %91 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89, %83
  %96 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %97 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %101 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %260

106:                                              ; preds = %95, %89
  %107 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %108 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %114 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %118 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %260

123:                                              ; preds = %112, %106
  %124 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %125 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %131 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %135 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %260

140:                                              ; preds = %129, %123
  %141 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %142 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %148 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %152 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %260

157:                                              ; preds = %146, %140
  %158 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %159 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %165 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %169 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %167, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %260

174:                                              ; preds = %163, %157
  %175 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %176 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %182 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %186 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %184, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %260

191:                                              ; preds = %180, %174
  %192 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %193 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %199 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %203 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 8
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %201, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %260

208:                                              ; preds = %197, %191
  %209 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %210 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %208
  %215 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %216 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %220 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 9
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  br label %260

225:                                              ; preds = %214, %208
  %226 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %227 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %225
  %232 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %233 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %237 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %235, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %260

242:                                              ; preds = %231, %225
  %243 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %244 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242
  %249 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %4, align 8
  %250 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 11
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %254 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 11
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %252, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %260

259:                                              ; preds = %248, %242
  store i32 1, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %258, %241, %224, %207, %190, %173, %156, %139, %122, %105, %82, %27
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
