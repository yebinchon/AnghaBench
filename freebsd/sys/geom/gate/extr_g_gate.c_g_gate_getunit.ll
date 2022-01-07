; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_getunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_getunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_gate_units_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@g_gate_maxunits = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@g_gate_units = common dso_local global i32** null, align 8
@EEXIST = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @g_gate_getunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gate_getunit(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @g_gate_units_lock, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @g_gate_maxunits, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @EINVAL, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %30

17:                                               ; preds = %10
  %18 = load i32**, i32*** @g_gate_units, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load i32, i32* @EEXIST, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %14
  br label %52

31:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @g_gate_maxunits, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32**, i32*** @g_gate_units, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load i32, i32* @ENFILE, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %30
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %43, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
