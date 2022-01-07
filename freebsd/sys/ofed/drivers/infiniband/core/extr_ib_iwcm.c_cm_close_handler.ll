; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_cm_close_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_cm_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i32, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, %struct.TYPE_5__* }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.iw_cm_event.0 = type { i32 }

@IW_CM_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_close_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %8 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %12 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %17 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %25 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 %23(i32* %26)
  %28 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %29 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %15, %2
  %31 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %32 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %56 [
    i32 128, label %34
    i32 130, label %34
    i32 129, label %55
  ]

34:                                               ; preds = %30, %30
  %35 = load i32, i32* @IW_CM_STATE_IDLE, align 4
  %36 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %37 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %39 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %43 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %44, align 8
  %46 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %47 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %46, i32 0, i32 2
  %48 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %49 = bitcast %struct.iw_cm_event.0* %48 to %struct.iw_cm_event*
  %50 = call i32 %45(%struct.TYPE_6__* %47, %struct.iw_cm_event* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %52 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  br label %58

55:                                               ; preds = %30
  br label %58

56:                                               ; preds = %30
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %56, %55, %34
  %59 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %60 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %59, i32 0, i32 1
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
