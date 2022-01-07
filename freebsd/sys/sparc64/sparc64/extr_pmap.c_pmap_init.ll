; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@translations_size = common dso_local global i32 0, align 4
@translations = common dso_local global %struct.TYPE_2__* null, align 8
@TD_V = common dso_local global i32 0, align 4
@VM_MIN_PROM_ADDRESS = common dso_local global i64 0, align 8
@VM_MAX_PROM_ADDRESS = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VMFS_NO_SPACE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_NOFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pmap_init: vm_map_find\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %64, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @translations_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %67

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @translations, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %1, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @translations, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @translations, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TD_V, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %9
  br label %64

32:                                               ; preds = %9
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @VM_MIN_PROM_ADDRESS, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @VM_MAX_PROM_ADDRESS, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  br label %64

41:                                               ; preds = %36
  %42 = load i32, i32* @kernel_map, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @VMFS_NO_SPACE, align 4
  %45 = load i32, i32* @VM_PROT_ALL, align 4
  %46 = load i32, i32* @VM_PROT_ALL, align 4
  %47 = load i32, i32* @MAP_NOFAULT, align 4
  %48 = call i32 @vm_map_find(i32 %42, i32* null, i32 0, i64* %1, i32 %43, i32 0, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %1, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @translations, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %53, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52, %41
  %62 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %52
  br label %64

64:                                               ; preds = %63, %40, %31
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %5

67:                                               ; preds = %5
  ret void
}

declare dso_local i32 @vm_map_find(i32, i32*, i32, i64*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
