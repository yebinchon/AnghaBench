; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_av.c_mthca_init_av_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_av.c_mthca_init_av_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"mthca_av\00", align 1
@MTHCA_AV_SIZE = common dso_local global i32 0, align 4
@MTHCA_FLAG_DDR_HIDDEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_init_av_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = call i64 @mthca_is_memfree(%struct.mthca_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

9:                                                ; preds = %1
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @mthca_alloc_init(i32* %12, i32 %16, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %9
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MTHCA_AV_SIZE, align 4
  %32 = load i32, i32* @MTHCA_AV_SIZE, align 4
  %33 = call i32 @pci_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %92

43:                                               ; preds = %27
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MTHCA_FLAG_DDR_HIDDEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %43
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @pci_resource_start(i32 %53, i32 4)
  %55 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %54, %58
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MTHCA_AV_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i32* @ioremap(i64 %63, i32 %69)
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32* %70, i32** %73, align 8
  %74 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %50
  br label %86

80:                                               ; preds = %50
  br label %85

81:                                               ; preds = %43
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %81, %80
  store i32 0, i32* %2, align 4
  br label %99

86:                                               ; preds = %79
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pci_pool_destroy(i32 %90)
  br label %92

92:                                               ; preds = %86, %42
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @mthca_alloc_cleanup(i32* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %85, %25, %8
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_alloc_init(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_pool_destroy(i32) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
