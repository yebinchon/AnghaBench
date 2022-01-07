; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_map_ioapic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_map_ioapic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"impossible EOPNOTSUPP from vmem\00", align 1
@DMAR_IRTE1_DLM_ExtINT = common dso_local global i32 0, align 4
@DMAR_IRTE1_DLM_NMI = common dso_local global i32 0, align 4
@DMAR_IRTE1_DLM_SMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No vector for IRQ %u\00", align 1
@DMAR_IRTE1_DLM_FM = common dso_local global i32 0, align 4
@DMAR_IRTE1_TM_EDGE = common dso_local global i32 0, align 4
@DMAR_IRTE1_TM_LEVEL = common dso_local global i32 0, align 4
@DMAR_IRTE1_RH_DIRECT = common dso_local global i32 0, align 4
@DMAR_IRTE1_DM_PHYSICAL = common dso_local global i32 0, align 4
@DMAR_IRTE1_P = common dso_local global i32 0, align 4
@IOART_TRGREDG = common dso_local global i64 0, align 8
@IOART_TRGRLVL = common dso_local global i64 0, align 8
@IOART_INTAHI = common dso_local global i64 0, align 8
@IOART_INTALO = common dso_local global i64 0, align 8
@IOART_DELFIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_map_ioapic_intr(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.dmar_unit*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.dmar_unit* @dmar_find_ioapic(i32 %27, i32* %26)
  store %struct.dmar_unit* %28, %struct.dmar_unit** %20, align 8
  %29 = load %struct.dmar_unit*, %struct.dmar_unit** %20, align 8
  %30 = icmp eq %struct.dmar_unit* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %9
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %20, align 8
  %33 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %9
  %37 = load i32*, i32** %17, align 8
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %38, i32* %10, align 4
  br label %166

39:                                               ; preds = %31
  %40 = load %struct.dmar_unit*, %struct.dmar_unit** %20, align 8
  %41 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @M_FIRSTFIT, align 4
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vmem_alloc(i32 %42, i32 1, i32 %45, i32* %21)
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %25, align 4
  store i32 %55, i32* %10, align 4
  br label %166

56:                                               ; preds = %39
  %57 = load i32, i32* %21, align 4
  store i32 %57, i32* %24, align 4
  store i32 0, i32* %22, align 4
  %58 = load i32, i32* %16, align 4
  switch i32 %58, label %71 [
    i32 130, label %59
    i32 129, label %63
    i32 128, label %67
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* @DMAR_IRTE1_DLM_ExtINT, align 4
  %61 = load i32, i32* %22, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %22, align 4
  br label %85

63:                                               ; preds = %56
  %64 = load i32, i32* @DMAR_IRTE1_DLM_NMI, align 4
  %65 = load i32, i32* %22, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %22, align 4
  br label %85

67:                                               ; preds = %56
  %68 = load i32, i32* @DMAR_IRTE1_DLM_SMI, align 4
  %69 = load i32, i32* %22, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %85

71:                                               ; preds = %56
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %74, i8* %77)
  %79 = load i32, i32* @DMAR_IRTE1_DLM_FM, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @DMAR_IRTE1_V(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %22, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %22, align 4
  br label %85

85:                                               ; preds = %71, %67, %63, %59
  %86 = load %struct.dmar_unit*, %struct.dmar_unit** %20, align 8
  %87 = call i64 @DMAR_X2APIC(%struct.dmar_unit* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @DMAR_IRTE1_DST_x2APIC(i32 %90)
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @DMAR_IRTE1_DST_xAPIC(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %91, %89 ], [ %94, %92 ]
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @DMAR_IRTE1_TM_EDGE, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @DMAR_IRTE1_TM_LEVEL, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = or i32 %96, %104
  %106 = load i32, i32* @DMAR_IRTE1_RH_DIRECT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @DMAR_IRTE1_DM_PHYSICAL, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @DMAR_IRTE1_P, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %22, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %22, align 4
  %114 = load %struct.dmar_unit*, %struct.dmar_unit** %20, align 8
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %26, align 4
  %118 = call i32 @dmar_ir_program_irte(%struct.dmar_unit* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32*, i32** %18, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %163

121:                                              ; preds = %103
  %122 = load i32, i32* %24, align 4
  %123 = and i32 %122, 32767
  %124 = shl i32 %123, 49
  %125 = sext i32 %124 to i64
  %126 = or i64 281474976710656, %125
  %127 = load i32, i32* %24, align 4
  %128 = and i32 %127, 32768
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 2048, i32 0
  %132 = sext i32 %131 to i64
  %133 = or i64 %126, %132
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %121
  %137 = load i64, i64* @IOART_TRGREDG, align 8
  br label %140

138:                                              ; preds = %121
  %139 = load i64, i64* @IOART_TRGRLVL, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = or i64 %133, %141
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i64, i64* @IOART_INTAHI, align 8
  br label %149

147:                                              ; preds = %140
  %148 = load i64, i64* @IOART_INTALO, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %146, %145 ], [ %148, %147 ]
  %151 = or i64 %142, %150
  %152 = load i64, i64* @IOART_DELFIXED, align 8
  %153 = or i64 %151, %152
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = or i64 %153, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %23, align 4
  %159 = ashr i32 %158, 32
  %160 = load i32*, i32** %18, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i32*, i32** %19, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %149, %103
  %164 = load i32, i32* %24, align 4
  %165 = load i32*, i32** %17, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %163, %49, %36
  %167 = load i32, i32* %10, align 4
  ret i32 %167
}

declare dso_local %struct.dmar_unit* @dmar_find_ioapic(i32, i32*) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_IRTE1_V(i32) #1

declare dso_local i64 @DMAR_X2APIC(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_IRTE1_DST_x2APIC(i32) #1

declare dso_local i32 @DMAR_IRTE1_DST_xAPIC(i32) #1

declare dso_local i32 @dmar_ir_program_irte(%struct.dmar_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
