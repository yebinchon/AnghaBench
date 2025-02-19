; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_set_default_moderation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_set_default_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sdp_mod_count = common dso_local global i64 0, align 8
@sdp_mod_usec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_set_default_moderation(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load i64, i64* @sdp_mod_count, align 8
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @sdp_mod_usec, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  br label %17

9:                                                ; preds = %5
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %11 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @sdp_mod_count, align 8
  %15 = load i64, i64* @sdp_mod_usec, align 8
  %16 = call i32 @ib_modify_cq(i32 %13, i64 %14, i64 %15)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ib_modify_cq(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
