; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_rmrr_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_rmrr_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.rmrr_iter_args = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dmar_map_entry = type { i32, i32 }

@ACPI_DMAR_TYPE_RESERVED_MEMORY = common dso_local global i64 0, align 8
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@unroll_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @dmar_rmrr_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_rmrr_iter(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rmrr_iter_args*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.dmar_map_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_DMAR_TYPE_RESERVED_MEMORY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.rmrr_iter_args*
  store %struct.rmrr_iter_args* %21, %struct.rmrr_iter_args** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = bitcast %struct.TYPE_9__* %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %28 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %95

32:                                               ; preds = %19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = bitcast %struct.TYPE_8__* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 24
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to i8*
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %93, %32
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp uge i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %94

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %60 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %63 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %66 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dmar_match_devscope(%struct.TYPE_10__* %58, i32 %61, i32 %64, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %93

71:                                               ; preds = %49
  %72 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %73 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %76 = call %struct.dmar_map_entry* @dmar_gas_alloc_entry(i32 %74, i32 %75)
  store %struct.dmar_map_entry* %76, %struct.dmar_map_entry** %9, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %81 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %86 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rmrr_iter_args*, %struct.rmrr_iter_args** %6, align 8
  %88 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %9, align 8
  %91 = load i32, i32* @unroll_link, align 4
  %92 = call i32 @TAILQ_INSERT_TAIL(i32 %89, %struct.dmar_map_entry* %90, i32 %91)
  br label %93

93:                                               ; preds = %71, %49
  br label %44

94:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %31, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dmar_match_devscope(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local %struct.dmar_map_entry* @dmar_gas_alloc_entry(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
