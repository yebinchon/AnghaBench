; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_refill_rbdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_refill_rbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbdr = type { i32, i32*, %struct.TYPE_2__, i32, %struct.nicvf* }
%struct.TYPE_2__ = type { i32 }
%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32 }
%struct.rbdr_entry_t = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_STATUS0 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_TAIL = common dso_local global i32 0, align 4
@DMA_BUFFER_LEN = common dso_local global i32 0, align 4
@NICVF_RCV_BUF_ALIGN = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_DOOR = common dso_local global i32 0, align 4
@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbdr*, i32)* @nicvf_refill_rbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_refill_rbdr(%struct.rbdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.queue_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rbdr_entry_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rbdr* %0, %struct.rbdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %19 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %18, i32 0, i32 4
  %20 = load %struct.nicvf*, %struct.nicvf** %19, align 8
  store %struct.nicvf* %20, %struct.nicvf** %6, align 8
  %21 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %22 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %21, i32 0, i32 0
  %23 = load %struct.queue_set*, %struct.queue_set** %22, align 8
  store %struct.queue_set* %23, %struct.queue_set** %7, align 8
  %24 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %25 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %28 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %34 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 524287
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %41 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp sge i32 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %15, align 4
  br label %113

47:                                               ; preds = %32
  %48 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %49 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %56 = load i32, i32* @NIC_QSET_RBDR_0_1_TAIL, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %55, i32 %56, i32 %57)
  %59 = ashr i32 %58, 3
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %88, %54
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %67 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %74 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %81 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @DMA_BUFFER_LEN, align 4
  %85 = call i64 @nicvf_alloc_rcv_buffer(%struct.nicvf* %80, %struct.rbdr* %81, i32 %82, i32 %83, i32 %84, i32* %14)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %63
  br label %101

88:                                               ; preds = %63
  %89 = load %struct.rbdr*, %struct.rbdr** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr* %89, i32 %90)
  store %struct.rbdr_entry_t* %91, %struct.rbdr_entry_t** %12, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @NICVF_RCV_BUF_ALIGN, align 4
  %94 = ashr i32 %92, %93
  %95 = load %struct.rbdr_entry_t*, %struct.rbdr_entry_t** %12, align 8
  %96 = getelementptr inbounds %struct.rbdr_entry_t, %struct.rbdr_entry_t* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %60

101:                                              ; preds = %87, %60
  %102 = call i32 (...) @wmb()
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %109 = load i32, i32* @NIC_QSET_RBDR_0_1_DOOR, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %45
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %118 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @nicvf_enable_intr(%struct.nicvf* %117, i32 %118, i32 %119)
  store i32 0, i32* %3, align 4
  br label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @ENOMEM, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %116, %31
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i64 @nicvf_alloc_rcv_buffer(%struct.nicvf*, %struct.rbdr*, i32, i32, i32, i32*) #1

declare dso_local %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

declare dso_local i32 @nicvf_enable_intr(%struct.nicvf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
