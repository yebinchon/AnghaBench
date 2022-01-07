; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_MAX_MODULES = common dso_local global i64 0, align 8
@Q81_MAX_MUX = common dso_local global i64 0, align 8
@Q81_ADDRESS_REGISTER_ENABLE = common dso_local global i64 0, align 8
@Q81_CTL_XG_PROBE_MUX_ADDR = common dso_local global i32 0, align 4
@Q81_CTL_XG_PROBE_MUX_DATA = common dso_local global i32 0, align 4
@Q81_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i64, i64*, i64*)* @qls_get_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @qls_get_probe(i32* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %76, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @Q81_MAX_MODULES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @Q81_MAX_MUX, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @Q81_ADDRESS_REGISTER_ENABLE, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* %10, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* %9, align 8
  %36 = shl i64 %35, 9
  %37 = or i64 %34, %36
  store i64 %37, i64* %11, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @Q81_CTL_XG_PROBE_MUX_ADDR, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @WRITE_REG32(i32* %38, i32 %39, i64 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @Q81_CTL_XG_PROBE_MUX_DATA, align 4
  %44 = call i64 @READ_REG32(i32* %42, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %8, align 8
  br label %52

52:                                               ; preds = %47, %29
  %53 = load i64, i64* @Q81_UP, align 8
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @Q81_CTL_XG_PROBE_MUX_ADDR, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @WRITE_REG32(i32* %56, i32 %57, i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @Q81_CTL_XG_PROBE_MUX_DATA, align 4
  %62 = call i64 @READ_REG32(i32* %60, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %8, align 8
  br label %71

71:                                               ; preds = %52
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %25

74:                                               ; preds = %25
  br label %75

75:                                               ; preds = %74, %18
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %14

79:                                               ; preds = %14
  %80 = load i64*, i64** %8, align 8
  ret i64* %80
}

declare dso_local i32 @WRITE_REG32(i32*, i32, i64) #1

declare dso_local i64 @READ_REG32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
