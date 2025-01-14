; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_free_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_free_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_buf = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_send_buf*)* @cm_free_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_free_msg(%struct.ib_mad_send_buf* %0) #0 {
  %2 = alloca %struct.ib_mad_send_buf*, align 8
  store %struct.ib_mad_send_buf* %0, %struct.ib_mad_send_buf** %2, align 8
  %3 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %2, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @ib_destroy_ah(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %2, align 8
  %14 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %2, align 8
  %21 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @cm_deref_id(i64 %24)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %2, align 8
  %28 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %27)
  ret void
}

declare dso_local i32 @ib_destroy_ah(i64) #1

declare dso_local i32 @cm_deref_id(i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
