; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"enter (%p, %d)\0A\00", align 1
@QLNXR_ENET_STATE_BIT = common dso_local global i32 0, align 4
@QLNXR_PORT = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"exit (%p, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @qlnxr_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_notify(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qlnxr_dev*
  store %struct.qlnxr_dev* %10, %struct.qlnxr_dev** %7, align 8
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %12 = icmp eq %struct.qlnxr_dev* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %55

14:                                               ; preds = %3
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @QL_DPRINT12(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %50 [
    i32 128, label %23
    i32 130, label %35
    i32 129, label %38
  ]

23:                                               ; preds = %14
  %24 = load i32, i32* @QLNXR_ENET_STATE_BIT, align 4
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %31 = load i32, i32* @QLNXR_PORT, align 4
  %32 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %33 = call i32 @qlnxr_ib_dispatch_event(%struct.qlnxr_dev* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  br label %50

35:                                               ; preds = %14
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %37 = call i32 @qlnxr_mac_address_change(%struct.qlnxr_dev* %36)
  br label %50

38:                                               ; preds = %14
  %39 = load i32, i32* @QLNXR_ENET_STATE_BIT, align 4
  %40 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %41 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %40, i32 0, i32 0
  %42 = call i32 @test_and_set_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %46 = load i32, i32* @QLNXR_PORT, align 4
  %47 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %48 = call i32 @qlnxr_ib_dispatch_event(%struct.qlnxr_dev* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %14, %49, %35, %34
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @QL_DPRINT12(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %13
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlnxr_ib_dispatch_event(%struct.qlnxr_dev*, i32, i32) #1

declare dso_local i32 @qlnxr_mac_address_change(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
