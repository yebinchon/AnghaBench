; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_map_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_map_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"used RMRR entry %p %p %x\00", align 1
@DMAR_GM_CANWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid flags 0x%x\00", align 1
@DMAR_MAP_ENTRY_READ = common dso_local global i32 0, align 4
@DMAR_PTE_R = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_WRITE = common dso_local global i32 0, align 4
@DMAR_PTE_W = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_SNOOP = common dso_local global i32 0, align 4
@DMAR_PTE_SNP = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_TM = common dso_local global i32 0, align 4
@DMAR_PTE_TM = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unexpected error %d from domain_map_buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_gas_map_region(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca %struct.dmar_map_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %7, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %15 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %20 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %21 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %22 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %18, i8* %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %32, i8* %35)
  %37 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %38 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %41 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %40)
  %42 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %43 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dmar_gas_alloc_region(%struct.dmar_domain* %42, %struct.dmar_map_entry* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %50 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %153

52:                                               ; preds = %5
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %55 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %59 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %58)
  %60 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %61 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %64 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %153

68:                                               ; preds = %52
  %69 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %70 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %71 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %74 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %77 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load i32*, i32** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %83 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = call i32 @OFF_TO_IDX(i64 %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @DMAR_MAP_ENTRY_READ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %68
  %94 = load i32, i32* @DMAR_PTE_R, align 4
  br label %96

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @DMAR_MAP_ENTRY_WRITE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @DMAR_PTE_W, align 4
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = or i32 %97, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @DMAR_MAP_ENTRY_SNOOP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @DMAR_PTE_SNP, align 4
  br label %115

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = or i32 %107, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @DMAR_MAP_ENTRY_TM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @DMAR_PTE_TM, align 4
  br label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ]
  %127 = or i32 %117, %126
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = call i32 @domain_map_buf(%struct.dmar_domain* %69, i64 %72, i64 %79, i32* %88, i32 %127, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %143 = call i32 @dmar_domain_unload_entry(%struct.dmar_map_entry* %142, i32 0)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %6, align 4
  br label %153

145:                                              ; preds = %135
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @KASSERT(i32 %148, i8* %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %145, %141, %67, %48
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_alloc_region(%struct.dmar_domain*, %struct.dmar_map_entry*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @domain_map_buf(%struct.dmar_domain*, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i32 @dmar_domain_unload_entry(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
