; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find_nonpci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find_nonpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@dmar_devcnt = common dso_local global i32 0, align 4
@dmar_devs = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [50 x i8] c"dmar_find_nonpci: id %d type %d path length != 2\0A\00", align 1
@ACPI_DMAR_SCOPE_TYPE_IOAPIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_unit* (i64, i64, i32*)* @dmar_find_nonpci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_unit* @dmar_find_nonpci(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dmar_unit*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %109, %3
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* @dmar_devcnt, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %112

20:                                               ; preds = %16
  %21 = load i32**, i32*** @dmar_devs, align 8
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %109

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @device_get_softc(i32* %30)
  %32 = inttoptr i64 %31 to %struct.dmar_unit*
  store %struct.dmar_unit* %32, %struct.dmar_unit** %9, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.TYPE_8__* @dmar_find_by_index(i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %10, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %109

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = bitcast %struct.TYPE_8__* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %13, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = bitcast %struct.TYPE_8__* %42 to i8*
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  store i8* %49, i8** %14, align 8
  br label %50

50:                                               ; preds = %76, %69, %38
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = icmp uge i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %108

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %11, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %13, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %50

70:                                               ; preds = %55
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %50

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 32
  %83 = icmp eq i64 %82, 2
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 1
  %90 = bitcast %struct.TYPE_9__* %89 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %12, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PCI_RID(i32 %93, i32 %96, i32 %99)
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %87, %84
  %103 = load %struct.dmar_unit*, %struct.dmar_unit** %9, align 8
  store %struct.dmar_unit* %103, %struct.dmar_unit** %4, align 8
  br label %113

104:                                              ; preds = %77
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %104, %54
  br label %109

109:                                              ; preds = %108, %37, %28
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %16

112:                                              ; preds = %16
  store %struct.dmar_unit* null, %struct.dmar_unit** %4, align 8
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  ret %struct.dmar_unit* %114
}

declare dso_local i64 @device_get_softc(i32*) #1

declare dso_local %struct.TYPE_8__* @dmar_find_by_index(i32) #1

declare dso_local i32 @PCI_RID(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
