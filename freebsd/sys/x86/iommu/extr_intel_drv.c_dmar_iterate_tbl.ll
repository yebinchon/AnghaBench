; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_iterate_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_iterate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ACPI_SIG_DMAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dmar_identify: corrupted DMAR table, l %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.TYPE_7__*, i8*)*, i8*)* @dmar_iterate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_iterate_tbl(i32 (%struct.TYPE_7__*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.TYPE_7__*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 (%struct.TYPE_7__*, i8*)* %0, i32 (%struct.TYPE_7__*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @ACPI_SIG_DMAR, align 4
  %11 = bitcast %struct.TYPE_8__** %5 to i32**
  %12 = call i32 @AcpiGetTable(i32 %10, i32 1, i32** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = bitcast %struct.TYPE_8__* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = bitcast %struct.TYPE_8__* %21 to i8*
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %58, %17
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp uge i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %59

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %7, align 8
  %52 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %3, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 %52(%struct.TYPE_7__* %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %59

58:                                               ; preds = %46
  br label %29

59:                                               ; preds = %57, %41, %33
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = bitcast %struct.TYPE_8__* %60 to i32*
  %62 = call i32 @AcpiPutTable(i32* %61)
  br label %63

63:                                               ; preds = %59, %16
  ret void
}

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @AcpiPutTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
