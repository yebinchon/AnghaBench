; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwfb_softc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OFW_PCI_PHYS_HI_PREFETCHABLE = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@ofwfb_ignore_mmap_checks = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @ofwfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_mmap(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ofwfb_softc*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %15, %struct.ofwfb_softc** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %72, %5
  %17 = load i32, i32* %13, align 4
  %18 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %19 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %25 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %23, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %36 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %44 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %42, %50
  %52 = icmp slt i32 %34, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %33
  %54 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %55 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OFW_PCI_PHYS_HI_PREFETCHABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %53
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %6, align 4
  br label %107

71:                                               ; preds = %33, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %16

75:                                               ; preds = %16
  %76 = load i64, i64* @ofwfb_ignore_mmap_checks, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %6, align 4
  br label %107

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %84 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %87 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %93 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %6, align 4
  br label %107

98:                                               ; preds = %81
  %99 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %12, align 8
  %100 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %6, align 4
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %103, %91, %78, %68
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
