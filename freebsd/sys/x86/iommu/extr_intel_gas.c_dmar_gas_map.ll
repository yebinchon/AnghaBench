; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64 }
%struct.bus_dma_tag_common = type { i32 }
%struct.dmar_map_entry = type { i64, i32, i64 }

@DMAR_GM_CANWAIT = common dso_local global i32 0, align 4
@DMAR_GM_CANSPLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid flags 0x%x\00", align 1
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unexpected error %d from dmar_gas_find_entry\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocated GPA %jx, max GPA %jx\00", align 1
@DMAR_MAP_ENTRY_READ = common dso_local global i32 0, align 4
@DMAR_PTE_R = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_WRITE = common dso_local global i32 0, align 4
@DMAR_PTE_W = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_SNOOP = common dso_local global i32 0, align 4
@DMAR_PTE_SNP = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_TM = common dso_local global i32 0, align 4
@DMAR_PTE_TM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"unexpected error %d from domain_map_buf\00", align 1
@dmar_check_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_gas_map(%struct.dmar_domain* %0, %struct.bus_dma_tag_common* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.dmar_map_entry** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dmar_domain*, align 8
  %11 = alloca %struct.bus_dma_tag_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.dmar_map_entry**, align 8
  %18 = alloca %struct.dmar_map_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %10, align 8
  store %struct.bus_dma_tag_common* %1, %struct.bus_dma_tag_common** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.dmar_map_entry** %7, %struct.dmar_map_entry*** %17, align 8
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %22 = load i32, i32* @DMAR_GM_CANSPLIT, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %27, i8* %30)
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  br label %40

39:                                               ; preds = %8
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = call %struct.dmar_map_entry* @dmar_gas_alloc_entry(%struct.dmar_domain* %32, i32 %41)
  store %struct.dmar_map_entry* %42, %struct.dmar_map_entry** %18, align 8
  %43 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %44 = icmp eq %struct.dmar_map_entry* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %9, align 4
  br label %179

47:                                               ; preds = %40
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %49 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %48)
  %50 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %51 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %56 = call i32 @dmar_gas_find_space(%struct.dmar_domain* %50, %struct.bus_dma_tag_common* %51, i32 %52, i32 %53, i32 %54, %struct.dmar_map_entry* %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %62 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %61)
  %63 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %64 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %65 = call i32 @dmar_gas_free_entry(%struct.dmar_domain* %63, %struct.dmar_map_entry* %64)
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %9, align 4
  br label %179

67:                                               ; preds = %47
  %68 = load i32, i32* %19, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @KASSERT(i32 %70, i8* %73)
  %75 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %76 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %79 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %84 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %88 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @KASSERT(i32 %82, i8* %92)
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %96 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %100 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %99)
  %101 = load %struct.dmar_domain*, %struct.dmar_domain** %10, align 8
  %102 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %103 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %106 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %109 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @DMAR_MAP_ENTRY_READ, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %67
  %118 = load i32, i32* @DMAR_PTE_R, align 4
  br label %120

119:                                              ; preds = %67
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @DMAR_MAP_ENTRY_WRITE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @DMAR_PTE_W, align 4
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = or i32 %121, %130
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @DMAR_MAP_ENTRY_SNOOP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @DMAR_PTE_SNP, align 4
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = or i32 %131, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @DMAR_MAP_ENTRY_TM, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @DMAR_PTE_TM, align 4
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = or i32 %141, %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  %161 = call i32 @domain_map_buf(%struct.dmar_domain* %101, i64 %104, i64 %111, i32* %112, i32 %151, i32 %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %167 = call i32 @dmar_domain_unload_entry(%struct.dmar_map_entry* %166, i32 1)
  %168 = load i32, i32* %19, align 4
  store i32 %168, i32* %9, align 4
  br label %179

169:                                              ; preds = %159
  %170 = load i32, i32* %19, align 4
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = call i32 @KASSERT(i32 %172, i8* %175)
  %177 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %18, align 8
  %178 = load %struct.dmar_map_entry**, %struct.dmar_map_entry*** %17, align 8
  store %struct.dmar_map_entry* %177, %struct.dmar_map_entry** %178, align 8
  store i32 0, i32* %9, align 4
  br label %179

179:                                              ; preds = %169, %165, %60, %45
  %180 = load i32, i32* %9, align 4
  ret i32 %180
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.dmar_map_entry* @dmar_gas_alloc_entry(%struct.dmar_domain*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_find_space(%struct.dmar_domain*, %struct.bus_dma_tag_common*, i32, i32, i32, %struct.dmar_map_entry*) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_free_entry(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

declare dso_local i32 @domain_map_buf(%struct.dmar_domain*, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @dmar_domain_unload_entry(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
