; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_set_fragment_of_tx_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_set_fragment_of_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_tx_packet = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, %struct.ecore_ll2_tx_packet* }
%struct.TYPE_3__ = type { i64, i32, %struct.core_tx_bd* }
%struct.core_tx_bd = type { i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }

@OSAL_NULL = common dso_local global %struct.ecore_ll2_tx_packet* null, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ll2_set_fragment_of_tx_packet(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_ll2_tx_packet*, align 8
  %11 = alloca %struct.ecore_hwfn*, align 8
  %12 = alloca %struct.ecore_ll2_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.core_tx_bd*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** @OSAL_NULL, align 8
  store %struct.ecore_ll2_tx_packet* %16, %struct.ecore_ll2_tx_packet** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %18, %struct.ecore_hwfn** %11, align 8
  %19 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** @OSAL_NULL, align 8
  %20 = bitcast %struct.ecore_ll2_tx_packet* %19 to %struct.ecore_ll2_info*
  store %struct.ecore_ll2_info* %20, %struct.ecore_ll2_info** %12, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.ecore_ll2_tx_packet* @ecore_ll2_handle_sanity(%struct.ecore_hwfn* %21, i32 %22)
  %24 = bitcast %struct.ecore_ll2_tx_packet* %23 to %struct.ecore_ll2_info*
  store %struct.ecore_ll2_info* %24, %struct.ecore_ll2_info** %12, align 8
  %25 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %26 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** @OSAL_NULL, align 8
  %27 = bitcast %struct.ecore_ll2_tx_packet* %26 to %struct.ecore_ll2_info*
  %28 = icmp eq %struct.ecore_ll2_info* %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %106

31:                                               ; preds = %4
  %32 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %33 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %34, align 8
  %36 = icmp ne %struct.ecore_ll2_tx_packet* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %106

39:                                               ; preds = %31
  %40 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %42, align 8
  store %struct.ecore_ll2_tx_packet* %43, %struct.ecore_ll2_tx_packet** %10, align 8
  %44 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %45 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %50 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %106

55:                                               ; preds = %39
  %56 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %57 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load %struct.core_tx_bd*, %struct.core_tx_bd** %61, align 8
  store %struct.core_tx_bd* %62, %struct.core_tx_bd** %14, align 8
  %63 = load %struct.core_tx_bd*, %struct.core_tx_bd** %14, align 8
  %64 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @DMA_REGPAIR_LE(i32 %65, i32 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @OSAL_CPU_TO_LE16(i64 %68)
  %70 = load %struct.core_tx_bd*, %struct.core_tx_bd** %14, align 8
  %71 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %74 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %81 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %79, i64* %85, align 8
  %86 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %87 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %92 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @OSAL_SPIN_LOCK_IRQSAVE(i32* %93, i64 %94)
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %97 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %98 = bitcast %struct.ecore_ll2_info* %97 to %struct.ecore_ll2_tx_packet*
  %99 = call i32 @ecore_ll2_tx_packet_notify(%struct.ecore_hwfn* %96, %struct.ecore_ll2_tx_packet* %98)
  %100 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %12, align 8
  %101 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @OSAL_SPIN_UNLOCK_IRQSAVE(i32* %102, i64 %103)
  %105 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %55, %53, %37, %29
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.ecore_ll2_tx_packet* @ecore_ll2_handle_sanity(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i64) #1

declare dso_local i32 @OSAL_SPIN_LOCK_IRQSAVE(i32*, i64) #1

declare dso_local i32 @ecore_ll2_tx_packet_notify(%struct.ecore_hwfn*, %struct.ecore_ll2_tx_packet*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK_IRQSAVE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
