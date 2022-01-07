; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_process_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_process_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pin_group = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mtk_pin_group*, i8*, i8*)* @mtk_pinctrl_process_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinctrl_process_entry(i32 %0, %struct.mtk_pin_group* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_pin_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mtk_pin_group* %1, %struct.mtk_pin_group** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %34, %4
  %15 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %15, i64 %17
  %19 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %23, i64 %25
  %27 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strcmp(i32* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %14

37:                                               ; preds = %32, %14
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %5, align 4
  br label %125

42:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %120, %42
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %45, i64 %47
  %49 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %44, %50
  br i1 %51, label %52, label %123

52:                                               ; preds = %43
  %53 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %53, i64 %55
  %57 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strcmp(i32* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %52
  %68 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %68, i64 %70
  %72 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mtk_sysctl_get(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %75, i64 %77
  %79 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %81, i64 %83
  %85 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %80, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %91, i64 %93
  %95 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %102, i64 %104
  %106 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %101, %107
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load %struct.mtk_pin_group*, %struct.mtk_pin_group** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %111, i64 %113
  %115 = getelementptr inbounds %struct.mtk_pin_group, %struct.mtk_pin_group* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @mtk_sysctl_set(i32 %116, i32 %117)
  store i32 0, i32* %5, align 4
  br label %125

119:                                              ; preds = %52
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %43

123:                                              ; preds = %43
  %124 = load i32, i32* @ENOENT, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %67, %40
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i32 @mtk_sysctl_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
