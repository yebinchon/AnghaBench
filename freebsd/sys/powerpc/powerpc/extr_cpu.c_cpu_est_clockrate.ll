; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_est_clockrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_est_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSL_EE = common dso_local global i32 0, align 4
@SPR_MMCR0 = common dso_local global i32 0, align 4
@SPR_MMCR0_FC = common dso_local global i32 0, align 4
@SPR_PMC1 = common dso_local global i32 0, align 4
@PMCN_CYCLES = common dso_local global i32 0, align 4
@SPR_970MMCR0 = common dso_local global i32 0, align 4
@SPR_970MMCR1 = common dso_local global i32 0, align 4
@SPR_970MMCRA = common dso_local global i32 0, align 4
@SPR_970PMC1 = common dso_local global i32 0, align 4
@PMC970N_CYCLES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ibm,extended-clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_est_clockrate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = call i32 (...) @mfpvr()
  %14 = ashr i32 %13, 16
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @mfmsr()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PSL_EE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @mtmsr(i32 %19)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %72 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
    i32 139, label %22
    i32 135, label %22
    i32 134, label %22
    i32 133, label %22
    i32 132, label %22
    i32 138, label %43
    i32 137, label %43
    i32 136, label %43
  ]

22:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %23 = load i32, i32* @SPR_MMCR0, align 4
  %24 = load i32, i32* @SPR_MMCR0_FC, align 4
  %25 = call i32 @mtspr(i32 %23, i32 %24)
  %26 = load i32, i32* @SPR_PMC1, align 4
  %27 = call i32 @mtspr(i32 %26, i32 0)
  %28 = load i32, i32* @SPR_MMCR0, align 4
  %29 = load i32, i32* @PMCN_CYCLES, align 4
  %30 = call i32 @SPR_MMCR0_PMC1SEL(i32 %29)
  %31 = call i32 @mtspr(i32 %28, i32 %30)
  %32 = call i32 @DELAY(i32 1000)
  %33 = load i32, i32* @SPR_PMC1, align 4
  %34 = call i32 @mfspr(i32 %33)
  %35 = mul nsw i32 %34, 1000
  %36 = add nsw i32 %35, 4999
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SPR_MMCR0, align 4
  %39 = load i32, i32* @SPR_MMCR0_FC, align 4
  %40 = call i32 @mtspr(i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mtmsr(i32 %41)
  store i32 0, i32* %3, align 4
  br label %140

43:                                               ; preds = %2, %2, %2
  %44 = call i32 (...) @isync()
  %45 = load i32, i32* @SPR_970MMCR0, align 4
  %46 = load i32, i32* @SPR_MMCR0_FC, align 4
  %47 = call i32 @mtspr(i32 %45, i32 %46)
  %48 = call i32 (...) @isync()
  %49 = load i32, i32* @SPR_970MMCR1, align 4
  %50 = call i32 @mtspr(i32 %49, i32 0)
  %51 = load i32, i32* @SPR_970MMCRA, align 4
  %52 = call i32 @mtspr(i32 %51, i32 0)
  %53 = load i32, i32* @SPR_970PMC1, align 4
  %54 = call i32 @mtspr(i32 %53, i32 0)
  %55 = load i32, i32* @SPR_970MMCR0, align 4
  %56 = load i32, i32* @PMC970N_CYCLES, align 4
  %57 = call i32 @SPR_970MMCR0_PMC1SEL(i32 %56)
  %58 = call i32 @mtspr(i32 %55, i32 %57)
  %59 = call i32 (...) @isync()
  %60 = call i32 @DELAY(i32 1000)
  %61 = call i32 (...) @powerpc_sync()
  %62 = load i32, i32* @SPR_970MMCR0, align 4
  %63 = load i32, i32* @SPR_MMCR0_FC, align 4
  %64 = call i32 @mtspr(i32 %62, i32 %63)
  %65 = load i32, i32* @SPR_970PMC1, align 4
  %66 = call i32 @mfspr(i32 %65)
  %67 = mul nsw i32 %66, 1000
  %68 = add nsw i32 %67, 4999
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mtmsr(i32 %70)
  store i32 0, i32* %3, align 4
  br label %140

72:                                               ; preds = %2
  %73 = call i32 @OF_peer(i32 0)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %3, align 4
  br label %140

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @OF_child(i32 %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %95, %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %87 = call i32 (i32, i8*, ...) @OF_getprop(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %86, i64 8)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %98

95:                                               ; preds = %90, %84
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @OF_peer(i32 %96)
  store i32 %97, i32* %9, align 4
  br label %81

98:                                               ; preds = %94, %81
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @OF_child(i32 %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %115, %98
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %107 = call i32 (i32, i8*, ...) @OF_getprop(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %106, i64 8)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %118

115:                                              ; preds = %110, %104
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @OF_peer(i32 %116)
  store i32 %117, i32* %8, align 4
  br label %101

118:                                              ; preds = %114, %101
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @ENOENT, align 4
  store i32 %122, i32* %3, align 4
  br label %140

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 (i32, i8*, ...) @OF_getprop(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %125, i64 4)
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %140

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 (i32, i8*, ...) @OF_getprop(i32 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %131, i64 4)
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 32
  store i32 %137, i32* %135, align 4
  store i32 0, i32* %3, align 4
  br label %140

138:                                              ; preds = %129
  %139 = load i32, i32* @ENOENT, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %134, %128, %121, %76, %43, %22
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @SPR_MMCR0_PMC1SEL(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @SPR_970MMCR0_PMC1SEL(i32) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
