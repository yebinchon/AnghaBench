; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_lowermatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_lowermatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_gas_match_args = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dmar_map_entry = type { i64, i64 }

@DMAR_PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@rb_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_gas_match_args*, %struct.dmar_map_entry*)* @dmar_gas_lowermatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_lowermatch(%struct.dmar_gas_match_args* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_gas_match_args*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  %6 = alloca %struct.dmar_map_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.dmar_gas_match_args* %0, %struct.dmar_gas_match_args** %4, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %5, align 8
  %8 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %9 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %12 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %19 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %24 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @roundup2(i64 %22, i32 %27)
  %29 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %30 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %34 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %35 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %36 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @dmar_gas_match_one(%struct.dmar_gas_match_args* %33, %struct.dmar_map_entry* %34, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %17
  %43 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %44 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %45 = call i32 @dmar_gas_match_insert(%struct.dmar_gas_match_args* %43, %struct.dmar_map_entry* %44)
  store i32 0, i32* %3, align 4
  br label %89

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %49 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %52 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %55 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp slt i64 %50, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %47
  %64 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %65 = load i32, i32* @rb_entry, align 4
  %66 = call %struct.dmar_map_entry* @RB_LEFT(%struct.dmar_map_entry* %64, i32 %65)
  store %struct.dmar_map_entry* %66, %struct.dmar_map_entry** %6, align 8
  %67 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %68 = icmp ne %struct.dmar_map_entry* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %71 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %72 = call i32 @dmar_gas_lowermatch(%struct.dmar_gas_match_args* %70, %struct.dmar_map_entry* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %89

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %79 = load i32, i32* @rb_entry, align 4
  %80 = call %struct.dmar_map_entry* @RB_RIGHT(%struct.dmar_map_entry* %78, i32 %79)
  store %struct.dmar_map_entry* %80, %struct.dmar_map_entry** %6, align 8
  %81 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %82 = icmp ne %struct.dmar_map_entry* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %4, align 8
  %85 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %86 = call i32 @dmar_gas_lowermatch(%struct.dmar_gas_match_args* %84, %struct.dmar_map_entry* %85)
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %83, %75, %61, %42
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @roundup2(i64, i32) #1

declare dso_local i64 @dmar_gas_match_one(%struct.dmar_gas_match_args*, %struct.dmar_map_entry*, i64) #1

declare dso_local i32 @dmar_gas_match_insert(%struct.dmar_gas_match_args*, %struct.dmar_map_entry*) #1

declare dso_local %struct.dmar_map_entry* @RB_LEFT(%struct.dmar_map_entry*, i32) #1

declare dso_local %struct.dmar_map_entry* @RB_RIGHT(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
