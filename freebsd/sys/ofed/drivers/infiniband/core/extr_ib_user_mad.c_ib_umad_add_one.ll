; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_ib_umad_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_ib_umad_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_umad_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ib_umad_dev_ktype = common dso_local global i32 0, align 4
@umad_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_umad_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_umad_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_umad_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = call i32 @rdma_start_port(%struct.ib_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_umad_device* @kzalloc(i32 %19, i32 %20)
  store %struct.ib_umad_device* %21, %struct.ib_umad_device** %3, align 8
  %22 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %23 = icmp ne %struct.ib_umad_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %27 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %26, i32 0, i32 0
  %28 = call i32 @kobject_init(i32* %27, i32* @ib_umad_dev_ktype)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %68, %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rdma_cap_ib_mad(%struct.ib_device* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %68

40:                                               ; preds = %34
  %41 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %42 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %43 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.ib_umad_device* %41, %struct.ib_umad_device** %50, align 8
  %51 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %54 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %55 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %60
  %62 = call i64 @ib_umad_init_port(%struct.ib_device* %51, i32 %52, %struct.ib_umad_device* %53, %struct.TYPE_3__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %79

65:                                               ; preds = %40
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %39
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %30

71:                                               ; preds = %30
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %102

75:                                               ; preds = %71
  %76 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %77 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %78 = call i32 @ib_set_client_data(%struct.ib_device* %76, i32* @umad_client, %struct.ib_umad_device* %77)
  br label %106

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %91, %90, %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @rdma_cap_ib_mad(%struct.ib_device* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %80

91:                                               ; preds = %85
  %92 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %93 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %98
  %100 = call i32 @ib_umad_kill_port(%struct.TYPE_3__* %99)
  br label %80

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %74
  %103 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %104 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %103, i32 0, i32 0
  %105 = call i32 @kobject_put(i32* %104)
  br label %106

106:                                              ; preds = %102, %75, %24
  ret void
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local %struct.ib_umad_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @rdma_cap_ib_mad(%struct.ib_device*, i32) #1

declare dso_local i64 @ib_umad_init_port(%struct.ib_device*, i32, %struct.ib_umad_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_umad_device*) #1

declare dso_local i32 @ib_umad_kill_port(%struct.TYPE_3__*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
