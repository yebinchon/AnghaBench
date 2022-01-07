; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_mra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_mra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_mra_msg = type { i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CM_MRA_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i64, i8*, i64)* @cm_format_mra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_mra(%struct.cm_mra_msg* %0, %struct.cm_id_private* %1, i32 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.cm_mra_msg*, align 8
  %8 = alloca %struct.cm_id_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.cm_mra_msg* %0, %struct.cm_mra_msg** %7, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %14 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %13, i32 0, i32 3
  %15 = load i32, i32* @CM_MRA_ATTR_ID, align 4
  %16 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %17 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cm_format_mad_hdr(i32* %14, i32 %15, i32 %18)
  %20 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @cm_mra_set_msg_mraed(%struct.cm_mra_msg* %20, i32 %21)
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %24 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %28 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %34 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @cm_mra_set_service_timeout(%struct.cm_mra_msg* %35, i64 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %6
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %7, align 8
  %45 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i32 %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %43, %40, %6
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_mra_set_msg_mraed(%struct.cm_mra_msg*, i32) #1

declare dso_local i32 @cm_mra_set_service_timeout(%struct.cm_mra_msg*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
