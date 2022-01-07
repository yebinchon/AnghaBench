; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_leaf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_leaf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SWAPBLK_NONE = common dso_local global i32 0, align 4
@BLIST_BMAP_MASK = common dso_local global i32 0, align 4
@BLIST_MAX_ALLOC = common dso_local global i32 0, align 4
@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*, i32)* @blst_leaf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blst_leaf_alloc(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @fls(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %35, %4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @flip_hibits(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %15, align 4
  %32 = icmp sgt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %15, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %41, 1
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %17, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %26

52:                                               ; preds = %33
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %59, i32* %5, align 4
  br label %185

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @BLIST_BMAP_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @BLIST_BMAP_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @bitrange(i32 0, i32 %69)
  %71 = and i32 %66, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %81, i32* %5, align 4
  br label %185

82:                                               ; preds = %74
  %83 = load i32, i32* @BLIST_MAX_ALLOC, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %82, %65
  %86 = load i32, i32* @BLIST_BMAP_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %60
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @bitpos(i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @flip_hibits(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @flip_hibits(i32 %97)
  %99 = call i32 @bitpos(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %107, %96
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bitrange(i32 %116, i32 %118)
  store i32 %119, i32* %11, align 4
  br label %167

120:                                              ; preds = %90
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @bitrange(i32 %132, i32 %134)
  store i32 %135, i32* %11, align 4
  br label %166

136:                                              ; preds = %120
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sub nsw i32 %138, %141
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @blst_next_leaf_alloc(%struct.TYPE_4__* %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %136
  %157 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %157, i32* %5, align 4
  br label %185

158:                                              ; preds = %136
  %159 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32*, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %158, %126
  br label %167

167:                                              ; preds = %166, %111
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %11, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %175, %156, %80, %55
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @flip_hibits(i32) #1

declare dso_local i32 @bitrange(i32, i32) #1

declare dso_local i32 @bitpos(i32) #1

declare dso_local i32 @blst_next_leaf_alloc(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
