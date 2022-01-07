; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_calc_crc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_calc_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @calc_crc32(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %16, align 8
  store i64 517762881, i64* %17, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = srem i64 %29, 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25, %4
  %33 = load i64, i64* %16, align 8
  store i64 %33, i64* %5, align 8
  br label %120

34:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %64, %39
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %45, 8
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i64, i64* %16, align 8
  %49 = ashr i64 %48, 31
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %16, align 8
  %51 = shl i64 %50, 1
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %11, align 8
  %55 = ashr i64 %53, %54
  %56 = and i64 1, %55
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load i64, i64* %16, align 8
  %60 = xor i64 %59, 517762881
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = or i64 %61, 1
  store i64 %62, i64* %16, align 8
  br label %63

63:                                               ; preds = %58, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %44

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %35

71:                                               ; preds = %35
  %72 = load i64, i64* %16, align 8
  store i64 %72, i64* %13, align 8
  store i64 63, i64* %14, align 8
  %73 = load i64, i64* %16, align 8
  %74 = ashr i64 %73, 1
  store i64 %74, i64* %16, align 8
  br label %75

75:                                               ; preds = %87, %71
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i64, i64* %13, align 8
  %80 = shl i64 %79, 1
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %16, align 8
  %82 = and i64 %81, 1
  %83 = load i64, i64* %13, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %16, align 8
  %89 = ashr i64 %88, 1
  store i64 %89, i64* %16, align 8
  br label %75

90:                                               ; preds = %75
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %13, align 8
  %93 = shl i64 %92, %91
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = ashr i64 %94, 24
  %96 = and i64 255, %95
  store i64 %96, i64* %18, align 8
  %97 = load i64, i64* %13, align 8
  %98 = ashr i64 %97, 8
  %99 = and i64 65280, %98
  store i64 %99, i64* %19, align 8
  %100 = load i64, i64* %13, align 8
  %101 = shl i64 %100, 8
  %102 = and i64 16711680, %101
  store i64 %102, i64* %20, align 8
  %103 = load i64, i64* %13, align 8
  %104 = shl i64 %103, 24
  %105 = and i64 4278190080, %104
  store i64 %105, i64* %21, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = or i64 %106, %107
  %109 = load i64, i64* %20, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* %21, align 8
  %112 = or i64 %110, %111
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %90
  %116 = load i64, i64* %16, align 8
  %117 = xor i64 %116, -1
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %115, %90
  %119 = load i64, i64* %16, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %118, %32
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
