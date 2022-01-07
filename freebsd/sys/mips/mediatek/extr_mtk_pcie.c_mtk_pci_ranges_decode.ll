; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_ranges_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_ranges_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_range = type { i8*, i8* }

@FDT_RANGES_CELLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mtk_pci_range*, %struct.mtk_pci_range*)* @mtk_pci_ranges_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pci_ranges_decode(i32 %0, %struct.mtk_pci_range* %1, %struct.mtk_pci_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pci_range*, align 8
  %7 = alloca %struct.mtk_pci_range*, align 8
  %8 = alloca %struct.mtk_pci_range*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mtk_pci_range* %1, %struct.mtk_pci_range** %6, align 8
  store %struct.mtk_pci_range* %2, %struct.mtk_pci_range** %7, align 8
  %24 = load i32, i32* @FDT_RANGES_CELLS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @fdt_addrsize_cells(i32 %28, i32* %11, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @ERANGE, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @fdt_parent_addr_cells(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ERANGE, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @OF_getproplen(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nuw i64 4, %25
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = mul nuw i64 4, %25
  %60 = trunc i64 %59 to i32
  %61 = call i64 @OF_getprop(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %60)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %18, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %19, align 4
  %77 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %6, align 8
  %78 = call i32 @bzero(%struct.mtk_pci_range* %77, i32 16)
  %79 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %7, align 8
  %80 = call i32 @bzero(%struct.mtk_pci_range* %79, i32 16)
  %81 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %81, i32** %14, align 8
  store i32 0, i32* %20, align 4
  br label %82

82:                                               ; preds = %140, %65
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %143

86:                                               ; preds = %82
  %87 = load i32*, i32** %14, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = call i8* @fdt_data_get(i8* %88, i32 1)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %14, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = call i8* @fdt_data_get(i8* %94, i32 1)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %16, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = call i8* @fdt_data_get(i8* %100, i32 1)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %17, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %105, 33554432
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %86
  %109 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %7, align 8
  store %struct.mtk_pci_range* %109, %struct.mtk_pci_range** %8, align 8
  br label %119

110:                                              ; preds = %86
  %111 = load i32, i32* %15, align 4
  %112 = and i32 %111, 16777216
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %6, align 8
  store %struct.mtk_pci_range* %115, %struct.mtk_pci_range** %8, align 8
  br label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @ERANGE, align 4
  store i32 %117, i32* %21, align 4
  br label %144

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32*, i32** %14, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = load i32, i32* %13, align 4
  %123 = call i8* @fdt_data_get(i8* %121, i32 %122)
  %124 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %8, align 8
  %125 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load i32, i32* %12, align 4
  %133 = call i8* @fdt_data_get(i8* %131, i32 %132)
  %134 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %8, align 8
  %135 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %14, align 8
  br label %140

140:                                              ; preds = %119
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %82

143:                                              ; preds = %82
  store i32 0, i32* %21, align 4
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i32, i32* %21, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %146

146:                                              ; preds = %144, %63, %55, %46, %39, %31
  %147 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @fdt_parent_addr_cells(i32) #2

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @bzero(%struct.mtk_pci_range*, i32) #2

declare dso_local i8* @fdt_data_get(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
