; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_srq_kernel_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_srq_kernel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_srq = type { %struct.qlnxr_dev*, %struct.qlnxr_srq_hwq_info }
%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_srq_hwq_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_srq*)* @qlnxr_free_srq_kernel_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_free_srq_kernel_params(%struct.qlnxr_srq* %0) #0 {
  %2 = alloca %struct.qlnxr_srq*, align 8
  %3 = alloca %struct.qlnxr_srq_hwq_info*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca i32*, align 8
  store %struct.qlnxr_srq* %0, %struct.qlnxr_srq** %2, align 8
  %6 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %2, align 8
  %7 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %6, i32 0, i32 1
  store %struct.qlnxr_srq_hwq_info* %7, %struct.qlnxr_srq_hwq_info** %3, align 8
  %8 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %2, align 8
  %9 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %8, i32 0, i32 0
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  store %struct.qlnxr_dev* %10, %struct.qlnxr_dev** %4, align 8
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @QL_DPRINT12(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %3, align 8
  %20 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %19, i32 0, i32 2
  %21 = call i32 @ecore_chain_free(i32 %18, i32* %20)
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 0
  %24 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %3, align 8
  %25 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %3, align 8
  %28 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qlnx_dma_free_coherent(i32* %23, i32 %26, i32 %29, i32 4)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @QL_DPRINT12(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @ecore_chain_free(i32, i32*) #1

declare dso_local i32 @qlnx_dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
