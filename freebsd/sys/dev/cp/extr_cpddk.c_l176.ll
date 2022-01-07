; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l176.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i8)* @l176 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l176(i32* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i32*, i32** %4, align 8
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @l(i32* %8, i32 40, i8 zeroext %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %16, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %118

15:                                               ; preds = %11
  br label %19

16:                                               ; preds = %117
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %11

19:                                               ; preds = %15
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %80

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = call i32 @l(i32* %28, i32 40, i8 zeroext %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 @l(i32* %34, i32 40, i8 zeroext %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @l(i32* %40, i32 40, i8 zeroext %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, 4
  %50 = trunc i32 %49 to i8
  %51 = call i32 @l(i32* %46, i32 40, i8 zeroext %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 4
  %56 = or i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = call i32 @l(i32* %52, i32 40, i8 zeroext %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 4
  %63 = or i32 %62, 8
  %64 = trunc i32 %63 to i8
  %65 = call i32 @l(i32* %59, i32 40, i8 zeroext %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, 4
  %70 = or i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = call i32 @l(i32* %66, i32 40, i8 zeroext %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i8, i8* %6, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 4
  %77 = or i32 %76, 8
  %78 = trunc i32 %77 to i8
  %79 = call i32 @l(i32* %73, i32 40, i8 zeroext %78)
  br label %117

80:                                               ; preds = %26
  %81 = load i32*, i32** %4, align 8
  %82 = load i8, i8* %6, align 1
  %83 = call i32 @l(i32* %81, i32 40, i8 zeroext %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load i8, i8* %6, align 1
  %86 = call i32 @l(i32* %84, i32 40, i8 zeroext %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i8, i8* %6, align 1
  %89 = call i32 @l(i32* %87, i32 40, i8 zeroext %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i8, i8* %6, align 1
  %92 = call i32 @l(i32* %90, i32 40, i8 zeroext %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i8, i8* %6, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, 8
  %97 = trunc i32 %96 to i8
  %98 = call i32 @l(i32* %93, i32 40, i8 zeroext %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, 8
  %103 = trunc i32 %102 to i8
  %104 = call i32 @l(i32* %99, i32 40, i8 zeroext %103)
  %105 = load i32*, i32** %4, align 8
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, 8
  %109 = trunc i32 %108 to i8
  %110 = call i32 @l(i32* %105, i32 40, i8 zeroext %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load i8, i8* %6, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, 8
  %115 = trunc i32 %114 to i8
  %116 = call i32 @l(i32* %111, i32 40, i8 zeroext %115)
  br label %117

117:                                              ; preds = %80, %27
  br label %16

118:                                              ; preds = %14
  %119 = load i32*, i32** %4, align 8
  %120 = load i8, i8* %6, align 1
  %121 = call i32 @l(i32* %119, i32 40, i8 zeroext %120)
  ret void
}

declare dso_local i32 @l(i32*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
