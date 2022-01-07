; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.copy_file_range_args = type { i32*, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_copy_file_range(%struct.thread* %0, %struct.copy_file_range_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.copy_file_range_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.copy_file_range_args* %1, %struct.copy_file_range_args** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %12 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %17 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @copyin(i32* %18, i32* %6, i32 4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %15
  store i32* %6, i32** %8, align 8
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %27 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %32 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @copyin(i32* %33, i32* %7, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %30
  store i32* %7, i32** %9, align 8
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %43 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %47 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %51 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %54 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @kern_copy_file_range(%struct.thread* %41, i32 %44, i32* %45, i32 %48, i32* %49, i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %40
  %60 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %61 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %67 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @copyout(i32* %65, i32* %68, i32 4)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %59, %40
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %75 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.copy_file_range_args*, %struct.copy_file_range_args** %5, align 8
  %81 = getelementptr inbounds %struct.copy_file_range_args, %struct.copy_file_range_args* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @copyout(i32* %79, i32* %82, i32 4)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %78, %73, %70
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %37, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @kern_copy_file_range(%struct.thread*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
