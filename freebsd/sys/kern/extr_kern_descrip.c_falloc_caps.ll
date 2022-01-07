; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_falloc_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_falloc_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.filecaps = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falloc_caps(%struct.thread* %0, %struct.file** %1, i32* %2, i32 %3, %struct.filecaps* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.file**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.filecaps*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.file** %1, %struct.file*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.filecaps* %4, %struct.filecaps** %11, align 8
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = call i32 @falloc_noinstall(%struct.thread* %15, %struct.file** %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %51

21:                                               ; preds = %5
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = load %struct.file*, %struct.file** %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.filecaps*, %struct.filecaps** %11, align 8
  %26 = call i32 @finstall(%struct.thread* %22, %struct.file* %23, i32* %14, i32 %24, %struct.filecaps* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.file*, %struct.file** %12, align 8
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = call i32 @fdrop(%struct.file* %30, %struct.thread* %31)
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %51

34:                                               ; preds = %21
  %35 = load %struct.file**, %struct.file*** %8, align 8
  %36 = icmp ne %struct.file** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.file*, %struct.file** %12, align 8
  %39 = load %struct.file**, %struct.file*** %8, align 8
  store %struct.file* %38, %struct.file** %39, align 8
  br label %44

40:                                               ; preds = %34
  %41 = load %struct.file*, %struct.file** %12, align 8
  %42 = load %struct.thread*, %struct.thread** %7, align 8
  %43 = call i32 @fdrop(%struct.file* %41, %struct.thread* %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %29, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @falloc_noinstall(%struct.thread*, %struct.file**) #1

declare dso_local i32 @finstall(%struct.thread*, %struct.file*, i32*, i32, %struct.filecaps*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
