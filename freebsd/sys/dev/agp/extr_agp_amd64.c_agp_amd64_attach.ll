; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32*, i32, i32, i32, %struct.agp_gatt* }
%struct.agp_gatt = type { i32 }

@PCI_SLOTMAX = common dso_local global i32 0, align 4
@AMD64_MAX_MCTRL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%d Miscellaneous Control unit(s) found.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AGP_AMD64_ATTBASE = common dso_local global i32 0, align 4
@AGP_AMD64_ATTBASE_MASK = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_GARTEN = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_DISGARTCPU = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_DISGARTIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_amd64_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_amd64_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.agp_amd64_softc* @device_get_softc(i32 %10)
  store %struct.agp_amd64_softc* %11, %struct.agp_amd64_softc** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PCI_SLOTMAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AMD64_MAX_MCTRL, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %44

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pci_cfgregread(i32 0, i32 %23, i32 3, i32 0, i32 4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 285413410
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 302190626
  br i1 %29, label %30, label %40

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %33 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %12

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %193

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %52 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %58 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @agp_generic_attach(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %193

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @AGP_GET_APERTURE(i32 %68)
  %70 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %71 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %89, %67
  %73 = load i32, i32* %3, align 4
  %74 = call %struct.agp_gatt* @agp_alloc_gatt(i32 %73)
  store %struct.agp_gatt* %74, %struct.agp_gatt** %5, align 8
  %75 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %76 = icmp ne %struct.agp_gatt* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %90

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @AGP_GET_APERTURE(i32 %80)
  %82 = sdiv i32 %81, 2
  %83 = call i64 @AGP_SET_APERTURE(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @agp_generic_detach(i32 %86)
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %193

89:                                               ; preds = %78
  br label %72

90:                                               ; preds = %77
  %91 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %92 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %93 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %92, i32 0, i32 4
  store %struct.agp_gatt* %91, %struct.agp_gatt** %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @pci_get_vendor(i32 %94)
  switch i32 %95, label %141 [
    i32 4281, label %96
    i32 4318, label %108
    i32 4358, label %120
  ]

96:                                               ; preds = %90
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @agp_amd64_uli_init(i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %101 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @agp_amd64_uli_set_aperture(i32 %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %193

107:                                              ; preds = %96
  br label %141

108:                                              ; preds = %90
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @agp_amd64_nvidia_init(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %113 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @agp_amd64_nvidia_set_aperture(i32 %111, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @ENXIO, align 4
  store i32 %118, i32* %2, align 4
  br label %193

119:                                              ; preds = %108
  br label %141

120:                                              ; preds = %90
  %121 = call i32 (...) @agp_amd64_via_match()
  %122 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %123 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %125 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @agp_amd64_via_init(i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %133 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @agp_amd64_via_set_aperture(i32 %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %2, align 4
  br label %193

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %120
  br label %141

141:                                              ; preds = %90, %140, %119, %107
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %189, %141
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %145 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %142
  %149 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %150 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @AGP_AMD64_ATTBASE, align 4
  %157 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %158 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 8
  %161 = load i32, i32* @AGP_AMD64_ATTBASE_MASK, align 4
  %162 = and i32 %160, %161
  %163 = call i32 @pci_cfgregwrite(i32 0, i32 %155, i32 3, i32 %156, i32 %162, i32 4)
  %164 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %165 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %172 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %173 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %180 = call i32 @pci_cfgregread(i32 0, i32 %178, i32 3, i32 %179, i32 4)
  %181 = load i32, i32* @AGP_AMD64_APCTRL_GARTEN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @AGP_AMD64_APCTRL_DISGARTCPU, align 4
  %184 = load i32, i32* @AGP_AMD64_APCTRL_DISGARTIO, align 4
  %185 = or i32 %183, %184
  %186 = xor i32 %185, -1
  %187 = and i32 %182, %186
  %188 = call i32 @pci_cfgregwrite(i32 0, i32 %170, i32 3, i32 %171, i32 %187, i32 4)
  br label %189

189:                                              ; preds = %148
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %142

192:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %137, %117, %105, %85, %65, %47
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @agp_amd64_uli_init(i32) #1

declare dso_local i32 @agp_amd64_uli_set_aperture(i32, i32) #1

declare dso_local i32 @agp_amd64_nvidia_init(i32) #1

declare dso_local i32 @agp_amd64_nvidia_set_aperture(i32, i32) #1

declare dso_local i32 @agp_amd64_via_match(...) #1

declare dso_local i32 @agp_amd64_via_init(i32) #1

declare dso_local i32 @agp_amd64_via_set_aperture(i32, i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
