; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_ib_umad_remove_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_ib_umad_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_device = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_umad_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_umad_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_umad_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ib_umad_device*
  store %struct.ib_umad_device* %8, %struct.ib_umad_device** %5, align 8
  %9 = load %struct.ib_umad_device*, %struct.ib_umad_device** %5, align 8
  %10 = icmp ne %struct.ib_umad_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %16 = call i32 @rdma_end_port(%struct.ib_device* %15)
  %17 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %18 = call i32 @rdma_start_port(%struct.ib_device* %17)
  %19 = sub nsw i32 %16, %18
  %20 = icmp sle i32 %14, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %25 = call i32 @rdma_start_port(%struct.ib_device* %24)
  %26 = add nsw i32 %23, %25
  %27 = call i64 @rdma_cap_ib_mad(%struct.ib_device* %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.ib_umad_device*, %struct.ib_umad_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @ib_umad_kill_port(i32* %35)
  br label %37

37:                                               ; preds = %29, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.ib_umad_device*, %struct.ib_umad_device** %5, align 8
  %43 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %42, i32 0, i32 0
  %44 = call i32 @kobject_put(i32* %43)
  br label %45

45:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_cap_ib_mad(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_umad_kill_port(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
