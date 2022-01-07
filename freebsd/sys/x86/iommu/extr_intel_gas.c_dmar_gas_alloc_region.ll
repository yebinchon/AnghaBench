; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_alloc_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_alloc_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32 }
%struct.dmar_map_entry = type { i32, i32, i32 }

@DMAR_PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dmar_gas_entries_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"next must be non-null %p %jx\00", align 1
@DMAR_MAP_ENTRY_PLACE = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_RMRR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"found RMRR dup %p start %jx end %jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.dmar_map_entry*, i32)* @dmar_gas_alloc_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_alloc_region(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.dmar_map_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmar_map_entry*, align 8
  %9 = alloca %struct.dmar_map_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %12 = call i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain* %11)
  %13 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %14 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DMAR_PAGE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %21 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMAR_PAGE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %185

28:                                               ; preds = %19
  %29 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %30 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %33 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %185

38:                                               ; preds = %28
  %39 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %40 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %43 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %185

48:                                               ; preds = %38
  %49 = load i32, i32* @dmar_gas_entries_tree, align 4
  %50 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %51 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %50, i32 0, i32 1
  %52 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %53 = call %struct.dmar_map_entry* @RB_NFIND(i32 %49, i32* %51, %struct.dmar_map_entry* %52)
  store %struct.dmar_map_entry* %53, %struct.dmar_map_entry** %8, align 8
  %54 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %55 = icmp ne %struct.dmar_map_entry* %54, null
  %56 = zext i1 %55 to i32
  %57 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %58 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %59 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @KASSERT(i32 %56, i8* %62)
  %64 = load i32, i32* @dmar_gas_entries_tree, align 4
  %65 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %66 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %65, i32 0, i32 1
  %67 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %68 = call %struct.dmar_map_entry* @RB_PREV(i32 %64, i32* %66, %struct.dmar_map_entry* %67)
  store %struct.dmar_map_entry* %68, %struct.dmar_map_entry** %9, align 8
  %69 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %70 = icmp ne %struct.dmar_map_entry* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %48
  %72 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %73 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %76 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %81 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DMAR_MAP_ENTRY_PLACE, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %88 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @EBUSY, align 4
  store i32 %94, i32* %4, align 4
  br label %185

95:                                               ; preds = %86
  %96 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %97 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %100 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %79, %71, %48
  %102 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %103 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %106 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %101
  %110 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %111 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DMAR_MAP_ENTRY_PLACE, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %118 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @EBUSY, align 4
  store i32 %124, i32* %4, align 4
  br label %185

125:                                              ; preds = %116
  %126 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %127 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %130 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %109, %101
  %132 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %133 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %136 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %185

140:                                              ; preds = %131
  %141 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %142 = icmp ne %struct.dmar_map_entry* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %145 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %148 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %153 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %154 = call i32 @dmar_gas_rb_remove(%struct.dmar_domain* %152, %struct.dmar_map_entry* %153)
  store %struct.dmar_map_entry* null, %struct.dmar_map_entry** %9, align 8
  br label %155

155:                                              ; preds = %151, %143, %140
  %156 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %157 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %160 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %165 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %166 = call i32 @dmar_gas_rb_remove(%struct.dmar_domain* %164, %struct.dmar_map_entry* %165)
  store %struct.dmar_map_entry* null, %struct.dmar_map_entry** %8, align 8
  br label %167

167:                                              ; preds = %163, %155
  %168 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %169 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %170 = call i32 @dmar_gas_rb_insert(%struct.dmar_domain* %168, %struct.dmar_map_entry* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %173 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %174 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %177 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 @KASSERT(i32 %171, i8* %180)
  %182 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %183 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %184 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %167, %139, %123, %93, %46, %36, %26
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain*) #1

declare dso_local %struct.dmar_map_entry* @RB_NFIND(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.dmar_map_entry* @RB_PREV(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_rb_remove(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_rb_insert(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
