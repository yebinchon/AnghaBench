; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32 }
%struct.emu_route = type { i32*, i32*, i32*, i32* }
%struct.emu_voice = type { i64, %struct.emu_voice*, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_vroute(%struct.emu_sc_info* %0, %struct.emu_route* %1, %struct.emu_voice* %2) #0 {
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca %struct.emu_route*, align 8
  %6 = alloca %struct.emu_voice*, align 8
  %7 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store %struct.emu_route* %1, %struct.emu_route** %5, align 8
  store %struct.emu_voice* %2, %struct.emu_voice** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.emu_route*, %struct.emu_route** %5, align 8
  %13 = getelementptr inbounds %struct.emu_route, %struct.emu_route* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %20 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load %struct.emu_route*, %struct.emu_route** %5, align 8
  %26 = getelementptr inbounds %struct.emu_route, %struct.emu_route* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %33 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %11
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %43 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %48 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  %56 = load %struct.emu_route*, %struct.emu_route** %5, align 8
  %57 = getelementptr inbounds %struct.emu_route, %struct.emu_route* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %64 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.emu_route*, %struct.emu_route** %5, align 8
  %70 = getelementptr inbounds %struct.emu_route, %struct.emu_route* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %77 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %55
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85, %46, %41
  %87 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %88 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %93 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %92, i32 0, i32 1
  %94 = load %struct.emu_voice*, %struct.emu_voice** %93, align 8
  %95 = icmp ne %struct.emu_voice* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %98 = load %struct.emu_route*, %struct.emu_route** %5, align 8
  %99 = load %struct.emu_voice*, %struct.emu_voice** %6, align 8
  %100 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %99, i32 0, i32 1
  %101 = load %struct.emu_voice*, %struct.emu_voice** %100, align 8
  call void @emu_vroute(%struct.emu_sc_info* %97, %struct.emu_route* %98, %struct.emu_voice* %101)
  br label %102

102:                                              ; preds = %96, %91, %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
