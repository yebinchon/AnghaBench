; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_ephemeral_port_hdr_manipulation.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_ephemeral_port_hdr_manipulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"vale:eph0\00", align 1
@NR_REG_ALL_NIC = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @vale_ephemeral_port_hdr_manipulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vale_ephemeral_port_hdr_manipulation(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strncpy(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %9 = load i32, i32* @NR_REG_ALL_NIC, align 4
  %10 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = call i32 @port_register(%struct.TestContext* %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load i64, i64* @VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS, align 8
  %19 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %20 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %22 = call i32 @port_hdr_set_and_get(%struct.TestContext* %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %28 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %30 = call i32 @port_hdr_set_and_get(%struct.TestContext* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load i64, i64* @VIRTIO_NET_HDR_LEN, align 8
  %36 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %37 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %39 = call i32 @port_hdr_set_and_get(%struct.TestContext* %38)
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %32, %24, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @port_register(%struct.TestContext*) #1

declare dso_local i32 @port_hdr_set_and_get(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
