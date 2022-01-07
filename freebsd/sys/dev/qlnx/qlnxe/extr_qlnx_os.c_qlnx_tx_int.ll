; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tx_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_fastpath = type { i32, i32 }
%struct.qlnx_tx_queue = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@QL_ERR_INJCT_TX_INT_DIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [128 x i8] c"(diff = 0x%x)  tx_idx = 0x%x ecore_prod_idx = 0x%x ecore_cons_idx = 0x%x hw_bd_cons = 0x%x txq_db_last = 0x%x elem_left = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*)* @qlnx_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_tx_int(i32* %0, %struct.qlnx_fastpath* %1, %struct.qlnx_tx_queue* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qlnx_fastpath*, align 8
  %6 = alloca %struct.qlnx_tx_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %5, align 8
  store %struct.qlnx_tx_queue* %2, %struct.qlnx_tx_queue** %6, align 8
  %12 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %13 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16toh(i32 %15)
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %81, %3
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %19, i32 0, i32 2
  %21 = call i64 @ecore_chain_get_cons_idx(i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %127

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = sub nsw i64 65536, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TX_RING_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @QL_ERR_INJCT_TX_INT_DIFF, align 4
  %45 = call i64 @QL_ERR_INJECT(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %42, %38
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @QL_ERR_INJCT_TX_INT_DIFF, align 4
  %50 = call i32 @QL_RESET_ERR_INJECT(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %54 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %57 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %56, i32 0, i32 2
  %58 = call i32 @ecore_chain_get_prod_idx(i32* %57)
  %59 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %60 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %59, i32 0, i32 2
  %61 = call i64 @ecore_chain_get_cons_idx(i32* %60)
  %62 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %63 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le16toh(i32 %65)
  %67 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %68 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %72 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %71, i32 0, i32 2
  %73 = call i32 @ecore_chain_get_elem_left(i32* %72)
  %74 = call i32 @QL_DPRINT1(i32* %51, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i64 %61, i64 %66, i32 %70, i32 %73)
  %75 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %76 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @qlnx_trigger_dump(i32* %79)
  br label %81

81:                                               ; preds = %47, %42
  %82 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %83 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @TX_RING_SIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %90 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 2
  %93 = load i32, i32* @TX_RING_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  store i32 %95, i32* %11, align 4
  %96 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %97 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @prefetch(i32 %103)
  %105 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %106 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @prefetch(i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %116 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %117 = call i32 @qlnx_free_tx_pkt(i32* %114, %struct.qlnx_fastpath* %115, %struct.qlnx_tx_queue* %116)
  %118 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %119 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @TX_RING_SIZE, align 4
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %121, %123
  %125 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %126 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %17

127:                                              ; preds = %17
  ret void
}

declare dso_local i64 @le16toh(i32) #1

declare dso_local i64 @ecore_chain_get_cons_idx(i32*) #1

declare dso_local i64 @QL_ERR_INJECT(i32*, i32) #1

declare dso_local i32 @QL_RESET_ERR_INJECT(i32*, i32) #1

declare dso_local i32 @QL_DPRINT1(i32*, i8*, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @ecore_chain_get_prod_idx(i32*) #1

declare dso_local i32 @ecore_chain_get_elem_left(i32*) #1

declare dso_local i32 @qlnx_trigger_dump(i32*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @qlnx_free_tx_pkt(i32*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
