; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_leave_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_leave_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mcmember_rec = type { i32 }
%struct.mcast_group = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_sa_mcmember_rec*, i8*)* @leave_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leave_handler(i32 %0, %struct.ib_sa_mcmember_rec* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mcast_group*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_mcmember_rec* %1, %struct.ib_sa_mcmember_rec** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.mcast_group*
  store %struct.mcast_group* %9, %struct.mcast_group** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %14 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %19 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %20 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @send_leave(%struct.mcast_group* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %26 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %33

29:                                               ; preds = %17, %12, %3
  %30 = load %struct.mcast_group*, %struct.mcast_group** %7, align 8
  %31 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %30, i32 0, i32 1
  %32 = call i32 @mcast_work_handler(i32* %31)
  br label %33

33:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @send_leave(%struct.mcast_group*, i32) #1

declare dso_local i32 @mcast_work_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
