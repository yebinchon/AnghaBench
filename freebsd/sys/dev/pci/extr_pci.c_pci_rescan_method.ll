; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_rescan_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_rescan_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_rescan_method(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @device_get_parent(i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @device_get_children(i32* %22, i32*** %6, i32* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %238

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i32** @malloc(i32 %35, i32 %36, i32 %39)
  store i32** %40, i32*** %7, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = icmp eq i32** %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = call i32 @free(i32** %44, i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %238

48:                                               ; preds = %31
  br label %50

49:                                               ; preds = %28
  store i32** null, i32*** %7, align 8
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @pcib_get_domain(i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @pcib_get_bus(i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @PCIB_MAXSLOTS(i32* %55)
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %152, %50
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %155

61:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @PCIR_VENDOR, align 4
  %67 = call i32 (i32*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32*, i32, i32, i32, i32, i32, ...)*)(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 2)
  %68 = icmp eq i32 %67, 65535
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %152

70:                                               ; preds = %61
  store i32 0, i32* %18, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @PCIR_HDRTYPE, align 4
  %76 = call i32 (i32*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32*, i32, i32, i32, i32, i32, ...)*)(i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 1)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* @PCIM_HDRTYPE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %152

83:                                               ; preds = %70
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @PCIM_MFDEV, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @PCIB_MAXFUNCS(i32* %89)
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %88, %83
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %148, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %151

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @PCIR_VENDOR, align 4
  %102 = call i32 (i32*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32*, i32, i32, i32, i32, i32, ...)*)(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 2)
  %103 = icmp eq i32 %102, 65535
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %148

105:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %106
  %111 = load i32**, i32*** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %5, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %136

119:                                              ; preds = %110
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @pci_get_slot(i32* %120)
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @pci_get_function(i32* %125)
  %127 = load i32, i32* %17, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32*, i32** %5, align 8
  %131 = load i32**, i32*** %7, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  store i32* %130, i32** %134, align 8
  br label %147

135:                                              ; preds = %124, %119
  br label %136

136:                                              ; preds = %135, %118
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %106

139:                                              ; preds = %106
  %140 = load i32*, i32** %4, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @pci_identify_function(i32* %140, i32* %141, i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %129
  br label %148

148:                                              ; preds = %147, %104
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %92

151:                                              ; preds = %92
  br label %152

152:                                              ; preds = %151, %82, %69
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %57

155:                                              ; preds = %57
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %176, %155
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %156
  %161 = load i32**, i32*** %7, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %176

168:                                              ; preds = %160
  %169 = load i32*, i32** %3, align 8
  %170 = load i32**, i32*** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @device_delete_child(i32* %169, i32* %174)
  br label %176

176:                                              ; preds = %168, %167
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %156

179:                                              ; preds = %156
  %180 = load i32**, i32*** %6, align 8
  %181 = load i32, i32* @M_TEMP, align 4
  %182 = call i32 @free(i32** %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %13, align 4
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @device_get_children(i32* %184, i32*** %6, i32* %8)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load i32**, i32*** %7, align 8
  %190 = load i32, i32* @M_TEMP, align 4
  %191 = call i32 @free(i32** %189, i32 %190)
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %2, align 4
  br label %238

193:                                              ; preds = %179
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %228, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %231

198:                                              ; preds = %194
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %217, %198
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %199
  %204 = load i32**, i32*** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32**, i32*** %7, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %208, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %227

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %199

220:                                              ; preds = %199
  %221 = load i32**, i32*** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @device_probe_and_attach(i32* %225)
  br label %227

227:                                              ; preds = %220, %215
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %194

231:                                              ; preds = %194
  %232 = load i32**, i32*** %7, align 8
  %233 = load i32, i32* @M_TEMP, align 4
  %234 = call i32 @free(i32** %232, i32 %233)
  %235 = load i32**, i32*** %6, align 8
  %236 = load i32, i32* @M_TEMP, align 4
  %237 = call i32 @free(i32** %235, i32 %236)
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %231, %188, %43, %26
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @device_get_children(i32*, i32***, i32*) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @pcib_get_domain(i32*) #1

declare dso_local i32 @pcib_get_bus(i32*) #1

declare dso_local i32 @PCIB_MAXSLOTS(i32*) #1

declare dso_local i32 @PCIB_READ_CONFIG(...) #1

declare dso_local i32 @PCIB_MAXFUNCS(i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32 @pci_identify_function(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
