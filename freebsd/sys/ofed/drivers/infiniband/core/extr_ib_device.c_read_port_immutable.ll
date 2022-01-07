; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_read_port_immutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_read_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 (%struct.ib_device*, i32, i32*)*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @read_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_port_immutable(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call i32 @rdma_start_port(%struct.ib_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %60, %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = load i32 (%struct.ib_device*, i32, i32*)*, i32 (%struct.ib_device*, i32, i32*)** %36, align 8
  %38 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 %37(%struct.ib_device* %38, i32 %39, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %64

51:                                               ; preds = %34
  %52 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @verify_immutable(%struct.ib_device* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %30

63:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %56, %49, %25
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @verify_immutable(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
