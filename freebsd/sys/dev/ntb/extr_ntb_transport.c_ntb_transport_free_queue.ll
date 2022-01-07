; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_free_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i64, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.ntb_transport_ctx* }
%struct.ntb_transport_ctx = type { i32 }
%struct.ntb_queue_entry = type { i32 }

@M_NTB_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_transport_free_queue(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca %struct.ntb_queue_entry*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %5 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %5, i32 0, i32 13
  %7 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  store %struct.ntb_transport_ctx* %7, %struct.ntb_transport_ctx** %3, align 8
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %8, i32 0, i32 12
  %10 = call i32 @callout_drain(i32* %9)
  %11 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %15 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = shl i64 1, %16
  %18 = call i32 @ntb_db_set_mask(i32 %13, i64 %17)
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @taskqueue_drain_all(i32 %21)
  %23 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @taskqueue_free(i32 %25)
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 9
  store i32* null, i32** %28, align 8
  %29 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %29, i32 0, i32 8
  store i32* null, i32** %30, align 8
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %31, i32 0, i32 7
  store i32* null, i32** %32, align 8
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 6
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %42, %1
  %36 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %37 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %36, i32 0, i32 4
  %38 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %39 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %38, i32 0, i32 5
  %40 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %37, i32* %39)
  store %struct.ntb_queue_entry* %40, %struct.ntb_queue_entry** %4, align 8
  %41 = icmp ne %struct.ntb_queue_entry* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %44 = load i32, i32* @M_NTB_T, align 4
  %45 = call i32 @free(%struct.ntb_queue_entry* %43, i32 %44)
  br label %35

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %54, %46
  %48 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %49 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %48, i32 0, i32 4
  %50 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %51 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %50, i32 0, i32 3
  %52 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %49, i32* %51)
  store %struct.ntb_queue_entry* %52, %struct.ntb_queue_entry** %4, align 8
  %53 = icmp ne %struct.ntb_queue_entry* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %56 = load i32, i32* @M_NTB_T, align 4
  %57 = call i32 @free(%struct.ntb_queue_entry* %55, i32 %56)
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %66, %58
  %60 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %60, i32 0, i32 2
  %62 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %63 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %62, i32 0, i32 1
  %64 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %61, i32* %63)
  store %struct.ntb_queue_entry* %64, %struct.ntb_queue_entry** %4, align 8
  %65 = icmp ne %struct.ntb_queue_entry* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %68 = load i32, i32* @M_NTB_T, align 4
  %69 = call i32 @free(%struct.ntb_queue_entry* %67, i32 %68)
  br label %59

70:                                               ; preds = %59
  %71 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %72 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ntb_db_set_mask(i32, i64) #1

declare dso_local i32 @taskqueue_drain_all(i32) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @free(%struct.ntb_queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
