; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_meta_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_meta_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@BLIST_META_RADIX = common dso_local global i32 0, align 4
@BLIST_META_MASK = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i32 0, align 4
@BLIST_MAX_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*, i32, i32)* @blst_meta_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blst_meta_alloc(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @blst_leaf_alloc(%struct.TYPE_4__* %23, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %157

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 0, %30
  %32 = and i32 %29, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* @BLIST_META_RADIX, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @radix_to_skip(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* @BLIST_META_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = shl i32 -1, %50
  %52 = load i32, i32* %16, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %28
  %57 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %57, i32* %6, align 4
  br label %157

58:                                               ; preds = %28
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %18, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %126, %72
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @bitpos(i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %15, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 1, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %81, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %73
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @blst_meta_alloc(%struct.TYPE_4__* %93, i32 %98, i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @SWAPBLK_NONE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %89
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @bitrange(i32 %115, i32 1)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %106
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %6, align 4
  br label %157

123:                                              ; preds = %89
  br label %124

124:                                              ; preds = %123, %73
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @bitrange(i32 %127, i32 1)
  %129 = load i32, i32* %16, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %73, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @BLIST_META_RADIX, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @BLIST_MAX_ALLOC, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %140, %135
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %140, %132
  %156 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %155, %121, %56, %22
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @blst_leaf_alloc(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @radix_to_skip(i32) #1

declare dso_local i32 @bitpos(i32) #1

declare dso_local i32 @bitrange(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
