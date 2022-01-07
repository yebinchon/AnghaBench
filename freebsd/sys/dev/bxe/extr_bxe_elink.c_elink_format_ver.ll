; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_format_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_format_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @elink_format_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_format_ver(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  store i32 -268435456, i32* %9, align 4
  store i32 32, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %73, %40, %23
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %9, align 4
  br label %24

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 48
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 10
  %53 = add nsw i32 %52, 97
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load i32*, i32** %8, align 8
  store i32 46, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %66, %56
  br label %24

74:                                               ; preds = %24
  %75 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
