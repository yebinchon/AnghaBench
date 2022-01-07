; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_meta_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.swblk = type { i64, i64* }

@OBJT_SWAP = common dso_local global i64 0, align 8
@SWAP_META_PAGES = common dso_local global i64 0, align 8
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@swblk_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64)* @swp_pager_meta_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_pager_meta_transfer(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.swblk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJT_SWAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %4
  br label %179

28:                                               ; preds = %24
  %29 = call i32 @swp_pager_init_freerange(i32* %11, i32* %10)
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %174, %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @SWAP_META_PAGES, align 8
  %41 = call i32 @rounddown(i64 %39, i64 %40)
  %42 = call %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32* %38, i32 %41)
  store %struct.swblk* %42, %struct.swblk** %9, align 8
  %43 = load %struct.swblk*, %struct.swblk** %9, align 8
  %44 = icmp eq %struct.swblk* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load %struct.swblk*, %struct.swblk** %9, align 8
  %47 = getelementptr inbounds %struct.swblk, %struct.swblk* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %34
  br label %175

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.swblk*, %struct.swblk** %9, align 8
  %55 = getelementptr inbounds %struct.swblk, %struct.swblk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.swblk*, %struct.swblk** %9, align 8
  %61 = getelementptr inbounds %struct.swblk, %struct.swblk* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i64 [ %63, %58 ], [ 0, %64 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.swblk*, %struct.swblk** %9, align 8
  %70 = getelementptr inbounds %struct.swblk, %struct.swblk* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load i64, i64* @SWAP_META_PAGES, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.swblk*, %struct.swblk** %9, align 8
  %78 = getelementptr inbounds %struct.swblk, %struct.swblk* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  br label %83

81:                                               ; preds = %65
  %82 = load i64, i64* @SWAP_META_PAGES, align 8
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i64 [ %80, %75 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %142, %83
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %145

91:                                               ; preds = %87
  %92 = load %struct.swblk*, %struct.swblk** %9, align 8
  %93 = getelementptr inbounds %struct.swblk, %struct.swblk* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SWAPBLK_NONE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %142

102:                                              ; preds = %91
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = icmp eq %struct.TYPE_11__* %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = load %struct.swblk*, %struct.swblk** %9, align 8
  %109 = getelementptr inbounds %struct.swblk, %struct.swblk* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i64, i64* %12, align 8
  %115 = sub nsw i64 %113, %114
  %116 = load %struct.swblk*, %struct.swblk** %9, align 8
  %117 = getelementptr inbounds %struct.swblk, %struct.swblk* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @swp_pager_xfer_source(%struct.TYPE_11__* %106, %struct.TYPE_11__* %107, i64 %115, i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %105, %102
  %126 = load %struct.swblk*, %struct.swblk** %9, align 8
  %127 = getelementptr inbounds %struct.swblk, %struct.swblk* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @swp_pager_update_freerange(i32* %11, i32* %10, i64 %132)
  br label %134

134:                                              ; preds = %125, %105
  %135 = load i64, i64* @SWAPBLK_NONE, align 8
  %136 = load %struct.swblk*, %struct.swblk** %9, align 8
  %137 = getelementptr inbounds %struct.swblk, %struct.swblk* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 %135, i64* %141, align 8
  br label %142

142:                                              ; preds = %134, %101
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %87

145:                                              ; preds = %87
  %146 = load %struct.swblk*, %struct.swblk** %9, align 8
  %147 = getelementptr inbounds %struct.swblk, %struct.swblk* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SWAP_META_PAGES, align 8
  %150 = add nsw i64 %148, %149
  store i64 %150, i64* %7, align 8
  %151 = load %struct.swblk*, %struct.swblk** %9, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = call i64 @swp_pager_swblk_empty(%struct.swblk* %151, i32 0, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %145
  %157 = load %struct.swblk*, %struct.swblk** %9, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load i64, i64* @SWAP_META_PAGES, align 8
  %160 = call i64 @swp_pager_swblk_empty(%struct.swblk* %157, i32 %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load %struct.swblk*, %struct.swblk** %9, align 8
  %168 = getelementptr inbounds %struct.swblk, %struct.swblk* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @SWAP_PCTRIE_REMOVE(i32* %166, i64 %169)
  %171 = load i32, i32* @swblk_zone, align 4
  %172 = load %struct.swblk*, %struct.swblk** %9, align 8
  %173 = call i32 @uma_zfree(i32 %171, %struct.swblk* %172)
  br label %174

174:                                              ; preds = %162, %156, %145
  br label %34

175:                                              ; preds = %51
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @swp_pager_freeswapspace(i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %27
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__*) #1

declare dso_local i32 @swp_pager_init_freerange(i32*, i32*) #1

declare dso_local %struct.swblk* @SWAP_PCTRIE_LOOKUP_GE(i32*, i32) #1

declare dso_local i32 @rounddown(i64, i64) #1

declare dso_local i32 @swp_pager_xfer_source(%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @swp_pager_update_freerange(i32*, i32*, i64) #1

declare dso_local i64 @swp_pager_swblk_empty(%struct.swblk*, i32, i64) #1

declare dso_local i32 @SWAP_PCTRIE_REMOVE(i32*, i64) #1

declare dso_local i32 @uma_zfree(i32, %struct.swblk*) #1

declare dso_local i32 @swp_pager_freeswapspace(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
