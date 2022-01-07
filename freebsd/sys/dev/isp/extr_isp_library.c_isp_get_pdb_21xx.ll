; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_pdb_21xx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_pdb_21xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_get_pdb_21xx(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 37
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 37
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ISP_IOXGET_16(i32* %8, i32* %10, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 36
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 36
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ISP_IOXGET_8(i32* %15, i32* %17, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 35
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 35
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ISP_IOXGET_8(i32* %22, i32* %24, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 34
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ISP_IOXGET_8(i32* %33, i32* %39, i32 %46)
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %29

51:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 33
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 33
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ISP_IOXGET_8(i32* %56, i32* %62, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %52

74:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %94, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 32
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 32
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ISP_IOXGET_8(i32* %79, i32* %85, i32 %92)
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %75

97:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 31
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 31
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ISP_IOXGET_8(i32* %102, i32* %108, i32 %115)
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 30
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 30
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ISP_IOXGET_16(i32* %121, i32* %123, i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 29
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 29
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ISP_IOXGET_16(i32* %128, i32* %130, i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 28
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 28
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ISP_IOXGET_8(i32* %135, i32* %137, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 27
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 27
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ISP_IOXGET_8(i32* %142, i32* %144, i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 26
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 26
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ISP_IOXGET_16(i32* %149, i32* %151, i32 %154)
  %156 = load i32*, i32** %4, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 25
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 25
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ISP_IOXGET_16(i32* %156, i32* %158, i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 24
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 24
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ISP_IOXGET_16(i32* %163, i32* %165, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 23
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 23
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ISP_IOXGET_16(i32* %170, i32* %172, i32 %175)
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 22
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 22
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ISP_IOXGET_16(i32* %177, i32* %179, i32 %182)
  %184 = load i32*, i32** %4, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 21
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 21
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ISP_IOXGET_16(i32* %184, i32* %186, i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 20
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 20
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @ISP_IOXGET_16(i32* %191, i32* %193, i32 %196)
  %198 = load i32*, i32** %4, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 19
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 19
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ISP_IOXGET_16(i32* %198, i32* %200, i32 %203)
  %205 = load i32*, i32** %4, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 18
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 18
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ISP_IOXGET_16(i32* %205, i32* %207, i32 %210)
  %212 = load i32*, i32** %4, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 17
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 17
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ISP_IOXGET_8(i32* %212, i32* %214, i32 %217)
  %219 = load i32*, i32** %4, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 16
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 16
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ISP_IOXGET_8(i32* %219, i32* %221, i32 %224)
  %226 = load i32*, i32** %4, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 15
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 15
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ISP_IOXGET_16(i32* %226, i32* %228, i32 %231)
  %233 = load i32*, i32** %4, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 14
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 14
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ISP_IOXGET_16(i32* %233, i32* %235, i32 %238)
  %240 = load i32*, i32** %4, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 13
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 13
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @ISP_IOXGET_16(i32* %240, i32* %242, i32 %245)
  %247 = load i32*, i32** %4, align 8
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 12
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 12
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @ISP_IOXGET_16(i32* %247, i32* %249, i32 %252)
  %254 = load i32*, i32** %4, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 11
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ISP_IOXGET_16(i32* %254, i32* %256, i32 %259)
  %261 = load i32*, i32** %4, align 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 10
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @ISP_IOXGET_16(i32* %261, i32* %263, i32 %266)
  %268 = load i32*, i32** %4, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 9
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @ISP_IOXGET_16(i32* %268, i32* %270, i32 %273)
  %275 = load i32*, i32** %4, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @ISP_IOXGET_16(i32* %275, i32* %277, i32 %280)
  %282 = load i32*, i32** %4, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @ISP_IOXGET_16(i32* %282, i32* %284, i32 %287)
  %289 = load i32*, i32** %4, align 8
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @ISP_IOXGET_16(i32* %289, i32* %291, i32 %294)
  %296 = load i32*, i32** %4, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 5
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @ISP_IOXGET_16(i32* %296, i32* %298, i32 %301)
  %303 = load i32*, i32** %4, align 8
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @ISP_IOXGET_16(i32* %303, i32* %305, i32 %308)
  %310 = load i32*, i32** %4, align 8
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @ISP_IOXGET_16(i32* %310, i32* %312, i32 %315)
  %317 = load i32*, i32** %4, align 8
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @ISP_IOXGET_16(i32* %317, i32* %319, i32 %322)
  %324 = load i32*, i32** %4, align 8
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @ISP_IOXGET_16(i32* %324, i32* %326, i32 %329)
  %331 = load i32*, i32** %4, align 8
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @ISP_IOXGET_16(i32* %331, i32* %333, i32 %336)
  ret void
}

declare dso_local i32 @ISP_IOXGET_16(i32*, i32*, i32) #1

declare dso_local i32 @ISP_IOXGET_8(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
