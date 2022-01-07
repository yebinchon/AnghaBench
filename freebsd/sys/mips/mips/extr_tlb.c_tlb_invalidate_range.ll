; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"tlb_invalidate_range: invalid range\00", align 1
@TLBMASK_SHIFT = common dso_local global i32 0, align 4
@TLBHI_ASID_MASK = common dso_local global i32 0, align 4
@num_tlbentries = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_invalidate_range(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i1 [ true, %3 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @TLBMASK_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @TLBMASK_SHIFT, align 4
  %39 = shl i32 1, %38
  %40 = call i64 @roundup2(i64 %37, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = call i32 (...) @intr_disable()
  store i32 %41, i32* %11, align 4
  %42 = call i32 (...) @mips_rd_entryhi()
  %43 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pmap_asid(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @TLBHI_ENTRY(i64 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @TLBHI_ENTRY(i64 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* @num_tlbentries, align 8
  %57 = load i32, i32* @TLBMASK_SHIFT, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 %56, %58
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %26
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @num_tlbentries, align 8
  %67 = load i32, i32* @TLBMASK_SHIFT, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 %66, %68
  %70 = sub nsw i64 0, %69
  %71 = icmp sge i64 %65, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %64, %26
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %90, %72
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = call i32 @mips_wr_pagemask(i32 0)
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mips_wr_entryhi(i32 %80)
  %82 = call i32 (...) @tlb_probe()
  %83 = call i32 (...) @mips_rd_index()
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @tlb_invalidate_one(i32 %87)
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @TLBMASK_SHIFT, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %74

95:                                               ; preds = %74
  br label %139

96:                                               ; preds = %64, %61
  %97 = call i32 (...) @mips_rd_wired()
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %135, %96
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @num_tlbentries, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %98
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @mips_wr_index(i32 %104)
  %106 = call i32 (...) @tlb_read()
  %107 = call i32 (...) @mips_rd_entryhi()
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %6, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117, %113
  %121 = call i32 (...) @mips_rd_pagemask()
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @TLBMASK_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = and i32 %123, %127
  %129 = icmp sge i32 %122, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @tlb_invalidate_one(i32 %131)
  br label %133

133:                                              ; preds = %130, %120
  br label %134

134:                                              ; preds = %133, %117, %103
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %98

138:                                              ; preds = %98
  br label %139

139:                                              ; preds = %138, %95
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @mips_wr_entryhi(i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @intr_restore(i32 %142)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @mips_rd_entryhi(...) #1

declare dso_local i32 @pmap_asid(i32) #1

declare dso_local i32 @TLBHI_ENTRY(i64, i32) #1

declare dso_local i32 @mips_wr_pagemask(i32) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @mips_rd_index(...) #1

declare dso_local i32 @tlb_invalidate_one(i32) #1

declare dso_local i32 @mips_rd_wired(...) #1

declare dso_local i32 @mips_wr_index(i32) #1

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @mips_rd_pagemask(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
