; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32, i32, i32, i8*, i32**, i32 }
%struct.ipmi_get_info = type { i32, i64, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"KCS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SMIC\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"BT mode is unsupported\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s mode found at %s 0x%jx alignment 0x%x on %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"couldn't configure I/O resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipmi_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_get_info, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ipmi_softc* @device_get_softc(i32 %11)
  store %struct.ipmi_softc* %12, %struct.ipmi_softc** %4, align 8
  %13 = call i32 @ipmi_smbios_identify(%struct.ipmi_get_info* %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ipmi_hint_identify(i32 %16, %struct.ipmi_get_info* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %212

21:                                               ; preds = %15, %1
  %22 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %25
    i32 130, label %26
  ]

24:                                               ; preds = %21
  store i32 2, i32* %7, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %32

25:                                               ; preds = %21
  store i32 3, i32* %7, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %212

30:                                               ; preds = %21
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %212

32:                                               ; preds = %25, %24
  store i32 0, i32* %8, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %43 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_parent(i32 %48)
  %50 = call i32 @device_get_name(i32 %49)
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %42, i32 %45, i32 %47, i32 %50)
  %52 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %56, i32* %10, align 4
  br label %59

57:                                               ; preds = %32
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %104

70:                                               ; preds = %59
  %71 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = sub nsw i64 %83, 1
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = call i8* @bus_alloc_resource(i32 %73, i32 %74, i32* %76, i64 %78, i64 %84, i32 %85, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %89, i32 0, i32 5
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  store i32* %88, i32** %92, align 8
  %93 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %93, i32 0, i32 5
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %70
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %212

103:                                              ; preds = %70
  br label %163

104:                                              ; preds = %59
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %157, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %160

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %118, %123
  %125 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %126, %131
  %133 = load i32, i32* @RF_ACTIVE, align 4
  %134 = call i8* @bus_alloc_resource(i32 %113, i32 %114, i32* %116, i64 %124, i64 %132, i32 1, i32 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %136, i32 0, i32 5
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* %135, i32** %141, align 8
  %142 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %142, i32 0, i32 5
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %109
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @ENXIO, align 4
  store i32 %153, i32* %8, align 4
  %154 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %154, i32 0, i32 2
  store i32 0, i32* %155, align 8
  br label %208

156:                                              ; preds = %109
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %105

160:                                              ; preds = %105
  %161 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %162 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %103
  %164 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %163
  %168 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %169 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %168, i32 0, i32 3
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @SYS_RES_IRQ, align 4
  %172 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @RF_SHAREABLE, align 4
  %179 = load i32, i32* @RF_ACTIVE, align 4
  %180 = or i32 %178, %179
  %181 = call i8* @bus_alloc_resource(i32 %170, i32 %171, i32* %173, i64 %175, i64 %177, i32 1, i32 %180)
  %182 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %183 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %167, %163
  %185 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %201 [
    i32 129, label %187
    i32 128, label %194
  ]

187:                                              ; preds = %184
  %188 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %189 = call i32 @ipmi_kcs_attach(%struct.ipmi_softc* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %208

193:                                              ; preds = %187
  br label %201

194:                                              ; preds = %184
  %195 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %196 = call i32 @ipmi_smic_attach(%struct.ipmi_softc* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %208

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %184, %200, %193
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @ipmi_attach(i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %208

207:                                              ; preds = %201
  store i32 0, i32* %2, align 4
  br label %212

208:                                              ; preds = %206, %199, %192, %150
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @ipmi_release_resources(i32 %209)
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %207, %99, %30, %26, %19
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ipmi_smbios_identify(%struct.ipmi_get_info*) #1

declare dso_local i32 @ipmi_hint_identify(i32, %struct.ipmi_get_info*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @ipmi_kcs_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_smic_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_attach(i32) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
