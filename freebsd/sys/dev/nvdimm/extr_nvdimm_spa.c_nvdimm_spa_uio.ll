; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_spa_dev = type { i64, i32, i32*, i32 }
%struct.uio = type { i32, i64 }
%struct.vm_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_spa_dev*, %struct.uio*)* @nvdimm_spa_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_spa_uio(%struct.nvdimm_spa_dev* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.nvdimm_spa_dev*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca %struct.vm_page, align 4
  %6 = alloca %struct.vm_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvdimm_spa_dev* %0, %struct.nvdimm_spa_dev** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %2
  %16 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = call i32 @bzero(%struct.vm_page* %5, i32 4)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vm_page_initfake(%struct.vm_page* %5, i32 0, i32 %20)
  store %struct.vm_page* %5, %struct.vm_page** %6, align 8
  br label %22

22:                                               ; preds = %70, %15
  %23 = load %struct.uio*, %struct.uio** %4, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = load %struct.uio*, %struct.uio** %4, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %71

36:                                               ; preds = %27
  %37 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %38 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.uio*, %struct.uio** %4, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @trunc_page(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @vm_page_updatefake(%struct.vm_page* %5, i32 %47, i32 %48)
  %50 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.uio*, %struct.uio** %4, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.uio*, %struct.uio** %4, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %36
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PAGE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.uio*, %struct.uio** %4, align 8
  %66 = call i32 @uiomove_fromphys(%struct.vm_page** %6, i32 %63, i32 %64, %struct.uio* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %71

70:                                               ; preds = %60
  br label %22

71:                                               ; preds = %69, %35, %22
  br label %135

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %133, %72
  %74 = load %struct.uio*, %struct.uio** %4, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %134

78:                                               ; preds = %73
  %79 = load %struct.uio*, %struct.uio** %4, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %83 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %134

87:                                               ; preds = %78
  %88 = load i32, i32* @INT_MAX, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.uio*, %struct.uio** %4, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.uio*, %struct.uio** %4, align 8
  %96 = getelementptr inbounds %struct.uio, %struct.uio* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.uio*, %struct.uio** %4, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %106 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %104, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %111 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.uio*, %struct.uio** %4, align 8
  %114 = getelementptr inbounds %struct.uio, %struct.uio* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %109, %98
  %119 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %120 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load %struct.uio*, %struct.uio** %4, align 8
  %124 = getelementptr inbounds %struct.uio, %struct.uio* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.uio*, %struct.uio** %4, align 8
  %129 = call i32 @uiomove(i8* %126, i32 %127, %struct.uio* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  br label %134

133:                                              ; preds = %118
  br label %73

134:                                              ; preds = %132, %86, %73
  br label %135

135:                                              ; preds = %134, %71
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @bzero(%struct.vm_page*, i32) #1

declare dso_local i32 @vm_page_initfake(%struct.vm_page*, i32, i32) #1

declare dso_local i32 @vm_page_updatefake(%struct.vm_page*, i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @uiomove_fromphys(%struct.vm_page**, i32, i32, %struct.uio*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
