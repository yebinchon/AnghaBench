; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_enable_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ENA_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error, MSI-X is already enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"trying to enable MSI-X, vectors: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to enable MSIX, vectors %d rc %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@ENA_ADMIN_MSIX_VEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Not enough number of MSI-x allocated: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Enable only %d MSI-x (out of %d), reduce the number of queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_enable_msix(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %14 = call i64 @ENA_FLAG_ISSET(i32 %12, %struct.ena_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %120

20:                                               ; preds = %1
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ENA_MAX_MSIX_VEC(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.TYPE_3__* @malloc(i32 %28, i32 %29, i32 %32)
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 2
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load i32, i32* @ENA_DBG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ena_trace(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %61, %20
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @pci_alloc_msix(i32 %66, i32* %5)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @ENOSPC, align 4
  store i32 %78, i32* %8, align 4
  br label %111

79:                                               ; preds = %64
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ENA_ADMIN_MSIX_VEC, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pci_release_msi(i32 %91)
  %93 = load i32, i32* @ENOSPC, align 4
  store i32 %93, i32* %8, align 4
  br label %111

94:                                               ; preds = %83
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ENA_ADMIN_MSIX_VEC, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %94, %79
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %109 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %110 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %108, %struct.ena_adapter* %109)
  store i32 0, i32* %2, align 4
  br label %120

111:                                              ; preds = %87, %73
  %112 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* @M_DEVBUF, align 4
  %116 = call i32 @free(%struct.TYPE_3__* %114, i32 %115)
  %117 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %117, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %118, align 8
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %111, %104, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ENA_MAX_MSIX_VEC(i32) #1

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
