; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ctg_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ctg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GMD0_SDI = common dso_local global i8 0, align 1
@GMD0_SCLK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i8)* @ctg_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctg_output(i32 %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %72, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %75

12:                                               ; preds = %9
  %13 = load i8, i8* %6, align 1
  store i8 %13, i8* %8, align 1
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i8, i8* @GMD0_SDI, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  br label %27

27:                                               ; preds = %20, %12
  %28 = load i32, i32* %4, align 4
  %29 = load i8, i8* %8, align 1
  %30 = call i32 @outb(i32 %28, i8 zeroext %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i8, i8* %8, align 1
  %33 = call i32 @outb(i32 %31, i8 zeroext %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i8, i8* %8, align 1
  %36 = call i32 @outb(i32 %34, i8 zeroext %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i8, i8* %8, align 1
  %39 = call i32 @outb(i32 %37, i8 zeroext %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @GMD0_SCLK, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i8
  %47 = call i32 @outb(i32 %40, i8 zeroext %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @GMD0_SCLK, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = trunc i32 %53 to i8
  %55 = call i32 @outb(i32 %48, i8 zeroext %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @GMD0_SCLK, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %58, %60
  %62 = trunc i32 %61 to i8
  %63 = call i32 @outb(i32 %56, i8 zeroext %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @GMD0_SCLK, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i8
  %71 = call i32 @outb(i32 %64, i8 zeroext %70)
  br label %72

72:                                               ; preds = %27
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %9

75:                                               ; preds = %9
  %76 = load i32, i32* %4, align 4
  %77 = load i8, i8* %6, align 1
  %78 = call i32 @outb(i32 %76, i8 zeroext %77)
  ret void
}

declare dso_local i32 @outb(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
