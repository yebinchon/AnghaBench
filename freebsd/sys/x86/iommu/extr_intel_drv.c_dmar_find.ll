; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dmar_devcnt = common dso_local global i32 0, align 4
@dmar_devs = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"pci%d:%d:%d:%d matched dmar%d by %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" scope path \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dmar_unit* @dmar_find(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dmar_unit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @device_get_parent(i32* %16)
  %18 = call i64 @device_get_devclass(i32 %17)
  %19 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.dmar_unit* null, %struct.dmar_unit** %3, align 8
  br label %95

22:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @pci_get_domain(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @dmar_dev_depth(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @dmar_dev_path(i32* %31, i32* %11, i32* %30, i32 %32)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %61, %22
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @dmar_devcnt, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i32**, i32*** @dmar_devs, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %61

46:                                               ; preds = %38
  %47 = load i32**, i32*** @dmar_devs, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.dmar_unit* @device_get_softc(i32* %51)
  store %struct.dmar_unit* %52, %struct.dmar_unit** %7, align 8
  %53 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @dmar_match_by_path(%struct.dmar_unit* %53, i32 %54, i32 %55, i32* %30, i32 %56, i8** %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %34

64:                                               ; preds = %59, %34
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @dmar_devcnt, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store %struct.dmar_unit* null, %struct.dmar_unit** %3, align 8
  store i32 1, i32* %15, align 4
  br label %93

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @pci_get_bus(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @pci_get_slot(i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @pci_get_function(i32* %79)
  %81 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %82 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @device_printf(i32* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %80, i32 %83, i8* %84)
  %86 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @dmar_print_path(i32 %87, i32 %88, i32* %30)
  %90 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %72, %69
  %92 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  store %struct.dmar_unit* %92, %struct.dmar_unit** %3, align 8
  store i32 1, i32* %15, align 4
  br label %93

93:                                               ; preds = %91, %68
  %94 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %93, %21
  %96 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  ret %struct.dmar_unit* %96
}

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32 @pci_get_domain(i32*) #1

declare dso_local i32 @dmar_dev_depth(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmar_dev_path(i32*, i32*, i32*, i32) #1

declare dso_local %struct.dmar_unit* @device_get_softc(i32*) #1

declare dso_local i64 @dmar_match_by_path(%struct.dmar_unit*, i32, i32, i32*, i32, i8**) #1

declare dso_local i32 @device_printf(i32*, i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dmar_print_path(i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
