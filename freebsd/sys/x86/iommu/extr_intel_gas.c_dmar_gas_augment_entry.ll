; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_augment_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_augment_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_map_entry = type { i8*, i8* }

@rb_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_map_entry*)* @dmar_gas_augment_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_gas_augment_entry(%struct.dmar_map_entry* %0) #0 {
  %2 = alloca %struct.dmar_map_entry*, align 8
  %3 = alloca %struct.dmar_map_entry*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_map_entry* %0, %struct.dmar_map_entry** %2, align 8
  br label %5

5:                                                ; preds = %77, %1
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %7 = icmp ne %struct.dmar_map_entry* %6, null
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %10 = load i32, i32* @rb_entry, align 4
  %11 = call %struct.dmar_map_entry* @RB_LEFT(%struct.dmar_map_entry* %9, i32 %10)
  store %struct.dmar_map_entry* %11, %struct.dmar_map_entry** %3, align 8
  %12 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %13 = load i32, i32* @rb_entry, align 4
  %14 = call %struct.dmar_map_entry* @RB_RIGHT(%struct.dmar_map_entry* %12, i32 %13)
  store %struct.dmar_map_entry* %14, %struct.dmar_map_entry** %4, align 8
  %15 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %16 = icmp eq %struct.dmar_map_entry* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %19 = icmp eq %struct.dmar_map_entry* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %22 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %25 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %76

26:                                               ; preds = %17, %8
  %27 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %28 = icmp eq %struct.dmar_map_entry* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %31 = icmp ne %struct.dmar_map_entry* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %34 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %37 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @MAX(i8* %35, i8* %38)
  %40 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %41 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %75

42:                                               ; preds = %29, %26
  %43 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %44 = icmp eq %struct.dmar_map_entry* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %47 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %50 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @MAX(i8* %48, i8* %51)
  %53 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %54 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %74

55:                                               ; preds = %42
  %56 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %57 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %60 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @MAX(i8* %58, i8* %61)
  %63 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %64 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %66 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %69 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @MAX(i8* %67, i8* %70)
  %72 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %73 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %55, %45
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %20
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %2, align 8
  %79 = load i32, i32* @rb_entry, align 4
  %80 = call %struct.dmar_map_entry* @RB_PARENT(%struct.dmar_map_entry* %78, i32 %79)
  store %struct.dmar_map_entry* %80, %struct.dmar_map_entry** %2, align 8
  br label %5

81:                                               ; preds = %5
  ret void
}

declare dso_local %struct.dmar_map_entry* @RB_LEFT(%struct.dmar_map_entry*, i32) #1

declare dso_local %struct.dmar_map_entry* @RB_RIGHT(%struct.dmar_map_entry*, i32) #1

declare dso_local i8* @MAX(i8*, i8*) #1

declare dso_local %struct.dmar_map_entry* @RB_PARENT(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
