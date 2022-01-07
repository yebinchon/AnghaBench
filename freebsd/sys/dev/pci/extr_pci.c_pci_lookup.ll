; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@PCI_DOMAINMAX = common dso_local global i32 0, align 4
@PCI_BUSMAX = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCIE_ARI_FUNCMAX = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32**)* @pci_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_lookup(i8* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32** %2, i32*** %6, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %137

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %137

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = call i64 @strtol(i8* %24, i8** %8, i32 10)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @INT_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %28, %22
  br label %137

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i64 @strtol(i8* %42, i8** %8, i32 10)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @INT_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 58
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %46, %38
  br label %137

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i64 @strtol(i8* %60, i8** %8, i32 10)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @INT_MAX, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %56
  br label %137

69:                                               ; preds = %64
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i64 @strtol(i8* %78, i8** %8, i32 10)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @INT_MAX, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %82, %76
  br label %137

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  br label %106

95:                                               ; preds = %69
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %105

104:                                              ; preds = %95
  br label %137

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %92
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @PCI_DOMAINMAX, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %129, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @PCI_BUSMAX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %129, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @PCI_SLOTMAX, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %129, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @PCIE_ARI_FUNCMAX, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @PCI_FUNCMAX, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %118, %114, %110, %106
  br label %137

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32* @pci_find_dbsf(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32**, i32*** %6, align 8
  store i32* %135, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %129, %104, %91, %68, %55, %37, %21, %16
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
