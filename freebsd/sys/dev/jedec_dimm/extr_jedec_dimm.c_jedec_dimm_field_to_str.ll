; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_field_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_field_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jedec_dimm_softc = type { i32, i32, i32 }

@JEDEC_SPD_PAGE_SIZE = common dso_local global i32 0, align 4
@JEDEC_DTI_PAGE = common dso_local global i32 0, align 4
@JEDEC_LSA_PAGE_SET1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unable to change page for offset 0x%04x: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid offset 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"(offset + len) would cross page (0x%04x + 0x%04x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"destination too short (%u < %u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to read byte at 0x%02x: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@JEDEC_LSA_PAGE_SET0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to restore page for offset 0x%04x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jedec_dimm_softc*, i8*, i64, i32, i32, i32)* @jedec_dimm_field_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jedec_dimm_field_to_str(%struct.jedec_dimm_softc* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.jedec_dimm_softc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.jedec_dimm_softc* %0, %struct.jedec_dimm_softc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @JEDEC_SPD_PAGE_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %56

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @JEDEC_SPD_PAGE_SIZE, align 4
  %25 = mul nsw i32 2, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  store i32 1, i32* %16, align 4
  %28 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %29 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @JEDEC_DTI_PAGE, align 4
  %32 = load i32, i32* @JEDEC_LSA_PAGE_SET1, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @smbus_writeb(i32 %30, i32 %33, i32 0, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %39 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %27
  %45 = load i32, i32* @JEDEC_SPD_PAGE_SIZE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %51 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %207

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @JEDEC_SPD_PAGE_SIZE, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %63 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %207

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @JEDEC_SPD_PAGE_SIZE, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %15, align 4
  %75 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %76 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  br label %207

81:                                               ; preds = %67
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %15, align 4
  %92 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %93 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %98)
  br label %207

100:                                              ; preds = %84
  br label %120

101:                                              ; preds = %81
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %102, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %15, align 4
  %110 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %111 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %9, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 2, %115
  %117 = add nsw i32 %116, 1
  %118 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %117)
  br label %207

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %100
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %166, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %121
  %126 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %127 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %130 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @smbus_readb(i32 %128, i32 %131, i32 %134, i32* %13)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %125
  %139 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %140 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %145)
  br label %207

147:                                              ; preds = %125
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 %152, i8* %156, align 1
  br label %165

157:                                              ; preds = %147
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* %14, align 4
  %160 = mul nsw i32 2, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @snprintf(i8* %162, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %157, %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %121

169:                                              ; preds = %121
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %169
  %173 = load i64, i64* %9, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %202, %172
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %175
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 0, i8* %190, align 1
  br label %201

191:                                              ; preds = %178
  %192 = load i8*, i8** %8, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %202

200:                                              ; preds = %191
  br label %205

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %199
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %14, align 4
  br label %175

205:                                              ; preds = %200, %175
  br label %206

206:                                              ; preds = %205, %169
  br label %207

207:                                              ; preds = %206, %138, %108, %90, %73, %60, %48
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %207
  %211 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %212 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @JEDEC_DTI_PAGE, align 4
  %215 = load i32, i32* @JEDEC_LSA_PAGE_SET0, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @smbus_writeb(i32 %213, i32 %216, i32 0, i32 0)
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %210
  %221 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %7, align 8
  %222 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %17, align 4
  %226 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %220, %210
  br label %228

228:                                              ; preds = %227, %207
  %229 = load i32, i32* %15, align 4
  ret i32 %229
}

declare dso_local i32 @smbus_writeb(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @smbus_readb(i32, i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
