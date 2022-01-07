; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_set_longrun_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_set_longrun_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msrinfo = type { i32* }

@LONGRUN_MODE_UNKNOWN = common dso_local global i64 0, align 8
@MSR_TMx86_LONGRUN = common dso_local global i32 0, align 4
@longrun_modes = common dso_local global i32** null, align 8
@MSR_TMx86_LONGRUN_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @tmx86_set_longrun_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmx86_set_longrun_mode(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.msrinfo, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @LONGRUN_MODE_UNKNOWN, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %73

10:                                               ; preds = %1
  %11 = call i32 (...) @intr_disable()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MSR_TMx86_LONGRUN, align 4
  %13 = call i8* @rdmsr(i32 %12)
  %14 = bitcast %union.msrinfo* %5 to i8**
  store i8* %13, i8** %14, align 8
  %15 = bitcast %union.msrinfo* %5 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32**, i32*** @longrun_modes, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @LONGRUN_MODE_WRITE(i32 %18, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = bitcast %union.msrinfo* %5 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  %30 = bitcast %union.msrinfo* %5 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32**, i32*** @longrun_modes, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @LONGRUN_MODE_WRITE(i32 %33, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = bitcast %union.msrinfo* %5 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @MSR_TMx86_LONGRUN, align 4
  %46 = bitcast %union.msrinfo* %5 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @wrmsr(i32 %45, i8* %47)
  %49 = load i32, i32* @MSR_TMx86_LONGRUN_FLAGS, align 4
  %50 = call i8* @rdmsr(i32 %49)
  %51 = bitcast %union.msrinfo* %5 to i8**
  store i8* %50, i8** %51, align 8
  %52 = bitcast %union.msrinfo* %5 to i32**
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -2
  %57 = load i32**, i32*** @longrun_modes, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %56, %62
  %64 = bitcast %union.msrinfo* %5 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @MSR_TMx86_LONGRUN_FLAGS, align 4
  %68 = bitcast %union.msrinfo* %5 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @wrmsr(i32 %67, i8* %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @intr_restore(i32 %71)
  store i64 1, i64* %2, align 8
  br label %73

73:                                               ; preds = %10, %9
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i8* @rdmsr(i32) #1

declare dso_local i8* @LONGRUN_MODE_WRITE(i32, i32) #1

declare dso_local i32 @wrmsr(i32, i8*) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
