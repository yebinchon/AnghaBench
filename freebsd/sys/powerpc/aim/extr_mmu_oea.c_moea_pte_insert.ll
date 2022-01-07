; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.pte* }
%struct.pte = type { i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@moea_table_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@moea_pteg_table = common dso_local global %struct.TYPE_5__* null, align 8
@PTE_VALID = common dso_local global i32 0, align 4
@PTE_HID = common dso_local global i32 0, align 4
@moea_pteg_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"moea_pte_insert: overflow\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Victim PVO doesn't match PTE! PVO: %8x, PTE: %8x\00", align 1
@moea_pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pte*)* @moea_pte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea_pte_insert(i64 %0, %struct.pte* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pte*, align 8
  %6 = alloca %struct.pte*, align 8
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pte* %1, %struct.pte** %5, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @moea_table_mutex, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @moea_pteg_table, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.pte*, %struct.pte** %17, align 8
  store %struct.pte* %18, %struct.pte** %6, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.pte*, %struct.pte** %6, align 8
  %24 = getelementptr inbounds %struct.pte, %struct.pte* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PTE_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @PTE_HID, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.pte*, %struct.pte** %5, align 8
  %33 = getelementptr inbounds %struct.pte, %struct.pte* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.pte*, %struct.pte** %6, align 8
  %37 = load %struct.pte*, %struct.pte** %5, align 8
  %38 = call i32 @moea_pte_set(%struct.pte* %36, %struct.pte* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %167

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load %struct.pte*, %struct.pte** %6, align 8
  %45 = getelementptr inbounds %struct.pte, %struct.pte* %44, i32 1
  store %struct.pte* %45, %struct.pte** %6, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i64, i64* @moea_pteg_mask, align 8
  %48 = load i64, i64* %4, align 8
  %49 = xor i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @moea_pteg_table, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.pte*, %struct.pte** %53, align 8
  store %struct.pte* %54, %struct.pte** %6, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %76, %46
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load %struct.pte*, %struct.pte** %6, align 8
  %60 = getelementptr inbounds %struct.pte, %struct.pte* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PTE_VALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, i32* @PTE_HID, align 4
  %67 = load %struct.pte*, %struct.pte** %5, align 8
  %68 = getelementptr inbounds %struct.pte, %struct.pte* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.pte*, %struct.pte** %6, align 8
  %72 = load %struct.pte*, %struct.pte** %5, align 8
  %73 = call i32 @moea_pte_set(%struct.pte* %71, %struct.pte* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %167

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.pte*, %struct.pte** %6, align 8
  %80 = getelementptr inbounds %struct.pte, %struct.pte* %79, i32 1
  store %struct.pte* %80, %struct.pte** %6, align 8
  br label %55

81:                                               ; preds = %55
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call %struct.pvo_entry* @moea_pte_spillable_ident(i64 %83)
  store %struct.pvo_entry* %84, %struct.pvo_entry** %7, align 8
  %85 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %86 = icmp eq %struct.pvo_entry* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i64, i64* @moea_pteg_mask, align 8
  %89 = load i64, i64* %4, align 8
  %90 = xor i64 %89, %88
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call %struct.pvo_entry* @moea_pte_spillable_ident(i64 %91)
  store %struct.pvo_entry* %92, %struct.pvo_entry** %7, align 8
  br label %93

93:                                               ; preds = %87, %81
  %94 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %95 = icmp eq %struct.pvo_entry* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %167

98:                                               ; preds = %93
  %99 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @moea_pvo_pte_index(%struct.pvo_entry* %99, i64 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %4, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32, i32* @PTE_HID, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.pte*, %struct.pte** %5, align 8
  %109 = getelementptr inbounds %struct.pte, %struct.pte* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %118

112:                                              ; preds = %98
  %113 = load i32, i32* @PTE_HID, align 4
  %114 = load %struct.pte*, %struct.pte** %5, align 8
  %115 = getelementptr inbounds %struct.pte, %struct.pte* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @moea_pteg_table, align 8
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.pte*, %struct.pte** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, 7
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pte, %struct.pte* %125, i64 %128
  store %struct.pte* %129, %struct.pte** %6, align 8
  %130 = load %struct.pte*, %struct.pte** %6, align 8
  %131 = getelementptr inbounds %struct.pte, %struct.pte* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %134 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %132, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %118
  %140 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %141 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.pte*, %struct.pte** %6, align 8
  %146 = getelementptr inbounds %struct.pte, %struct.pte* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %139, %118
  %150 = load %struct.pte*, %struct.pte** %6, align 8
  %151 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %152 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %155 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @moea_pte_unset(%struct.pte* %150, %struct.TYPE_6__* %153, i32 %156)
  %158 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %159 = call i32 @PVO_PTEGIDX_CLR(%struct.pvo_entry* %158)
  %160 = load i32, i32* @moea_pte_overflow, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @moea_pte_overflow, align 4
  %162 = load %struct.pte*, %struct.pte** %6, align 8
  %163 = load %struct.pte*, %struct.pte** %5, align 8
  %164 = call i32 @moea_pte_set(%struct.pte* %162, %struct.pte* %163)
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 7
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %149, %96, %65, %29
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @moea_pte_set(%struct.pte*, %struct.pte*) #1

declare dso_local %struct.pvo_entry* @moea_pte_spillable_ident(i64) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @moea_pvo_pte_index(%struct.pvo_entry*, i64) #1

declare dso_local i32 @moea_pte_unset(%struct.pte*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @PVO_PTEGIDX_CLR(%struct.pvo_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
