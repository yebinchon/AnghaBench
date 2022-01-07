; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_madvise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MADV_PROTECT = common dso_local global i32 0, align 4
@PPROT_SET = common dso_local global i32 0, align 4
@P_PID = common dso_local global i32 0, align 4
@PROC_SPROTECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_madvise(%struct.thread* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MADV_PROTECT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load i32, i32* @PPROT_SET, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = load i32, i32* @P_PID, align 4
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PROC_SPROTECT, align 4
  %28 = call i32 @kern_procctl(%struct.thread* %20, i32 %21, i32 %26, i32 %27, i32* %14)
  store i32 %28, i32* %5, align 4
  br label %70

29:                                               ; preds = %4
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %35, i32** %10, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @vm_map_min(i32* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %29
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @vm_map_max(i32* %45)
  %47 = icmp ugt i64 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %29
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %70

50:                                               ; preds = %41
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %5, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @trunc_page(i64 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  %64 = call i64 @round_page(i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vm_map_madvise(i32* %65, i64 %66, i64 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %58, %56, %48, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @kern_procctl(%struct.thread*, i32, i32, i32, i32*) #1

declare dso_local i64 @vm_map_min(i32*) #1

declare dso_local i64 @vm_map_max(i32*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_madvise(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
