; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_complete_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_complete_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)* }
%struct.ib_mad_recv_wc = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ib_mad_send_wr_private = type { i32 }
%struct.ib_mad_send_wc = type { i32*, i64, i32 }
%struct.ib_rmpp_mad = type { i32 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @ib_mad_complete_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_mad_complete_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_wr_private*, align 8
  %6 = alloca %struct.ib_mad_send_wc, align 8
  %7 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %8 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %8, i32 0, i32 1
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %14, i32 0, i32 1
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %17, i32 0, i32 0
  %19 = call i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %23 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %24 = call %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private* %22, %struct.ib_mad_recv_wc* %23)
  store %struct.ib_mad_recv_wc* %24, %struct.ib_mad_recv_wc** %4, align 8
  %25 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %26 = icmp ne %struct.ib_mad_recv_wc* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %29 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %28)
  br label %137

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %33 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i64 @ib_response_mad(%struct.TYPE_11__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %126

39:                                               ; preds = %31
  %40 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %41 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %40, i32 0, i32 2
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %45 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %46 = call %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private* %44, %struct.ib_mad_recv_wc* %45)
  store %struct.ib_mad_send_wr_private* %46, %struct.ib_mad_send_wr_private** %5, align 8
  %47 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %48 = icmp ne %struct.ib_mad_send_wr_private* %47, null
  br i1 %48, label %97, label %49

49:                                               ; preds = %39
  %50 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %51 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %50, i32 0, i32 2
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %55 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %54, i32 0, i32 0
  %56 = call i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_10__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %49
  %59 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %60 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ib_is_mad_class_rmpp(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %58
  %69 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %70 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = bitcast %struct.TYPE_8__* %72 to %struct.ib_rmpp_mad*
  %74 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %73, i32 0, i32 0
  %75 = call i32 @ib_get_rmpp_flags(i32* %74)
  %76 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %68
  %80 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %81 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)** %82, align 8
  %84 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %85 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %84, i32 0, i32 0
  %86 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %87 = call i32 %83(%struct.TYPE_10__* %85, i32* null, %struct.ib_mad_recv_wc* %86)
  %88 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %89 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %88, i32 0, i32 1
  %90 = call i32 @atomic_dec(i32* %89)
  br label %96

91:                                               ; preds = %68, %58, %49
  %92 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %93 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %92)
  %94 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %95 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %94)
  br label %137

96:                                               ; preds = %79
  br label %125

97:                                               ; preds = %39
  %98 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %99 = call i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private* %98)
  %100 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %101 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %100, i32 0, i32 2
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %105 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)** %106, align 8
  %108 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %109 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %108, i32 0, i32 0
  %110 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %111 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %110, i32 0, i32 0
  %112 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %113 = call i32 %107(%struct.TYPE_10__* %109, i32* %111, %struct.ib_mad_recv_wc* %112)
  %114 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %115 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %114, i32 0, i32 1
  %116 = call i32 @atomic_dec(i32* %115)
  %117 = load i32, i32* @IB_WC_SUCCESS, align 4
  %118 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %121 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 0
  store i32* %121, i32** %122, align 8
  %123 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %124 = call i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %123, %struct.ib_mad_send_wc* %6)
  br label %125

125:                                              ; preds = %97, %96
  br label %137

126:                                              ; preds = %31
  %127 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %128 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_10__*, i32*, %struct.ib_mad_recv_wc*)** %129, align 8
  %131 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %132 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %131, i32 0, i32 0
  %133 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %134 = call i32 %130(%struct.TYPE_10__* %132, i32* null, %struct.ib_mad_recv_wc* %133)
  %135 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %136 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %135)
  br label %137

137:                                              ; preds = %27, %91, %126, %125
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_10__*) #1

declare dso_local %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i64 @ib_response_mad(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_is_mad_class_rmpp(i32) #1

declare dso_local i32 @ib_get_rmpp_flags(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
