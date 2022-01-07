; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mqueue_msg = type { i32 }

@msg_link = common dso_local global i32 0, align 4
@M_MQUEUEDATA = common dso_local global i32 0, align 4
@mqueue_zone = common dso_local global i32 0, align 4
@curmq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue*)* @mqueue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqueue_free(%struct.mqueue* %0) #0 {
  %2 = alloca %struct.mqueue*, align 8
  %3 = alloca %struct.mqueue_msg*, align 8
  store %struct.mqueue* %0, %struct.mqueue** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %6 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %5, i32 0, i32 3
  %7 = call %struct.mqueue_msg* @TAILQ_FIRST(i32* %6)
  store %struct.mqueue_msg* %7, %struct.mqueue_msg** %3, align 8
  %8 = icmp ne %struct.mqueue_msg* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %11 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %10, i32 0, i32 3
  %12 = load %struct.mqueue_msg*, %struct.mqueue_msg** %3, align 8
  %13 = load i32, i32* @msg_link, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.mqueue_msg* %12, i32 %13)
  %15 = load %struct.mqueue_msg*, %struct.mqueue_msg** %3, align 8
  %16 = load i32, i32* @M_MQUEUEDATA, align 4
  %17 = call i32 @free(%struct.mqueue_msg* %15, i32 %16)
  br label %4

18:                                               ; preds = %4
  %19 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %20 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %19, i32 0, i32 2
  %21 = call i32 @mtx_destroy(i32* %20)
  %22 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %23 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %22, i32 0, i32 1
  %24 = call i32 @seldrain(%struct.TYPE_2__* %23)
  %25 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %26 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %25, i32 0, i32 0
  %27 = call i32 @seldrain(%struct.TYPE_2__* %26)
  %28 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %29 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @knlist_destroy(i32* %30)
  %32 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %33 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @knlist_destroy(i32* %34)
  %36 = load i32, i32* @mqueue_zone, align 4
  %37 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %38 = call i32 @uma_zfree(i32 %36, %struct.mqueue* %37)
  %39 = call i32 @atomic_add_int(i32* @curmq, i32 -1)
  ret void
}

declare dso_local %struct.mqueue_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mqueue_msg*, i32) #1

declare dso_local i32 @free(%struct.mqueue_msg*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.mqueue*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
