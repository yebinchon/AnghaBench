; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32 (%struct.tpm_softc*, i64, i8*)*, i32, i32, %struct.TYPE_2__, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.isa_attach_args = type { i64, i32, i32, i32, i32, i32, i32 }

@tpm_legacy_start = common dso_local global i32 0, align 4
@tpm_legacy_read = common dso_local global i32 0, align 4
@tpm_legacy_write = common dso_local global i32 0, align 4
@tpm_legacy_end = common dso_local global i32 0, align 4
@TPM_SIZE = common dso_local global i32 0, align 4
@tpm_tis12_start = common dso_local global i32 0, align 4
@tpm_tis12_read = common dso_local global i32 0, align 4
@tpm_tis12_write = common dso_local global i32 0, align 4
@tpm_tis12_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c": cannot map registers\0A\00", align 1
@IRQUNK = common dso_local global i64 0, align 8
@IST_EDGE = common dso_local global i32 0, align 4
@IPL_TTY = common dso_local global i32 0, align 4
@tpm_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: cannot establish interrupt\0A\00", align 1
@PWR_RESUME = common dso_local global i32 0, align 4
@tpm_powerhook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_attach(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tpm_softc*, align 8
  %8 = alloca %struct.isa_attach_args*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.tpm_softc*
  store %struct.tpm_softc* %13, %struct.tpm_softc** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.isa_attach_args*
  store %struct.isa_attach_args* %15, %struct.isa_attach_args** %8, align 8
  %16 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %17 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %20 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @tpm_legacy_probe(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %26 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %29 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %31 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %34 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %37 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %40 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %42 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %41, i32 0, i32 0
  store i32 (%struct.tpm_softc*, i64, i8*)* @tpm_legacy_init, i32 (%struct.tpm_softc*, i64, i8*)** %42, align 8
  %43 = load i32, i32* @tpm_legacy_start, align 4
  %44 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %45 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @tpm_legacy_read, align 4
  %47 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %48 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @tpm_legacy_write, align 4
  %50 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %51 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @tpm_legacy_end, align 4
  %53 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %54 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  br label %79

55:                                               ; preds = %3
  %56 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %57 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %60 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %62 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @TPM_SIZE, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %66 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %65, i32 0, i32 0
  store i32 (%struct.tpm_softc*, i64, i8*)* @tpm_tis12_init, i32 (%struct.tpm_softc*, i64, i8*)** %66, align 8
  %67 = load i32, i32* @tpm_tis12_start, align 4
  %68 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %69 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @tpm_tis12_read, align 4
  %71 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %72 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @tpm_tis12_write, align 4
  %74 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %75 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @tpm_tis12_end, align 4
  %77 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %78 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %55, %24
  %80 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %81 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %86 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %85, i32 0, i32 4
  %87 = call i64 @bus_space_map(i32 %82, i32 %83, i32 %84, i32 0, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %167

91:                                               ; preds = %79
  %92 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %93 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %92, i32 0, i32 0
  %94 = load i32 (%struct.tpm_softc*, i64, i8*)*, i32 (%struct.tpm_softc*, i64, i8*)** %93, align 8
  %95 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %96 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %97 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %100 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 %94(%struct.tpm_softc* %95, i64 %98, i8* %102)
  store i32 %103, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %91
  %106 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %107 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %110 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @bus_space_unmap(i32 %108, i32 %111, i32 %112)
  br label %167

114:                                              ; preds = %91
  %115 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %116 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %115, i32 0, i32 0
  %117 = load i32 (%struct.tpm_softc*, i64, i8*)*, i32 (%struct.tpm_softc*, i64, i8*)** %116, align 8
  %118 = icmp eq i32 (%struct.tpm_softc*, i64, i8*)* %117, @tpm_tis12_init
  br i1 %118, label %119, label %158

119:                                              ; preds = %114
  %120 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %121 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IRQUNK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %119
  %126 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %127 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.isa_attach_args*, %struct.isa_attach_args** %8, align 8
  %130 = getelementptr inbounds %struct.isa_attach_args, %struct.isa_attach_args* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @IST_EDGE, align 4
  %133 = load i32, i32* @IPL_TTY, align 4
  %134 = load i32, i32* @tpm_intr, align 4
  %135 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %136 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %137 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32* @isa_intr_establish(i32 %128, i64 %131, i32 %132, i32 %133, i32 %134, %struct.tpm_softc* %135, i8* %139)
  %141 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %142 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %141, i32 0, i32 6
  store i32* %140, i32** %142, align 8
  %143 = icmp eq i32* %140, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %125
  %145 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %146 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %149 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TPM_SIZE, align 4
  %152 = call i32 @bus_space_unmap(i32 %147, i32 %150, i32 %151)
  %153 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %154 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  br label %167

158:                                              ; preds = %125, %119, %114
  %159 = load i32, i32* @PWR_RESUME, align 4
  %160 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %161 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @tpm_powerhook, align 4
  %163 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %164 = call i32 @powerhook_establish(i32 %162, %struct.tpm_softc* %163)
  %165 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %166 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %158, %144, %105, %89
  ret void
}

declare dso_local i64 @tpm_legacy_probe(i32, i32) #1

declare dso_local i32 @tpm_legacy_init(%struct.tpm_softc*, i64, i8*) #1

declare dso_local i32 @tpm_tis12_init(%struct.tpm_softc*, i64, i8*) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32* @isa_intr_establish(i32, i64, i32, i32, i32, %struct.tpm_softc*, i8*) #1

declare dso_local i32 @powerhook_establish(i32, %struct.tpm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
