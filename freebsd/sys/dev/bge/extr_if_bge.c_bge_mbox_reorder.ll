; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_mbox_reorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_mbox_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_reorder = type { i64, i64, i8* }
%struct.bge_softc = type { i32 }
%struct.mbox_reorder.0 = type { i64, i64, i8* }

@bge_mbox_reorder.mbox_reorder_lists = internal constant [1 x %struct.mbox_reorder] [%struct.mbox_reorder { i64 4130, i64 29776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [22 x i8] c"AMD-8131 PCI-X Bridge\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"enabling MBOX workaround for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_mbox_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_mbox_reorder(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  %9 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %9, i64* %4, align 8
  %10 = call i64 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 %10, i64* %5, align 8
  %11 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %69, %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @device_get_devclass(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %70

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @device_get_devclass(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %70

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nitems(%struct.mbox_reorder.0* bitcast ([1 x %struct.mbox_reorder]* @bge_mbox_reorder.mbox_reorder_lists to %struct.mbox_reorder.0*))
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @pci_get_vendor(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1 x %struct.mbox_reorder], [1 x %struct.mbox_reorder]* @bge_mbox_reorder.mbox_reorder_lists, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.mbox_reorder, %struct.mbox_reorder* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @pci_get_device(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x %struct.mbox_reorder], [1 x %struct.mbox_reorder]* @bge_mbox_reorder.mbox_reorder_lists, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.mbox_reorder, %struct.mbox_reorder* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %57 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1 x %struct.mbox_reorder], [1 x %struct.mbox_reorder]* @bge_mbox_reorder.mbox_reorder_lists, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.mbox_reorder, %struct.mbox_reorder* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  store i32 1, i32* %2, align 4
  br label %71

65:                                               ; preds = %46, %37
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %33

69:                                               ; preds = %33
  br label %16

70:                                               ; preds = %31, %25
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i32 @nitems(%struct.mbox_reorder.0*) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
