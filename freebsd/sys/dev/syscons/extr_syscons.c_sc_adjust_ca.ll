; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_adjust_ca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_adjust_ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_attr = type { i32*, i32, i32, i32, i32, i32 }

@CONS_CHARCURSOR_COLORS = common dso_local global i32 0, align 4
@CONS_MOUSECURSOR_COLORS = common dso_local global i32 0, align 4
@CONS_SHAPEONLY_CURSOR = common dso_local global i32 0, align 4
@CONS_CURSOR_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cursor_attr*, i32, i32, i32)* @sc_adjust_ca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_adjust_ca(%struct.cursor_attr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cursor_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cursor_attr* %0, %struct.cursor_attr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @CONS_CHARCURSOR_COLORS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 255
  %16 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %17 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %23 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  br label %67

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CONS_MOUSECURSOR_COLORS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %35 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %39 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %66

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %46 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %53 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @CONS_SHAPEONLY_CURSOR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CONS_CURSOR_ATTRS, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.cursor_attr*, %struct.cursor_attr** %5, align 8
  %64 = getelementptr inbounds %struct.cursor_attr, %struct.cursor_attr* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %31
  br label %67

67:                                               ; preds = %66, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
