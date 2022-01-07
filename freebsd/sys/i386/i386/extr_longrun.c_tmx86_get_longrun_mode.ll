; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_get_longrun_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_get_longrun_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msrinfo = type { i32* }

@MSR_TMx86_LONGRUN = common dso_local global i32 0, align 4
@MSR_TMx86_LONGRUN_FLAGS = common dso_local global i32 0, align 4
@LONGRUN_MODE_MAX = common dso_local global i64 0, align 8
@longrun_modes = common dso_local global i64** null, align 8
@LONGRUN_MODE_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @tmx86_get_longrun_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmx86_get_longrun_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.msrinfo, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @intr_disable()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @MSR_TMx86_LONGRUN, align 4
  %9 = call i32 @rdmsr(i32 %8)
  %10 = bitcast %union.msrinfo* %2 to i32*
  store i32 %9, i32* %10, align 8
  %11 = bitcast %union.msrinfo* %2 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @LONGRUN_MODE_MASK(i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = bitcast %union.msrinfo* %2 to i32**
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @LONGRUN_MODE_MASK(i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* @MSR_TMx86_LONGRUN_FLAGS, align 4
  %22 = call i32 @rdmsr(i32 %21)
  %23 = and i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %58, %0
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @LONGRUN_MODE_MAX, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = load i64**, i64*** @longrun_modes, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  %39 = load i64, i64* %4, align 8
  %40 = load i64**, i64*** @longrun_modes, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64*, i64** %40, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i64, i64* %5, align 8
  %49 = load i64**, i64*** @longrun_modes, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %63

57:                                               ; preds = %47, %38, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %25

61:                                               ; preds = %25
  %62 = load i64, i64* @LONGRUN_MODE_UNKNOWN, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @intr_restore(i32 %64)
  %66 = load i64, i64* %6, align 8
  ret i64 %66
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i64 @LONGRUN_MODE_MASK(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
