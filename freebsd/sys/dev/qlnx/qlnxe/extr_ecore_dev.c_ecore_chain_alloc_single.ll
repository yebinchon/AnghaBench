; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_chain = type { i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate chain memory\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, %struct.ecore_chain*)* @ecore_chain_alloc_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_chain_alloc_single(%struct.ecore_dev* %0, %struct.ecore_chain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca %struct.ecore_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store %struct.ecore_chain* %1, %struct.ecore_chain** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** @OSAL_NULL, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %10 = load i32, i32* @ECORE_CHAIN_PAGE_SIZE, align 4
  %11 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev* %9, i32* %6, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %16 = call i32 @DP_NOTICE(%struct.ecore_dev* %15, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ecore_chain_init_mem(%struct.ecore_chain* %19, i8* %20, i32 %21)
  %23 = load %struct.ecore_chain*, %struct.ecore_chain** %5, align 8
  %24 = call i32 @ecore_chain_reset(%struct.ecore_chain* %23)
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev*, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*) #1

declare dso_local i32 @ecore_chain_init_mem(%struct.ecore_chain*, i8*, i32) #1

declare dso_local i32 @ecore_chain_reset(%struct.ecore_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
