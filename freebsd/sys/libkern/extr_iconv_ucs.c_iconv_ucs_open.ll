; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_iconv_ucs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_iconv_ucs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.iconv_converter_class = type { i32 }
%struct.iconv_cspair = type { i8*, i8*, i32 }
%struct.iconv_ucs = type { i32, %struct.iconv_cspair*, %struct.iconv_cspair*, i32*, i32*, i32* }
%struct.kobj_class = type { i32 }

@M_ICONV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KICONV_UCS_COMBINE = common dso_local global i32 0, align 4
@unicode_family = common dso_local global %struct.TYPE_2__* null, align 8
@ENCODING_UNICODE = common dso_local global i8* null, align 8
@ENCODING_UTF16 = common dso_local global i32 0, align 4
@KICONV_UCS_UCS4 = common dso_local global i32 0, align 4
@KICONV_UCS_FROM_UTF8 = common dso_local global i32 0, align 4
@KICONV_UCS_FROM_LE = common dso_local global i32 0, align 4
@KICONV_UCS_TO_UTF8 = common dso_local global i32 0, align 4
@KICONV_UCS_TO_LE = common dso_local global i32 0, align 4
@KICONV_WCTYPE_NAME = common dso_local global i8* null, align 8
@ENCODING_UTF8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iconv_converter_class*, %struct.iconv_cspair*, %struct.iconv_cspair*, i8**)* @iconv_ucs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_ucs_open(%struct.iconv_converter_class* %0, %struct.iconv_cspair* %1, %struct.iconv_cspair* %2, i8** %3) #0 {
  %5 = alloca %struct.iconv_converter_class*, align 8
  %6 = alloca %struct.iconv_cspair*, align 8
  %7 = alloca %struct.iconv_cspair*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.iconv_ucs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.iconv_converter_class* %0, %struct.iconv_converter_class** %5, align 8
  store %struct.iconv_cspair* %1, %struct.iconv_cspair** %6, align 8
  store %struct.iconv_cspair* %2, %struct.iconv_cspair** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %5, align 8
  %14 = bitcast %struct.iconv_converter_class* %13 to %struct.kobj_class*
  %15 = load i32, i32* @M_ICONV, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i64 @kobj_create(%struct.kobj_class* %14, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.iconv_ucs*
  store %struct.iconv_ucs* %18, %struct.iconv_ucs** %9, align 8
  %19 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %20 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %23 = icmp ne %struct.iconv_cspair* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %26 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %32

28:                                               ; preds = %4
  %29 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %30 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i8* [ %27, %24 ], [ %31, %28 ]
  store i8* %33, i8** %11, align 8
  %34 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %35 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %37 = icmp ne %struct.iconv_cspair* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @KICONV_UCS_COMBINE, align 4
  %40 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %41 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %32
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %96, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_family, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %45
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_family, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @strcasecmp(i8* %54, i64 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_family, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %71 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %63, %53
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_family, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @strcasecmp(i8* %75, i64 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_family, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %92 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %84, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %45

99:                                               ; preds = %45
  %100 = load i8*, i8** @ENCODING_UNICODE, align 8
  %101 = load i32, i32* @ENCODING_UTF16, align 4
  %102 = call i64 @strcmp(i8* %100, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @KICONV_UCS_UCS4, align 4
  %106 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %107 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %117

110:                                              ; preds = %99
  %111 = load i32, i32* @KICONV_UCS_UCS4, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %114 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %119 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %118, i32 0, i32 4
  store i32* null, i32** %119, align 8
  %120 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %121 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %120, i32 0, i32 5
  store i32* null, i32** %121, align 8
  %122 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %123 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @KICONV_UCS_COMBINE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %169

128:                                              ; preds = %117
  %129 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %130 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @KICONV_UCS_FROM_UTF8, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %137 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @KICONV_UCS_FROM_LE, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i8*, i8** @ENCODING_UNICODE, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %146 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %145, i32 0, i32 5
  %147 = call i32 @iconv_open(i8* %143, i8* %144, i32** %146)
  br label %148

148:                                              ; preds = %142, %135, %128
  %149 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %150 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @KICONV_UCS_TO_UTF8, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %148
  %156 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %157 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @KICONV_UCS_TO_LE, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** @ENCODING_UNICODE, align 8
  %165 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %166 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %165, i32 0, i32 4
  %167 = call i32 @iconv_open(i8* %163, i8* %164, i32** %166)
  br label %168

168:                                              ; preds = %162, %155, %148
  br label %169

169:                                              ; preds = %168, %117
  %170 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %171 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %170, i32 0, i32 3
  store i32* null, i32** %171, align 8
  %172 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %173 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @KICONV_UCS_FROM_UTF8, align 4
  %176 = load i32, i32* @KICONV_UCS_TO_UTF8, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %169
  %181 = load i8*, i8** @KICONV_WCTYPE_NAME, align 8
  %182 = load i8*, i8** @ENCODING_UTF8, align 8
  %183 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %184 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %183, i32 0, i32 3
  %185 = call i32 @iconv_open(i8* %181, i8* %182, i32** %184)
  br label %186

186:                                              ; preds = %180, %169
  %187 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %188 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %189 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %188, i32 0, i32 2
  store %struct.iconv_cspair* %187, %struct.iconv_cspair** %189, align 8
  %190 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %191 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @KICONV_UCS_FROM_UTF8, align 4
  %194 = load i32, i32* @KICONV_UCS_FROM_LE, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %186
  %199 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %200 = icmp ne %struct.iconv_cspair* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %203 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %204 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %203, i32 0, i32 1
  store %struct.iconv_cspair* %202, %struct.iconv_cspair** %204, align 8
  %205 = load %struct.iconv_cspair*, %struct.iconv_cspair** %7, align 8
  %206 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %214

209:                                              ; preds = %198
  %210 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %211 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %209, %201
  br label %215

215:                                              ; preds = %214, %186
  %216 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %217 = getelementptr inbounds %struct.iconv_ucs, %struct.iconv_ucs* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @KICONV_UCS_TO_UTF8, align 4
  %220 = load i32, i32* @KICONV_UCS_TO_LE, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %215
  %225 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %226 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %224, %215
  %230 = load %struct.iconv_ucs*, %struct.iconv_ucs** %9, align 8
  %231 = bitcast %struct.iconv_ucs* %230 to i8*
  %232 = load i8**, i8*** %8, align 8
  store i8* %231, i8** %232, align 8
  ret i32 0
}

declare dso_local i64 @kobj_create(%struct.kobj_class*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @iconv_open(i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
