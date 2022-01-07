; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_get_fragment_of_tx_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_get_fragment_of_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.ecore_ll2_tx_packet }
%struct.ecore_ll2_tx_packet = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_hwfn = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ll2_info* null, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ll2_get_fragment_of_tx_packet(%struct.ecore_hwfn* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ecore_ll2_tx_packet*, align 8
  %11 = alloca %struct.ecore_ll2_info*, align 8
  %12 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ecore_ll2_info* @ecore_ll2_handle_sanity(%struct.ecore_hwfn* %13, i32 %14)
  store %struct.ecore_ll2_info* %15, %struct.ecore_ll2_info** %11, align 8
  %16 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %17 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  %18 = icmp eq %struct.ecore_ll2_info* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %75

21:                                               ; preds = %4
  %22 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %23 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store %struct.ecore_ll2_tx_packet* %24, %struct.ecore_ll2_tx_packet** %10, align 8
  %25 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %26 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %75

35:                                               ; preds = %30
  %36 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %37 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %75

46:                                               ; preds = %35
  %47 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %48 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %52 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %53 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %10, align 8
  %64 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %11, align 8
  %67 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  %71 = zext i1 %70 to i32
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %46
  %74 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %44, %33, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.ecore_ll2_info* @ecore_ll2_handle_sanity(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
