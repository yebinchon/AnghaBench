; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_sq_free_used_descs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_sq_free_used_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.snd_queue = type { i32, %struct.snd_buff*, i32 }
%struct.snd_buff = type { i32*, i32 }
%struct.sq_hdr_subdesc = type { i64, i32 }

@NIC_QSET_SQ_0_7_HEAD = common dso_local global i32 0, align 4
@SQ_DESC_TYPE_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.snd_queue*, i32)* @nicvf_sq_free_used_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_sq_free_used_descs(%struct.nicvf* %0, %struct.snd_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_buff*, align 8
  %9 = alloca %struct.sq_hdr_subdesc*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %11 = call i32 @NICVF_TX_LOCK(%struct.snd_queue* %10)
  %12 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %13 = load i32, i32* @NIC_QSET_SQ_0_7_HEAD, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %12, i32 %13, i32 %14)
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %72, %35, %3
  %18 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %19 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %25 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %26 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @GET_SQ_DESC(%struct.snd_queue* %24, i32 %27)
  %29 = inttoptr i64 %28 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %29, %struct.sq_hdr_subdesc** %9, align 8
  %30 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %9, align 8
  %31 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SQ_DESC_TYPE_HEADER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %37 = call i32 @nicvf_put_sq_desc(%struct.snd_queue* %36, i32 1)
  br label %17

38:                                               ; preds = %23
  %39 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %40 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %39, i32 0, i32 1
  %41 = load %struct.snd_buff*, %struct.snd_buff** %40, align 8
  %42 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %43 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %41, i64 %45
  store %struct.snd_buff* %46, %struct.snd_buff** %8, align 8
  %47 = load %struct.snd_buff*, %struct.snd_buff** %8, align 8
  %48 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %38
  %52 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %53 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_buff*, %struct.snd_buff** %8, align 8
  %56 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bus_dmamap_unload(i32 %54, i32 %57)
  %59 = load %struct.snd_buff*, %struct.snd_buff** %8, align 8
  %60 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @m_freem(i32* %61)
  %63 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %64 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %63, i32 0, i32 1
  %65 = load %struct.snd_buff*, %struct.snd_buff** %64, align 8
  %66 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %67 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %65, i64 %69
  %71 = getelementptr inbounds %struct.snd_buff, %struct.snd_buff* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %51, %38
  %73 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %74 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %9, align 8
  %75 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = call i32 @nicvf_put_sq_desc(%struct.snd_queue* %73, i32 %77)
  br label %17

79:                                               ; preds = %17
  %80 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %81 = call i32 @NICVF_TX_UNLOCK(%struct.snd_queue* %80)
  ret void
}

declare dso_local i32 @NICVF_TX_LOCK(%struct.snd_queue*) #1

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i32) #1

declare dso_local i32 @nicvf_put_sq_desc(%struct.snd_queue*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @NICVF_TX_UNLOCK(%struct.snd_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
