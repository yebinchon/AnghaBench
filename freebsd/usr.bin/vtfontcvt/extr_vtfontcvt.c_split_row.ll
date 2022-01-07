; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_split_row.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_split_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wbytes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64)* @split_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_row(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @wbytes, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load i32, i32* @width, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @wbytes, align 4
  %20 = call i32 @memcpy(i32* %17, i32* %18, i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 255, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @wbytes, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = getelementptr inbounds i32, i32* %27, i64 -1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @width, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* @wbytes, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @wbytes, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 8, %50
  %52 = load i32, i32* %11, align 4
  %53 = trunc i64 %51 to i32
  %54 = shl i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @wbytes, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = ashr i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %36

74:                                               ; preds = %36
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 255, %76
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @wbytes, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 -1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %77
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74, %4
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
