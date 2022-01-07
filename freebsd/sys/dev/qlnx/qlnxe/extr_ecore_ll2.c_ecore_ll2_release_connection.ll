; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_release_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_release_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_info = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ll2_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ll2_release_connection(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ll2_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %8, %struct.ecore_hwfn** %5, align 8
  %9 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  store %struct.ecore_ll2_info* %9, %struct.ecore_ll2_info** %6, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ecore_ll2_info* @ecore_ll2_handle_sanity(%struct.ecore_hwfn* %10, i32 %11)
  store %struct.ecore_ll2_info* %12, %struct.ecore_ll2_info** %6, align 8
  %13 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %14 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  %15 = icmp eq %struct.ecore_ll2_info* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %19 = call i64 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ecore_int_unregister_cb(%struct.ecore_hwfn* %25, i32 %29)
  br label %31

31:                                               ; preds = %21, %17
  %32 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %33 = call i64 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ecore_int_unregister_cb(%struct.ecore_hwfn* %39, i32 %43)
  br label %45

45:                                               ; preds = %35, %31
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %50 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSAL_FREE(i32 %48, i32 %52)
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @ecore_chain_free(i32 %56, i32* %59)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OSAL_FREE(i32 %63, i32 %67)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %73 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i32 @ecore_chain_free(i32 %71, i32* %74)
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 @ecore_chain_free(i32 %78, i32* %81)
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %84 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ecore_cxt_release_cid(%struct.ecore_hwfn* %83, i32 %86)
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %89 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %90 = call i32 @ecore_ll2_release_connection_ooo(%struct.ecore_hwfn* %88, %struct.ecore_ll2_info* %89)
  %91 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %92 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %91, i32 0, i32 1
  %93 = call i32 @OSAL_MUTEX_ACQUIRE(i32* %92)
  %94 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %96, i32 0, i32 1
  %98 = call i32 @OSAL_MUTEX_RELEASE(i32* %97)
  br label %99

99:                                               ; preds = %45, %16
  ret void
}

declare dso_local %struct.ecore_ll2_info* @ecore_ll2_handle_sanity(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @ecore_int_unregister_cb(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @OSAL_FREE(i32, i32) #1

declare dso_local i32 @ecore_chain_free(i32, i32*) #1

declare dso_local i32 @ecore_cxt_release_cid(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_ll2_release_connection_ooo(%struct.ecore_hwfn*, %struct.ecore_ll2_info*) #1

declare dso_local i32 @OSAL_MUTEX_ACQUIRE(i32*) #1

declare dso_local i32 @OSAL_MUTEX_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
