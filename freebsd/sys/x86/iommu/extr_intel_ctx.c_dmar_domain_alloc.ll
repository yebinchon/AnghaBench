; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i64, i32, i32, i32, %struct.dmar_unit*, i32, i32, i32, i32, i32 }
%struct.dmar_unit = type { i32, i32 }

@M_DMAR_DOMAIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dmar_domain_unload_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dmardom\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@Maxmem = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@DMAR_ECAP_PT = common dso_local global i32 0, align 4
@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* (%struct.dmar_unit*, i32)* @dmar_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @dmar_domain_alloc(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @alloc_unr(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %129

17:                                               ; preds = %2
  %18 = load i32, i32* @M_DMAR_DOMAIN, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dmar_domain* @malloc(i32 64, i32 %18, i32 %21)
  store %struct.dmar_domain* %22, %struct.dmar_domain** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %25 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %27 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %26, i32 0, i32 10
  %28 = call i32 @LIST_INIT(i32* %27)
  %29 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %30 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %29, i32 0, i32 9
  %31 = call i32 @RB_INIT(i32* %30)
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %33 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %32, i32 0, i32 8
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %36 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %35, i32 0, i32 7
  %37 = load i32, i32* @dmar_domain_unload_task, align 4
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %39 = call i32 @TASK_INIT(i32* %36, i32 0, i32 %37, %struct.dmar_domain* %38)
  %40 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %41 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %40, i32 0, i32 6
  %42 = load i32, i32* @MTX_DEF, align 4
  %43 = call i32 @mtx_init(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %42)
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %45 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %46 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %45, i32 0, i32 5
  store %struct.dmar_unit* %44, %struct.dmar_unit** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %17
  %50 = load i32, i32* @Maxmem, align 4
  %51 = call i64 @ptoa(i32 %50)
  br label %54

52:                                               ; preds = %17
  %53 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i64 [ %51, %49 ], [ %53, %52 ]
  %56 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %57 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %59 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %60 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @dmar_maxaddr2mgaw(%struct.dmar_unit* %58, i64 %61, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @domain_set_agaw(%struct.dmar_domain* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %126

73:                                               ; preds = %54
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %78 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = shl i64 1, %81
  %83 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %84 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %73
  %86 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %87 = call i32 @dmar_gas_init_domain(%struct.dmar_domain* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %92 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DMAR_ECAP_PT, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %99 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %100 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @domain_get_idmap_pgtbl(%struct.dmar_domain* %98, i64 %101)
  %103 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %104 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %97, %90
  %106 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %107 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %108 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %124

111:                                              ; preds = %85
  %112 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %113 = call i32 @domain_alloc_pgtbl(%struct.dmar_domain* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %126

117:                                              ; preds = %111
  %118 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %119 = call i32 @dmar_gas_reserve_region(%struct.dmar_domain* %118, i32 -18874368, i32 -17825792)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %126

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %105
  %125 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  store %struct.dmar_domain* %125, %struct.dmar_domain** %3, align 8
  br label %129

126:                                              ; preds = %122, %116, %72
  %127 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %128 = call i32 @dmar_domain_destroy(%struct.dmar_domain* %127)
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %129

129:                                              ; preds = %126, %124, %16
  %130 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  ret %struct.dmar_domain* %130
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local %struct.dmar_domain* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.dmar_domain*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @dmar_maxaddr2mgaw(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @domain_set_agaw(%struct.dmar_domain*, i32) #1

declare dso_local i32 @dmar_gas_init_domain(%struct.dmar_domain*) #1

declare dso_local i32 @domain_get_idmap_pgtbl(%struct.dmar_domain*, i64) #1

declare dso_local i32 @domain_alloc_pgtbl(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_reserve_region(%struct.dmar_domain*, i32, i32) #1

declare dso_local i32 @dmar_domain_destroy(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
