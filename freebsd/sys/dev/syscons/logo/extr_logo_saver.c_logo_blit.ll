; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/logo/extr_logo_saver.c_logo_blit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/logo/extr_logo_saver.c_logo_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bpsl = common dso_local global i32 0, align 4
@banksize = common dso_local global i32 0, align 4
@logo_img_size = common dso_local global i32 0, align 4
@logo_w = common dso_local global i32 0, align 4
@logo_img = common dso_local global i64 0, align 8
@vid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @logo_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logo_blit(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @bpsl, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %25, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @banksize, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @banksize, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @banksize, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @SET_ORIGIN(i32* %30, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %121, %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @logo_img_size, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %125

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @logo_w, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* @banksize, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i64, i64* @logo_img, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i64, i64* @vid, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* @logo_w, align 4
  %53 = call i32 @bcopy(i64 %47, i64 %51, i32 %52)
  %54 = load i32, i32* @bpsl, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %120

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @banksize, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = load i32, i32* @banksize, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* @logo_img, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* @vid, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @bcopy(i64 %68, i64 %72, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @banksize, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = call i32 @SET_ORIGIN(i32* %75, i32 %78)
  %80 = load i64, i64* @logo_img, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i64, i64* @vid, align 8
  %88 = load i32, i32* @logo_w, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @bcopy(i64 %86, i64 %87, i32 %90)
  %92 = load i32, i32* @bpsl, align 4
  %93 = load i32, i32* @banksize, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %119

97:                                               ; preds = %57
  %98 = load i32, i32* @banksize, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @banksize, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = call i32 @SET_ORIGIN(i32* %101, i32 %104)
  %106 = load i64, i64* @logo_img, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* @vid, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i32, i32* @logo_w, align 4
  %115 = call i32 @bcopy(i64 %109, i64 %113, i32 %114)
  %116 = load i32, i32* @bpsl, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %97, %61
  br label %120

120:                                              ; preds = %119, %43
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* @logo_w, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %33

125:                                              ; preds = %33
  ret void
}

declare dso_local i32 @SET_ORIGIN(i32*, i32) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
