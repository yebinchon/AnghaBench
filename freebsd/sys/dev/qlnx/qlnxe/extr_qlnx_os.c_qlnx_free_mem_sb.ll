; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.ecore_sb_info = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnx_free_mem_sb(%struct.TYPE_3__* %0, %struct.ecore_sb_info* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ecore_sb_info*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ecore_sb_info* %1, %struct.ecore_sb_info** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.ecore_dev* %7, %struct.ecore_dev** %5, align 8
  %8 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %14 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev* %13, i8* %17, i32 %20, i32 4)
  %22 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(%struct.ecore_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
