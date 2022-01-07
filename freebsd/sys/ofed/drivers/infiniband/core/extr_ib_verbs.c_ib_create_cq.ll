; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { void (%struct.ib_event*, i8*)*, i32, i8*, i32, i32*, %struct.ib_device* }
%struct.ib_event = type opaque
%struct.ib_device = type { %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)* }
%struct.ib_cq_init_attr = type opaque
%struct.ib_event.0 = type opaque
%struct.ib_cq_init_attr.1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @ib_create_cq(%struct.ib_device* %0, i32 %1, void (%struct.ib_event.0*, i8*)* %2, i8* %3, %struct.ib_cq_init_attr.1* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.ib_event.0*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ib_cq_init_attr.1*, align 8
  %11 = alloca %struct.ib_cq*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (%struct.ib_event.0*, i8*)* %2, void (%struct.ib_event.0*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.ib_cq_init_attr.1* %4, %struct.ib_cq_init_attr.1** %10, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %12, i32 0, i32 0
  %14 = load %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)*, %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)** %13, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = load %struct.ib_cq_init_attr.1*, %struct.ib_cq_init_attr.1** %10, align 8
  %17 = bitcast %struct.ib_cq_init_attr.1* %16 to %struct.ib_cq_init_attr*
  %18 = call %struct.ib_cq* %14(%struct.ib_device* %15, %struct.ib_cq_init_attr* %17, i32* null, i32* null)
  store %struct.ib_cq* %18, %struct.ib_cq** %11, align 8
  %19 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %20 = call i32 @IS_ERR(%struct.ib_cq* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %5
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %25 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %24, i32 0, i32 5
  store %struct.ib_device* %23, %struct.ib_device** %25, align 8
  %26 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %27 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %30 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load void (%struct.ib_event.0*, i8*)*, void (%struct.ib_event.0*, i8*)** %8, align 8
  %32 = bitcast void (%struct.ib_event.0*, i8*)* %31 to void (%struct.ib_event*, i8*)*
  %33 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %34 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %33, i32 0, i32 0
  store void (%struct.ib_event*, i8*)* %32, void (%struct.ib_event*, i8*)** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %37 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  %39 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %38, i32 0, i32 1
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  br label %41

41:                                               ; preds = %22, %5
  %42 = load %struct.ib_cq*, %struct.ib_cq** %11, align 8
  ret %struct.ib_cq* %42
}

declare dso_local i32 @IS_ERR(%struct.ib_cq*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
