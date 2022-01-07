; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pin_group = type { i32 }

@rt2880_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@rt3050_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@rt3352_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@rt3883_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@rt5350_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@mt7620_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@mt7628_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@mt7621_pintable = common dso_local global %struct.mtk_pin_group* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mtk_pinctrl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinctrl_configure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pin_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @OF_node_from_xref(i32 %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = call i32 (...) @mtk_soc_get_socid()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %31 [
    i32 135, label %15
    i32 134, label %17
    i32 133, label %17
    i32 132, label %17
    i32 131, label %19
    i32 130, label %21
    i32 129, label %21
    i32 128, label %23
    i32 140, label %25
    i32 139, label %25
    i32 137, label %27
    i32 136, label %27
    i32 138, label %29
  ]

15:                                               ; preds = %2
  %16 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @rt2880_pintable, align 8
  store %struct.mtk_pin_group* %16, %struct.mtk_pin_group** %6, align 8
  br label %33

17:                                               ; preds = %2, %2, %2
  %18 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @rt3050_pintable, align 8
  store %struct.mtk_pin_group* %18, %struct.mtk_pin_group** %6, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @rt3352_pintable, align 8
  store %struct.mtk_pin_group* %20, %struct.mtk_pin_group** %6, align 8
  br label %33

21:                                               ; preds = %2, %2
  %22 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @rt3883_pintable, align 8
  store %struct.mtk_pin_group* %22, %struct.mtk_pin_group** %6, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @rt5350_pintable, align 8
  store %struct.mtk_pin_group* %24, %struct.mtk_pin_group** %6, align 8
  br label %33

25:                                               ; preds = %2, %2
  %26 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @mt7620_pintable, align 8
  store %struct.mtk_pin_group* %26, %struct.mtk_pin_group** %6, align 8
  br label %33

27:                                               ; preds = %2, %2
  %28 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @mt7628_pintable, align 8
  store %struct.mtk_pin_group* %28, %struct.mtk_pin_group** %6, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** @mt7621_pintable, align 8
  store %struct.mtk_pin_group* %30, %struct.mtk_pin_group** %6, align 8
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %10, align 4
  br label %57

33:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @OF_child(i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %53, %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, -1
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mtk_pinctrl_process_node(i32 %45, %struct.mtk_pin_group* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @OF_peer(i32 %54)
  store i32 %55, i32* %8, align 4
  br label %36

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @mtk_soc_get_socid(...) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @mtk_pinctrl_process_node(i32, %struct.mtk_pin_group*, i32) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
