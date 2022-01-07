; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_meta_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@BLIST_MAX_ALLOC = common dso_local global i32 0, align 4
@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@BLIST_META_RADIX = common dso_local global i32 0, align 4
@BLIST_META_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32)* @blst_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blst_meta_free(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @BLIST_MAX_ALLOC, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  call void @blst_leaf_free(%struct.TYPE_4__* %22, i32 %23, i32 %24)
  br label %95

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 0, %32
  %34 = and i32 %31, %33
  %35 = call i32 @ummin(i32 %28, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @BLIST_META_RADIX, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @radix_to_skip(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 0, %42
  %44 = and i32 %41, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* @BLIST_META_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* @BLIST_META_MASK, align 4
  %55 = and i32 %53, %54
  %56 = add nsw i32 1, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @bitrange(i32 %57, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 1, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %91, %25
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ummin(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  call void @blst_meta_free(%struct.TYPE_4__* %86, i32 %87, i32 %88, i32 %89)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %70

95:                                               ; preds = %21, %70
  ret void
}

declare dso_local void @blst_leaf_free(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ummin(i32, i32) #1

declare dso_local i32 @radix_to_skip(i32) #1

declare dso_local i32 @bitrange(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
