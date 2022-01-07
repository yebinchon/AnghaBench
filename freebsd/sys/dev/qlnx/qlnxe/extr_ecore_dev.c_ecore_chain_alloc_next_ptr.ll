; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc_next_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc_next_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_chain = type { i64, i8*, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate chain memory\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, %struct.ecore_chain*)* @ecore_chain_alloc_next_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_chain_alloc_next_ptr(%struct.ecore_dev* %0, %struct.ecore_chain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca %struct.ecore_chain*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store %struct.ecore_chain* %1, %struct.ecore_chain** %5, align 8
  %10 = load i8*, i8** @OSAL_NULL, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** @OSAL_NULL, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %20 = load i32, i32* @ECORE_CHAIN_PAGE_SIZE, align 4
  %21 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev* %19, i32* %8, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %26 = call i32 @DP_NOTICE(%struct.ecore_dev* %25, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %18
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ecore_chain_init_mem(%struct.ecore_chain* %32, i8* %33, i32 %34)
  %36 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %37 = call i32 @ecore_chain_reset(%struct.ecore_chain* %36)
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ecore_chain_init_next_ptr_elem(%struct.ecore_chain* %39, i8* %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %44
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %56 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ecore_chain_init_next_ptr_elem(%struct.ecore_chain* %50, i8* %51, i8* %54, i32 %57)
  %59 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev*, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*) #1

declare dso_local i32 @ecore_chain_init_mem(%struct.ecore_chain*, i8*, i32) #1

declare dso_local i32 @ecore_chain_reset(%struct.ecore_chain*) #1

declare dso_local i32 @ecore_chain_init_next_ptr_elem(%struct.ecore_chain*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
