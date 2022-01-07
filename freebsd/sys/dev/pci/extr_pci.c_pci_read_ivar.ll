; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_NORMAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pci_devinfo*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.pci_devinfo* @device_get_ivars(i32 %12)
  store %struct.pci_devinfo* %13, %struct.pci_devinfo** %10, align 8
  %14 = load %struct.pci_devinfo*, %struct.pci_devinfo** %10, align 8
  %15 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %14, i32 0, i32 0
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %144 [
    i32 141, label %17
    i32 129, label %21
    i32 130, label %26
    i32 128, label %31
    i32 144, label %36
    i32 143, label %41
    i32 146, label %51
    i32 131, label %56
    i32 134, label %61
    i32 133, label %66
    i32 139, label %71
    i32 138, label %76
    i32 142, label %81
    i32 148, label %86
    i32 132, label %91
    i32 140, label %96
    i32 145, label %101
    i32 147, label %106
    i32 135, label %111
    i32 136, label %125
    i32 137, label %139
  ]

17:                                               ; preds = %4
  %18 = load i64*, i64** %9, align 8
  %19 = bitcast i64* %18 to i32**
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %147

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  br label %146

26:                                               ; preds = %4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %9, align 8
  store i64 %29, i64* %30, align 8
  br label %146

31:                                               ; preds = %4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  br label %146

36:                                               ; preds = %4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  br label %146

41:                                               ; preds = %4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 %44, 16
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %45, %48
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  br label %146

51:                                               ; preds = %4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  br label %146

56:                                               ; preds = %4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  br label %146

61:                                               ; preds = %4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  br label %146

66:                                               ; preds = %4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  br label %146

71:                                               ; preds = %4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  br label %146

76:                                               ; preds = %4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  br label %146

81:                                               ; preds = %4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %146

86:                                               ; preds = %4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  br label %146

91:                                               ; preds = %4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 12
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  br label %146

96:                                               ; preds = %4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 13
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %9, align 8
  store i64 %99, i64* %100, align 8
  br label %146

101:                                              ; preds = %4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 14
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %146

106:                                              ; preds = %4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 15
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %9, align 8
  store i64 %109, i64* %110, align 8
  br label %146

111:                                              ; preds = %4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 19
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i64*, i64** %9, align 8
  store i64 -1, i64* %118, align 8
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %5, align 4
  br label %147

120:                                              ; preds = %111
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 16
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  br label %146

125:                                              ; preds = %4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 19
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i64*, i64** %9, align 8
  store i64 -1, i64* %132, align 8
  %133 = load i32, i32* @EINVAL, align 4
  store i32 %133, i32* %5, align 4
  br label %147

134:                                              ; preds = %125
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 17
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %9, align 8
  store i64 %137, i64* %138, align 8
  br label %146

139:                                              ; preds = %4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 18
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %9, align 8
  store i64 %142, i64* %143, align 8
  br label %146

144:                                              ; preds = %4
  %145 = load i32, i32* @ENOENT, align 4
  store i32 %145, i32* %5, align 4
  br label %147

146:                                              ; preds = %139, %134, %120, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %41, %36, %31, %26, %21
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %144, %131, %117, %17
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
