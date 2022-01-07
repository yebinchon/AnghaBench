; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_retain_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_retain_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i64, %struct.bcm_mips_cpuirq* }
%struct.bcm_mips_cpuirq = type { i64, i32, i64, %struct.bcm_mips_irqsrc* }
%struct.bcm_mips_irqsrc = type { i32, %struct.bcm_mips_cpuirq*, i32 }
%struct.resource = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"assigned IRQ has no references\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM_MIPS_IRQ_SHARED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"routing backplane interrupt vector %u to MIPS IRQ %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CPU IRQ already assigned\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"isrc has active references with no assigned CPU IRQ\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"single isrc dispatch enabled on cpuirq with multiple refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_mips_softc*, %struct.bcm_mips_irqsrc*, %struct.resource*)* @bcm_mips_retain_cpu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_retain_cpu_intr(%struct.bcm_mips_softc* %0, %struct.bcm_mips_irqsrc* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_mips_softc*, align 8
  %6 = alloca %struct.bcm_mips_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.bcm_mips_cpuirq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.bcm_mips_softc* %0, %struct.bcm_mips_softc** %5, align 8
  store %struct.bcm_mips_irqsrc* %1, %struct.bcm_mips_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %12 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @BCM_MIPS_LOCK_ASSERT(%struct.bcm_mips_softc* %12, i32 %13)
  %15 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %16 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %15, i32 0, i32 1
  %17 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %16, align 8
  %18 = icmp ne %struct.bcm_mips_cpuirq* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %21 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %20, i32 0, i32 1
  %22 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %21, align 8
  %23 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %29 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %4, align 4
  br label %173

35:                                               ; preds = %19
  %36 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %37 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %173

40:                                               ; preds = %3
  store i32 141, i32* %9, align 4
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = call i32 @rman_get_device(%struct.resource* %41)
  %43 = call i32* @bcm_mips_find_bhnd_parent(i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @bhnd_get_class(i32* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %58 [
    i32 151, label %51
    i32 150, label %51
    i32 137, label %51
    i32 136, label %51
    i32 143, label %51
    i32 149, label %51
    i32 134, label %51
    i32 135, label %51
    i32 145, label %51
    i32 142, label %51
    i32 139, label %57
    i32 138, label %57
    i32 140, label %57
    i32 148, label %57
    i32 147, label %57
    i32 146, label %57
    i32 130, label %57
    i32 129, label %57
    i32 128, label %57
    i32 131, label %57
    i32 133, label %57
    i32 132, label %57
    i32 141, label %57
    i32 144, label %57
  ]

51:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  %52 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %52, i32 0, i32 1
  %54 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %53, align 8
  %55 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %56 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %54, i64 %55
  store %struct.bcm_mips_cpuirq* %56, %struct.bcm_mips_cpuirq** %8, align 8
  br label %105

57:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  br label %58

58:                                               ; preds = %49, %57
  %59 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %60 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %59, i32 0, i32 1
  %61 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %60, align 8
  %62 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %63 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %61, i64 %62
  store %struct.bcm_mips_cpuirq* %63, %struct.bcm_mips_cpuirq** %8, align 8
  store i64 0, i64* %11, align 8
  br label %64

64:                                               ; preds = %101, %58
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %67 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %101

75:                                               ; preds = %70
  %76 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %76, i32 0, i32 1
  %78 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %78, i64 %79
  %81 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %101

85:                                               ; preds = %75
  %86 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %87 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %86, i32 0, i32 1
  %88 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %88, i64 %89
  %91 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %101

95:                                               ; preds = %85
  %96 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %5, align 8
  %97 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %96, i32 0, i32 1
  %98 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %98, i64 %99
  store %struct.bcm_mips_cpuirq* %100, %struct.bcm_mips_cpuirq** %8, align 8
  br label %104

101:                                              ; preds = %94, %84, %74
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %64

104:                                              ; preds = %95, %64
  br label %105

105:                                              ; preds = %104, %51
  %106 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %107 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %110 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %111)
  %113 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %114 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %113, i32 0, i32 1
  %115 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %114, align 8
  %116 = icmp eq %struct.bcm_mips_cpuirq* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @KASSERT(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %120 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @KASSERT(i32 %123, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %126 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %134, label %129

129:                                              ; preds = %105
  %130 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %131 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %130, i32 0, i32 3
  %132 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %131, align 8
  %133 = icmp eq %struct.bcm_mips_irqsrc* %132, null
  br label %134

134:                                              ; preds = %129, %105
  %135 = phi i1 [ true, %105 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @KASSERT(i32 %136, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %139 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @UINT_MAX, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %4, align 4
  br label %173

146:                                              ; preds = %134
  %147 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %148 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %152 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %156 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %157 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %156, i32 0, i32 1
  store %struct.bcm_mips_cpuirq* %155, %struct.bcm_mips_cpuirq** %157, align 8
  %158 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %159 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 1
  br i1 %161, label %162, label %172

162:                                              ; preds = %146
  %163 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %164 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @BCM_MIPS_IRQ_SHARED, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %170 = load %struct.bcm_mips_cpuirq*, %struct.bcm_mips_cpuirq** %8, align 8
  %171 = getelementptr inbounds %struct.bcm_mips_cpuirq, %struct.bcm_mips_cpuirq* %170, i32 0, i32 3
  store %struct.bcm_mips_irqsrc* %169, %struct.bcm_mips_irqsrc** %171, align 8
  br label %172

172:                                              ; preds = %168, %162, %146
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %144, %35, %33
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @BCM_MIPS_LOCK_ASSERT(%struct.bcm_mips_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @bcm_mips_find_bhnd_parent(i32) #1

declare dso_local i32 @rman_get_device(%struct.resource*) #1

declare dso_local i32 @bhnd_get_class(i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
