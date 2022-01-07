; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_fastreg_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_fastreg_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { %struct.TYPE_2__, %struct.iser_device* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.iser_device = type { i32, i32 }
%struct.fast_reg_descriptor = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to create fastreg descriptor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_create_fastreg_pool(%struct.ib_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_device*, align 8
  %7 = alloca %struct.fast_reg_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_conn* %0, %struct.ib_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %10 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %9, i32 0, i32 1
  %11 = load %struct.iser_device*, %struct.iser_device** %10, align 8
  store %struct.iser_device* %11, %struct.iser_device** %6, align 8
  %12 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %13 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %17 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %28 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.fast_reg_descriptor* @iser_create_fastreg_desc(i32 %26, i32 %29)
  store %struct.fast_reg_descriptor* %30, %struct.fast_reg_descriptor** %7, align 8
  %31 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %7, align 8
  %32 = icmp ne %struct.fast_reg_descriptor* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = call i32 @ISER_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %51

35:                                               ; preds = %23
  %36 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %7, align 8
  %37 = getelementptr inbounds %struct.fast_reg_descriptor, %struct.fast_reg_descriptor* %36, i32 0, i32 0
  %38 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %39 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %37, i32* %40)
  %42 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %43 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %19

50:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %53 = call i32 @iser_free_fastreg_pool(%struct.ib_conn* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.fast_reg_descriptor* @iser_create_fastreg_desc(i32, i32) #1

declare dso_local i32 @ISER_ERR(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iser_free_fastreg_pool(%struct.ib_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
