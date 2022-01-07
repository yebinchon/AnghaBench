; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_get_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PNP_ADDRESS = common dso_local global i32 0, align 4
@PNP_SERIAL_ISOLATION = common dso_local global i32 0, align 4
@pnp_rd_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pnp_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_get_serial(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 106, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @bzero(i32* %9, i32 9)
  %11 = load i32, i32* @_PNP_ADDRESS, align 4
  %12 = load i32, i32* @PNP_SERIAL_ISOLATION, align 4
  %13 = call i32 @outb(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %77, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 72
  br i1 %16, label %17, label %80

17:                                               ; preds = %14
  %18 = load i32, i32* @pnp_rd_port, align 4
  %19 = shl i32 %18, 2
  %20 = or i32 %19, 3
  %21 = call i32 @inb(i32 %20)
  %22 = icmp eq i32 %21, 85
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = call i32 @DELAY(i32 250)
  %25 = load i32, i32* @pnp_rd_port, align 4
  %26 = shl i32 %25, 2
  %27 = or i32 %26, 3
  %28 = call i32 @inb(i32 %27)
  %29 = icmp eq i32 %28, 170
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi i1 [ false, %17 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = call i32 @DELAY(i32 250)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ true, %33 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 1
  %53 = xor i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = xor i32 %53, %54
  %56 = shl i32 %55, 7
  %57 = and i32 %56, 255
  %58 = or i32 %49, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %47, %42
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sdiv i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 128, i32 0
  %71 = or i32 %66, %70
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sdiv i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %14

80:                                               ; preds = %14
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i1 [ false, %80 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
