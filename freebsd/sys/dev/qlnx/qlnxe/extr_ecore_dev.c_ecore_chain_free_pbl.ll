; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_free_pbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_free_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_chain = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { i8*, i32 }

@ECORE_CHAIN_PAGE_SIZE = common dso_local global i64 0, align 8
@ECORE_CHAIN_PBL_ENTRY_SIZE = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_dev*, %struct.ecore_chain*)* @ecore_chain_free_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_chain_free_pbl(%struct.ecore_dev* %0, %struct.ecore_chain* %1) #0 {
  %3 = alloca %struct.ecore_dev*, align 8
  %4 = alloca %struct.ecore_chain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %3, align 8
  store %struct.ecore_chain* %1, %struct.ecore_chain** %4, align 8
  %10 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %5, align 8
  %14 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %6, align 8
  %19 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %89

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %78

29:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @ECORE_CHAIN_PAGE_SIZE, align 8
  %50 = call i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev* %42, i8* %46, i32 %48, i64 %49)
  %51 = load i64, i64* @ECORE_CHAIN_PBL_ENTRY_SIZE, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %41
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %30

57:                                               ; preds = %40, %30
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @ECORE_CHAIN_PBL_ENTRY_SIZE, align 8
  %60 = mul i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %62 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %57
  %66 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %67 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %68 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %72 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev* %66, i8* %70, i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %65, %57
  br label %78

78:                                               ; preds = %77, %28
  %79 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %80 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %81 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = call i32 @OSAL_VFREE(%struct.ecore_dev* %79, i8** %83)
  %85 = load i8**, i8*** @OSAL_NULL, align 8
  %86 = load %struct.ecore_chain*, %struct.ecore_chain** %4, align 8
  %87 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8** %85, i8*** %88, align 8
  br label %89

89:                                               ; preds = %78, %24
  ret void
}

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev*, i8*, i32, i64) #1

declare dso_local i32 @OSAL_VFREE(%struct.ecore_dev*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
