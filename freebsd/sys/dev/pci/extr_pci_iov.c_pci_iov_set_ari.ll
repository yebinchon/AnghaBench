; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_set_ari.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_set_ari.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIZ_SRIOV = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not find child of %s with SR-IOV capability\00", align 1
@PCIR_SRIOV_CTL = common dso_local global i64 0, align 8
@PCIM_SRIOV_ARI_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to enable ARI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pci_iov_set_ari to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_set_ari(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @device_get_parent(i32* %14)
  %16 = call i32 @PCIB_ARI_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @device_get_children(i32* %20, i32*** %5, i32* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @PCIZ_SRIOV, align 4
  %38 = call i64 @pci_find_extcap(i32* %36, i32 %37, i32* %11)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %31
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @pci_get_function(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49, %40
  %54 = load i32**, i32*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %4, align 8
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %53, %49
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %27

66:                                               ; preds = %27
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32, i32* @M_TEMP, align 4
  %69 = call i32 @free(i32** %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @device_get_nameunit(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @KASSERT(i32 %72, i8* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PCIR_SRIOV_CTL, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @pci_read_config(i32* %78, i64 %82, i32 2)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @PCIM_SRIOV_ARI_EN, align 4
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @PCIR_SRIOV_CTL, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @pci_write_config(i32* %87, i64 %91, i32 %92, i32 2)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @PCIR_SRIOV_CTL, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @pci_read_config(i32* %94, i64 %98, i32 2)
  %100 = load i32, i32* @PCIM_SRIOV_ARI_EN, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %66
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @device_printf(i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %103, %24, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @PCIB_ARI_ENABLED(i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @device_get_children(i32*, i32***, i32*) #1

declare dso_local i64 @pci_find_extcap(i32*, i32, i32*) #1

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @pci_read_config(i32*, i64, i32) #1

declare dso_local i32 @pci_write_config(i32*, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
