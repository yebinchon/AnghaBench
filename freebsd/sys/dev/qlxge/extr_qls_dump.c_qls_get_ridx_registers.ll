; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_ridx_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_ridx_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_CTL_ROUTING_INDEX = common dso_local global i32 0, align 4
@Q81_CTL_ROUTING_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @qls_get_ridx_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qls_get_ridx_registers(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %70

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 8, i32* %7, align 4
  br label %19

18:                                               ; preds = %14
  store i32 16, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %17
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 67108864, %26
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @Q81_CTL_ROUTING_INDEX, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @WRITE_REG32(i32* %31, i32 %32, i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %39, %24
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1073741824
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @Q81_CTL_ROUTING_INDEX, align 4
  %42 = call i32 @READ_REG32(i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %35

43:                                               ; preds = %35
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @Q81_CTL_ROUTING_DATA, align 4
  %46 = call i32 @READ_REG32(i32* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %11

70:                                               ; preds = %11
  ret void
}

declare dso_local i32 @WRITE_REG32(i32*, i32, i32) #1

declare dso_local i32 @READ_REG32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
