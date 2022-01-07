; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_get_requester.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_get_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dmar_get_requester(%s): NULL parent for %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"dmar_get_requester(%s): non-pci parent %s for %s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"dmar_get_requester(%s): NULL bridge for %s\00", align 1
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIER_FLAGS = common dso_local global i64 0, align 8
@PCIEM_FLAGS_TYPE = common dso_local global i32 0, align 4
@PCIEM_TYPE_PCI_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dmar_get_requester(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %15, i64* %5, align 8
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** %11, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pci_get_rid(i32* %17)
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %118, %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @device_get_parent(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @device_get_name(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @device_get_name(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %25, i8* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @device_get_devclass(i32* %33)
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @device_get_name(i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @device_get_name(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @device_get_name(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %37, i8* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @device_get_parent(i32* %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @device_get_name(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @device_get_name(i32* %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @KASSERT(i32 %51, i8* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @device_get_parent(i32* %59)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @device_get_devclass(i32* %61)
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %20
  br label %119

66:                                               ; preds = %20
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @device_get_parent(i32* %67)
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @PCIY_EXPRESS, align 4
  %71 = call i64 @pci_find_cap(i32* %69, i32 %70, i32* %12)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** %6, align 8
  br label %118

75:                                               ; preds = %66
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @PCIY_EXPRESS, align 4
  %78 = call i64 @pci_find_cap(i32* %76, i32 %77, i32* %12)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %8, align 8
  store i32* %81, i32** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %75
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @PCIY_EXPRESS, align 4
  %87 = call i64 @pci_find_cap(i32* %85, i32 %86, i32* %12)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PCIER_FLAGS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @pci_read_config(i32* %90, i64 %94, i32 2)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @PCIEM_FLAGS_TYPE, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @PCIEM_TYPE_PCI_BRIDGE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 1, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %84, %75
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @pci_get_bus(i32* %107)
  %109 = call i32 @PCI_RID(i32 %108, i32 0, i32 0)
  %110 = load i32*, i32** %4, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %10, align 8
  store i32* %111, i32** %6, align 8
  br label %117

112:                                              ; preds = %103
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @pci_get_rid(i32* %113)
  %115 = load i32*, i32** %4, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  store i32* %116, i32** %6, align 8
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %73
  br label %20

119:                                              ; preds = %65
  %120 = load i32*, i32** %11, align 8
  ret i32* %120
}

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32 @pci_get_rid(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local i64 @pci_find_cap(i32*, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32*, i64, i32) #1

declare dso_local i32 @PCI_RID(i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
