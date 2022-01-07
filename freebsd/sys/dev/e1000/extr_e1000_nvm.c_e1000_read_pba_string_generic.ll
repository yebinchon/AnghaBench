; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_string_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_string_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_read_pba_string_generic\00", align 1
@e1000_i210 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Flashless no PBA string\0A\00", align 1
@E1000_ERR_NVM_PBA_SECTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"PBA string buffer was null\0A\00", align 1
@E1000_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_PBA_OFFSET_1 = common dso_local global i32 0, align 4
@NVM_PBA_PTR_GUARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"NVM PBA number is not stored as string\0A\00", align 1
@E1000_PBANUM_LENGTH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"PBA string buffer too small\0A\00", align 1
@E1000_ERR_NO_SPACE = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_pba_string_generic(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_i210, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = call i32 @e1000_get_flash_presence_i210(%struct.e1000_hw* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %248

28:                                               ; preds = %20, %3
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* @E1000_ERR_INVALID_ARGUMENT, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %248

35:                                               ; preds = %28
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i32, i32* @NVM_PBA_OFFSET_0, align 4
  %44 = call i64 %40(%struct.e1000_hw.0* %42, i32 %43, i32 1, i32* %9)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %248

50:                                               ; preds = %35
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.0*
  %58 = load i32, i32* @NVM_PBA_OFFSET_1, align 4
  %59 = call i64 %55(%struct.e1000_hw.0* %57, i32 %58, i32 1, i32* %10)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %248

65:                                               ; preds = %50
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NVM_PBA_PTR_GUARD, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %160

69:                                               ; preds = %65
  %70 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @E1000_PBANUM_LENGTH, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  store i64 %76, i64* %4, align 8
  br label %248

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 15
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 15
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 15
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 15
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 12
  %99 = and i32 %98, 15
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 15
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  store i32 45, i32* %108, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = ashr i32 %111, 4
  %113 = and i32 %112, 15
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 8
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 15
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 9
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 10
  store i32 0, i32* %121, align 4
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %155, %77
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 10
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 48
  store i32 %138, i32* %136, align 4
  br label %154

139:                                              ; preds = %125
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %144, 16
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 55
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %146, %139
  br label %154

154:                                              ; preds = %153, %132
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %122

158:                                              ; preds = %122
  %159 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %159, i64* %4, align 8
  br label %248

160:                                              ; preds = %65
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %162 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %164, align 8
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %167 = bitcast %struct.e1000_hw* %166 to %struct.e1000_hw.0*
  %168 = load i32, i32* %10, align 4
  %169 = call i64 %165(%struct.e1000_hw.0* %167, i32 %168, i32 1, i32* %12)
  store i64 %169, i64* %8, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i64, i64* %8, align 8
  store i64 %174, i64* %4, align 8
  br label %248

175:                                              ; preds = %160
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 65535
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178, %175
  %182 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  %184 = sub nsw i64 0, %183
  store i64 %184, i64* %4, align 8
  br label %248

185:                                              ; preds = %178
  %186 = load i64, i64* %7, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, 2
  %190 = sub nsw i64 %189, 1
  %191 = icmp slt i64 %186, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %194 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  %195 = sub nsw i64 0, %194
  store i64 %195, i64* %4, align 8
  br label %248

196:                                              ; preds = %185
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %238, %196
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %201
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %207 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %209, align 8
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %212 = bitcast %struct.e1000_hw* %211 to %struct.e1000_hw.0*
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i64 %210(%struct.e1000_hw.0* %212, i32 %215, i32 1, i32* %9)
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %8, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %205
  %220 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %221 = load i64, i64* %8, align 8
  store i64 %221, i64* %4, align 8
  br label %248

222:                                              ; preds = %205
  %223 = load i32, i32* %9, align 4
  %224 = ashr i32 %223, 8
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %11, align 4
  %227 = mul nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = and i32 %230, 255
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %11, align 4
  %234 = mul nsw i32 %233, 2
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  store i32 %231, i32* %237, align 4
  br label %238

238:                                              ; preds = %222
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %201

241:                                              ; preds = %201
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 0, i32* %246, align 4
  %247 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %247, i64* %4, align 8
  br label %248

248:                                              ; preds = %241, %219, %192, %181, %172, %158, %74, %62, %47, %31, %24
  %249 = load i64, i64* %4, align 8
  ret i64 %249
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_get_flash_presence_i210(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
