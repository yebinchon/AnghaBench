; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_do_product_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_do_product_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_product = type { i64, i64, i32**, i64 }

@PCCARD_VENDOR_ANY = common dso_local global i64 0, align 8
@PCCARD_PRODUCT_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Total wildcard entry ignored for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pccard_product* (i32, i32, %struct.pccard_product*, i64, i32 (i32, %struct.pccard_product*, i32)*)* @pccard_do_product_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pccard_product* @pccard_do_product_lookup(i32 %0, i32 %1, %struct.pccard_product* %2, i64 %3, i32 (i32, %struct.pccard_product*, i32)* %4) #0 {
  %6 = alloca %struct.pccard_product*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pccard_product*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i32, %struct.pccard_product*, i32)*, align 8
  %12 = alloca %struct.pccard_product*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.pccard_product* %2, %struct.pccard_product** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 (i32, %struct.pccard_product*, i32)* %4, i32 (i32, %struct.pccard_product*, i32)** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @pccard_get_vendor(i32 %20, i64* %14)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @pccard_get_product(i32 %25, i64* %15)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @pccard_get_vendor_str(i32 %30, i8** %16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @pccard_get_product_str(i32 %35, i8** %17)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @pccard_get_cis3_str(i32 %40, i8** %18)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @pccard_get_cis4_str(i32 %45, i8** %19)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

49:                                               ; preds = %44
  %50 = load %struct.pccard_product*, %struct.pccard_product** %9, align 8
  store %struct.pccard_product* %50, %struct.pccard_product** %12, align 8
  br label %51

51:                                               ; preds = %233, %49
  %52 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %53 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %239

56:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %57 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %58 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCCARD_VENDOR_ANY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %64 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCCARD_PRODUCT_ANY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %70 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %77 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %84 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %90 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %233

94:                                               ; preds = %75, %68, %62, %56
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %99 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PCCARD_VENDOR_ANY, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %106 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %109, %103, %97, %94
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %115 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PCCARD_PRODUCT_ANY, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %122 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %125, %119, %113, %110
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %131 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %130, i32 0, i32 2
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = load i8*, i8** %16, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %141 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %140, i32 0, i32 2
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = call i64 @strcmp(i32* %144, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139, %136
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %148, %139, %129, %126
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %154 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load i8*, i8** %17, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %171, label %162

162:                                              ; preds = %159
  %163 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %164 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %163, i32 0, i32 2
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = call i64 @strcmp(i32* %167, i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162, %159
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %171, %162, %152, %149
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %177 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %176, i32 0, i32 2
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 2
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load i8*, i8** %18, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %182
  %186 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %187 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i8*, i8** %18, align 8
  %192 = call i64 @strcmp(i32* %190, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185, %182
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %194, %185, %175, %172
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  %199 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %200 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %199, i32 0, i32 2
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 3
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %218

205:                                              ; preds = %198
  %206 = load i8*, i8** %19, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %210 = getelementptr inbounds %struct.pccard_product, %struct.pccard_product* %209, i32 0, i32 2
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = call i64 @strcmp(i32* %213, i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208, %205
  store i32 0, i32* %13, align 4
  br label %218

218:                                              ; preds = %217, %208, %198, %195
  %219 = load i32 (i32, %struct.pccard_product*, i32)*, i32 (i32, %struct.pccard_product*, i32)** %11, align 8
  %220 = icmp ne i32 (i32, %struct.pccard_product*, i32)* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32 (i32, %struct.pccard_product*, i32)*, i32 (i32, %struct.pccard_product*, i32)** %11, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 %222(i32 %223, %struct.pccard_product* %224, i32 %225)
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %221, %218
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  store %struct.pccard_product* %231, %struct.pccard_product** %6, align 8
  br label %240

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %232, %93
  %234 = load %struct.pccard_product*, %struct.pccard_product** %12, align 8
  %235 = bitcast %struct.pccard_product* %234 to i8*
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = bitcast i8* %237 to %struct.pccard_product*
  store %struct.pccard_product* %238, %struct.pccard_product** %12, align 8
  br label %51

239:                                              ; preds = %51
  store %struct.pccard_product* null, %struct.pccard_product** %6, align 8
  br label %240

240:                                              ; preds = %239, %230, %48, %43, %38, %33, %28, %23
  %241 = load %struct.pccard_product*, %struct.pccard_product** %6, align 8
  ret %struct.pccard_product* %241
}

declare dso_local i64 @pccard_get_vendor(i32, i64*) #1

declare dso_local i64 @pccard_get_product(i32, i64*) #1

declare dso_local i64 @pccard_get_vendor_str(i32, i8**) #1

declare dso_local i64 @pccard_get_product_str(i32, i8**) #1

declare dso_local i64 @pccard_get_cis3_str(i32, i8**) #1

declare dso_local i64 @pccard_get_cis4_str(i32, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
