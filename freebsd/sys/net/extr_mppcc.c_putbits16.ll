; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mppcc.c_putbits16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mppcc.c_putbits16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*)* @putbits16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putbits16(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 8
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 8, %25
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %26, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = or i32 %36, %39
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 255
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %21
  %50 = load i32*, i32** %10, align 8
  store i32 8, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %21
  br label %90

57:                                               ; preds = %5
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 16, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %65, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = or i32 %75, %78
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %6, align 8
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %57, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
