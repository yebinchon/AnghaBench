; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/warp/extr_warp_saver.c_warp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/warp/extr_warp_saver.c_warp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPP = common dso_local global i32 0, align 4
@star = common dso_local global i32* null, align 8
@scrw = common dso_local global i32 0, align 4
@bpsl = common dso_local global i32 0, align 4
@banksize = common dso_local global i32 0, align 4
@vid = common dso_local global i32* null, align 8
@scrh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @warp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warp_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @SPP, align 4
  %11 = mul nsw i32 %10, 8
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %127, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %132

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %121, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %16
  %21 = load i32*, i32** @star, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @scrw, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @bpsl, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32*, i32** @star, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @scrw, align 4
  %36 = srem i32 %34, %35
  %37 = add nsw i32 %29, %36
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %42, %20
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @banksize, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @banksize, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @banksize, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %38

49:                                               ; preds = %38
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @SET_ORIGIN(i32* %50, i32 %51)
  %53 = load i32*, i32** @vid, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** @star, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %57
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** @star, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @scrw, align 4
  %70 = load i32, i32* @scrh, align 4
  %71 = mul nsw i32 %69, %70
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %49
  %74 = load i32, i32* @scrw, align 4
  %75 = load i32, i32* @scrh, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32*, i32** @star, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %73, %49
  %84 = load i32*, i32** @star, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @scrw, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32, i32* @bpsl, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32*, i32** @star, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @scrw, align 4
  %99 = srem i32 %97, %98
  %100 = add nsw i32 %92, %99
  store i32 %100, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %105, %83
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @banksize, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* @banksize, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @banksize, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %101

112:                                              ; preds = %101
  %113 = load i32*, i32** %2, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @SET_ORIGIN(i32* %113, i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = load i32*, i32** @vid, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %16

126:                                              ; preds = %16
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sdiv i32 %130, 2
  store i32 %131, i32* %6, align 4
  br label %12

132:                                              ; preds = %12
  ret void
}

declare dso_local i32 @SET_ORIGIN(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
