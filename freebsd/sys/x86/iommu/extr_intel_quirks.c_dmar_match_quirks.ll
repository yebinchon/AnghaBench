; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_dmar_match_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_dmar_match_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.intel_dmar_quirk_nb = type { i64, i64, i32 (%struct.dmar_unit.0*, i32*)*, i32 }
%struct.dmar_unit.0 = type opaque
%struct.intel_dmar_quirk_cpu = type { i64, i64, i64, i64, i32, i32 (%struct.dmar_unit.1*)*, i32 }
%struct.dmar_unit.1 = type opaque

@QUIRK_NB_ALL_REV = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NB IOMMU quirk %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot find northbridge\0A\00", align 1
@CPUID_EXT_FAMILY = common dso_local global i64 0, align 8
@CPUID_EXT_MODEL = common dso_local global i64 0, align 8
@CPUID_FAMILY = common dso_local global i64 0, align 8
@CPUID_MODEL = common dso_local global i64 0, align 8
@CPUID_STEPPING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"CPU IOMMU quirk %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, %struct.intel_dmar_quirk_nb*, i32, %struct.intel_dmar_quirk_cpu*, i32)* @dmar_match_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_match_quirks(%struct.dmar_unit* %0, %struct.intel_dmar_quirk_nb* %1, i32 %2, %struct.intel_dmar_quirk_cpu* %3, i32 %4) #0 {
  %6 = alloca %struct.dmar_unit*, align 8
  %7 = alloca %struct.intel_dmar_quirk_nb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_dmar_quirk_cpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.intel_dmar_quirk_nb*, align 8
  %13 = alloca %struct.intel_dmar_quirk_cpu*, align 8
  %14 = alloca [4 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %6, align 8
  store %struct.intel_dmar_quirk_nb* %1, %struct.intel_dmar_quirk_nb** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.intel_dmar_quirk_cpu* %3, %struct.intel_dmar_quirk_cpu** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %7, align 8
  %24 = icmp ne %struct.intel_dmar_quirk_nb* %23, null
  br i1 %24, label %25, label %90

25:                                               ; preds = %5
  %26 = call i32* @pci_find_bsf(i32 0, i32 0, i32 0)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @pci_get_device(i32* %30)
  store i64 %31, i64* %15, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @pci_get_revid(i32* %32)
  store i64 %33, i64* %16, align 8
  store i32 0, i32* %22, align 4
  br label %34

34:                                               ; preds = %80, %29
  %35 = load i32, i32* %22, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %7, align 8
  %40 = load i32, i32* %22, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %39, i64 %41
  store %struct.intel_dmar_quirk_nb* %42, %struct.intel_dmar_quirk_nb** %12, align 8
  %43 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %12, align 8
  %44 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %38
  %49 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %12, align 8
  %50 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %12, align 8
  %56 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QUIRK_NB_ALL_REV, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54, %48
  %61 = load i64, i64* @bootverbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %65 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %12, align 8
  %68 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.intel_dmar_quirk_nb*, %struct.intel_dmar_quirk_nb** %12, align 8
  %73 = getelementptr inbounds %struct.intel_dmar_quirk_nb, %struct.intel_dmar_quirk_nb* %72, i32 0, i32 2
  %74 = load i32 (%struct.dmar_unit.0*, i32*)*, i32 (%struct.dmar_unit.0*, i32*)** %73, align 8
  %75 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %76 = bitcast %struct.dmar_unit* %75 to %struct.dmar_unit.0*
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 %74(%struct.dmar_unit.0* %76, i32* %77)
  br label %79

79:                                               ; preds = %71, %54, %38
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  br label %34

83:                                               ; preds = %34
  br label %89

84:                                               ; preds = %25
  %85 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %86 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %83
  br label %90

90:                                               ; preds = %89, %5
  %91 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %9, align 8
  %92 = icmp ne %struct.intel_dmar_quirk_cpu* %91, null
  br i1 %92, label %93, label %187

93:                                               ; preds = %90
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %95 = call i32 @do_cpuid(i32 1, i64* %94)
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  %98 = load i64, i64* @CPUID_EXT_FAMILY, align 8
  %99 = and i64 %97, %98
  %100 = ashr i64 %99, 20
  store i64 %100, i64* %17, align 8
  %101 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %102 = load i64, i64* %101, align 16
  %103 = load i64, i64* @CPUID_EXT_MODEL, align 8
  %104 = and i64 %102, %103
  %105 = ashr i64 %104, 16
  store i64 %105, i64* %18, align 8
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %107 = load i64, i64* %106, align 16
  %108 = load i64, i64* @CPUID_FAMILY, align 8
  %109 = and i64 %107, %108
  %110 = ashr i64 %109, 8
  store i64 %110, i64* %19, align 8
  %111 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = load i64, i64* @CPUID_MODEL, align 8
  %114 = and i64 %112, %113
  %115 = ashr i64 %114, 4
  store i64 %115, i64* %20, align 8
  %116 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %117 = load i64, i64* %116, align 16
  %118 = load i64, i64* @CPUID_STEPPING, align 8
  %119 = and i64 %117, %118
  store i64 %119, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %120

120:                                              ; preds = %183, %93
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %186

124:                                              ; preds = %120
  %125 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %9, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %125, i64 %127
  store %struct.intel_dmar_quirk_cpu* %128, %struct.intel_dmar_quirk_cpu** %13, align 8
  %129 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %130 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %182

134:                                              ; preds = %124
  %135 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %136 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %18, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %182

140:                                              ; preds = %134
  %141 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %142 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %19, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %140
  %147 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %148 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %20, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %182

152:                                              ; preds = %146
  %153 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %154 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %159 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %21, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %157, %152
  %165 = load i64, i64* @bootverbose, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %169 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %172 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %167, %164
  %176 = load %struct.intel_dmar_quirk_cpu*, %struct.intel_dmar_quirk_cpu** %13, align 8
  %177 = getelementptr inbounds %struct.intel_dmar_quirk_cpu, %struct.intel_dmar_quirk_cpu* %176, i32 0, i32 5
  %178 = load i32 (%struct.dmar_unit.1*)*, i32 (%struct.dmar_unit.1*)** %177, align 8
  %179 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %180 = bitcast %struct.dmar_unit* %179 to %struct.dmar_unit.1*
  %181 = call i32 %178(%struct.dmar_unit.1* %180)
  br label %182

182:                                              ; preds = %175, %157, %146, %140, %134, %124
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %22, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %22, align 4
  br label %120

186:                                              ; preds = %120
  br label %187

187:                                              ; preds = %186, %90
  ret void
}

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i64 @pci_get_device(i32*) #1

declare dso_local i64 @pci_get_revid(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @do_cpuid(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
