; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_snoop_gsi_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_snoop_gsi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_send_buf = type { %struct.ib_mad_hdr* }
%struct.ib_mad_hdr = type { i64, i32 }
%struct.ib_mad_send_wc = type { i32 }
%struct.ib_rmpp_mad = type { i32 }

@gmp = common dso_local global i32 0, align 4
@mgmt_class = common dso_local global i64 0, align 8
@attr_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Madeye:sent GMP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_send_wc*)* @snoop_gsi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snoop_gsi_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_send_wc*, align 8
  %7 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_send_wc* %2, %struct.ib_mad_send_wc** %6, align 8
  %8 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %8, i32 0, i32 0
  %10 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %9, align 8
  store %struct.ib_mad_hdr* %10, %struct.ib_mad_hdr** %7, align 8
  %11 = load i32, i32* @gmp, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @mgmt_class, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %43

20:                                               ; preds = %13, %3
  %21 = load i64, i64* @attr_id, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @be16_to_cpu(i32 %26)
  %28 = load i64, i64* @attr_id, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %43

31:                                               ; preds = %23, %20
  %32 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %34 = call i32 @print_mad_hdr(%struct.ib_mad_hdr* %33)
  %35 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %36 = call i64 @is_rmpp_mad(%struct.ib_mad_hdr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %40 = bitcast %struct.ib_mad_hdr* %39 to %struct.ib_rmpp_mad*
  %41 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %40, i32 0, i32 0
  %42 = call i32 @print_rmpp_hdr(i32* %41)
  br label %43

43:                                               ; preds = %19, %30, %38, %31
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @print_mad_hdr(%struct.ib_mad_hdr*) #1

declare dso_local i64 @is_rmpp_mad(%struct.ib_mad_hdr*) #1

declare dso_local i32 @print_rmpp_hdr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
