; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pvo_to_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_pvo_to_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.pte* }
%struct.pte = type { i32, i32 }
%struct.pvo_entry = type { %struct.TYPE_7__, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@moea_pteg_table = common dso_local global %struct.TYPE_8__* null, align 8
@moea_table_mutex = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"moea_pvo_to_pte: pvo %p has valid pte in pvo but no valid pte index\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"moea_pvo_to_pte: pvo %p has valid pte index in pvo pvo but no valid pte\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"moea_pvo_to_pte: pvo %p has valid pte in moea_pteg_table %p but invalid in pvo\00", align 1
@PTE_CHG = common dso_local global i32 0, align 4
@PTE_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"moea_pvo_to_pte: pvo %p pte does not match pte %p in moea_pteg_table\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [89 x i8] c"moea_pvo_to_pte: pvo %p has invalid pte %p in moea_pteg_table but valid in pvo: %8x, %8x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pte* (%struct.pvo_entry*, i32)* @moea_pvo_to_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pte* @moea_pvo_to_pte(%struct.pvo_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.pte*, align 8
  %4 = alloca %struct.pvo_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pte*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvo_entry* %0, %struct.pvo_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %13 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %18 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @va_to_sr(i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %23 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @va_to_pteg(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @moea_pvo_pte_index(%struct.pvo_entry* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %11, %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @moea_pteg_table, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.pte*, %struct.pte** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pte, %struct.pte* %36, i64 %39
  store %struct.pte* %40, %struct.pte** %6, align 8
  %41 = call i32 @mtx_lock(i32* @moea_table_mutex)
  %42 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %43 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PTE_VALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %29
  %51 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %52 = call i64 @PVO_PTEGIDX_ISSET(%struct.pvo_entry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %56 = call i32 (i8*, %struct.pvo_entry*, ...) @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.pvo_entry* %55)
  br label %57

57:                                               ; preds = %54, %50, %29
  %58 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %59 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PTE_VALID, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %68 = call i64 @PVO_PTEGIDX_ISSET(%struct.pvo_entry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %72 = call i32 (i8*, %struct.pvo_entry*, ...) @panic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), %struct.pvo_entry* %71)
  br label %73

73:                                               ; preds = %70, %66, %57
  %74 = load %struct.pte*, %struct.pte** %6, align 8
  %75 = getelementptr inbounds %struct.pte, %struct.pte* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %78 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PTE_VALID, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = xor i32 %76, %84
  %86 = load i32, i32* @PTE_VALID, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %73
  %89 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %90 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PTE_VALID, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %99 = load %struct.pte*, %struct.pte** %6, align 8
  %100 = call i32 (i8*, %struct.pvo_entry*, ...) @panic(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), %struct.pvo_entry* %98, %struct.pte* %99)
  br label %101

101:                                              ; preds = %97, %88
  %102 = load %struct.pte*, %struct.pte** %6, align 8
  %103 = getelementptr inbounds %struct.pte, %struct.pte* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %106 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %104, %109
  %111 = load i32, i32* @PTE_CHG, align 4
  %112 = load i32, i32* @PTE_REF, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = and i32 %110, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %119 = load %struct.pte*, %struct.pte** %6, align 8
  %120 = call i32 (i8*, %struct.pvo_entry*, ...) @panic(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), %struct.pvo_entry* %118, %struct.pte* %119)
  br label %121

121:                                              ; preds = %117, %101
  %122 = load i32, i32* @MA_OWNED, align 4
  %123 = call i32 @mtx_assert(i32* @moea_table_mutex, i32 %122)
  %124 = load %struct.pte*, %struct.pte** %6, align 8
  store %struct.pte* %124, %struct.pte** %3, align 8
  br label %148

125:                                              ; preds = %73
  %126 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %127 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PTE_VALID, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %125
  %135 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %136 = load %struct.pte*, %struct.pte** %6, align 8
  %137 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %138 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.pte*, %struct.pte** %6, align 8
  %143 = getelementptr inbounds %struct.pte, %struct.pte* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, %struct.pvo_entry*, ...) @panic(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), %struct.pvo_entry* %135, %struct.pte* %136, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %134, %125
  %147 = call i32 @mtx_unlock(i32* @moea_table_mutex)
  store %struct.pte* null, %struct.pte** %3, align 8
  br label %148

148:                                              ; preds = %146, %121
  %149 = load %struct.pte*, %struct.pte** %3, align 8
  ret %struct.pte* %149
}

declare dso_local i32 @va_to_sr(i32, i32) #1

declare dso_local i32 @va_to_pteg(i32, i32) #1

declare dso_local i32 @moea_pvo_pte_index(%struct.pvo_entry*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @PVO_PTEGIDX_ISSET(%struct.pvo_entry*) #1

declare dso_local i32 @panic(i8*, %struct.pvo_entry*, ...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
