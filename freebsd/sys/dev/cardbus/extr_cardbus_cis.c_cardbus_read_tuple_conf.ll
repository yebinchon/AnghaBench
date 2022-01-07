; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32*, i32*)* @cardbus_read_tuple_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_read_tuple_conf(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %18, align 4
  %25 = and i32 %24, -4
  %26 = call i32 @pci_read_config(i32 %23, i32 %25, i32 4)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %18, align 4
  %28 = and i32 %27, 3
  %29 = mul nsw i32 8, %28
  %30 = load i32, i32* %17, align 4
  %31 = ashr i32 %30, %29
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %15, align 4
  store i32 -2, i32* %16, align 4
  br label %34

34:                                               ; preds = %72, %7
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @pci_read_config(i32 %44, i32 %45, i32 4)
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %48, -2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %17, align 4
  %52 = and i32 255, %51
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %69

54:                                               ; preds = %47
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = and i32 255, %58
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  br label %68

61:                                               ; preds = %54
  %62 = load i32, i32* %17, align 4
  %63 = and i32 255, %62
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %57
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %70, 8
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %34

77:                                               ; preds = %34
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 2
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  ret i32 0
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
