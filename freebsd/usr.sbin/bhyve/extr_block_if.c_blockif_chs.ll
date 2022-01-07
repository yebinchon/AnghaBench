; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_block_if.c_blockif_chs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_block_if.c_blockif_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_ctxt = type { i64, i64, i64 }

@BLOCKIF_SIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockif_chs(%struct.blockif_ctxt* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.blockif_ctxt*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.blockif_ctxt* %0, %struct.blockif_ctxt** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %14 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BLOCKIF_SIG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %21 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %24 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = udiv i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %27, 267382800
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i64 267382800, i64* %9, align 8
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i64, i64* %9, align 8
  %32 = icmp uge i64 %31, 66060288
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  store i64 255, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %10, align 8
  br label %72

37:                                               ; preds = %30
  store i64 17, i64* %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = udiv i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1023
  %43 = udiv i64 %42, 1024
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 4, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %50, 1024
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 16
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %48
  store i64 31, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = udiv i64 %58, %59
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %63, 1024
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  store i64 63, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = udiv i64 %68, %69
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %73, %75
  %77 = load i64*, i64** %6, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
