; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blst_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BLIST_BMAP_RADIX = common dso_local global i64 0, align 8
@BLIST_META_RADIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i32, i64)* @blst_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blst_copy(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @BLIST_BMAP_RADIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @blist_free(i32 %26, i64 %27, i32 %29)
  br label %59

31:                                               ; preds = %19
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @blist_free(i32 %47, i64 %51, i32 1)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %35

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %25
  br label %107

60:                                               ; preds = %5
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %107

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %67, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* @BLIST_META_RADIX, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sdiv i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @radix_to_skip(i64 %73)
  store i64 %74, i64* %13, align 8
  store i64 1, i64* %12, align 8
  br label %75

75:                                               ; preds = %103, %66
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %11, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* %10, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %10, align 8
  call void @blst_copy(%struct.TYPE_3__* %96, i64 %99, i64 %100, i32 %101, i64 %102)
  br label %103

103:                                              ; preds = %93
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %12, align 8
  br label %75

107:                                              ; preds = %59, %65, %75
  ret void
}

declare dso_local i32 @blist_free(i32, i64, i32) #1

declare dso_local i64 @radix_to_skip(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
