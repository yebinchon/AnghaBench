; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.ecore_sb_info = type { i32 }
%struct.status_block_e4 = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Status block allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnx_alloc_mem_sb(%struct.TYPE_4__* %0, %struct.ecore_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ecore_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.status_block_e4*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_dev*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.ecore_sb_info* %1, %struct.ecore_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ecore_dev* %14, %struct.ecore_dev** %12, align 8
  store i32 4, i32* %11, align 4
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.status_block_e4* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev* %15, i32* %9, i32 %16)
  store %struct.status_block_e4* %17, %struct.status_block_e4** %8, align 8
  %18 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %19 = icmp ne %struct.status_block_e4* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = call i32 @QL_DPRINT1(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %12, align 8
  %27 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %6, align 8
  %28 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @qlnx_sb_init(%struct.ecore_dev* %26, %struct.ecore_sb_info* %27, %struct.status_block_e4* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.ecore_dev*, %struct.ecore_dev** %12, align 8
  %36 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev* %35, %struct.status_block_e4* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.status_block_e4* @OSAL_DMA_ALLOC_COHERENT(%struct.ecore_dev*, i32*, i32) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @qlnx_sb_init(%struct.ecore_dev*, %struct.ecore_sb_info*, %struct.status_block_e4*, i32, i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev*, %struct.status_block_e4*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
