; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_check_gsi_qp_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_check_gsi_qp_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@QLNXR_GSI_MAX_RECV_SGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"(attrs->cap.max_recv_sge > QLNXR_GSI_MAX_RECV_SGE)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLNXR_GSI_MAX_RECV_WR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"(attrs->cap.max_recv_wr > QLNXR_GSI_MAX_RECV_WR)\0A\00", align 1
@QLNXR_GSI_MAX_SEND_WR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"(attrs->cap.max_send_wr > QLNXR_GSI_MAX_SEND_WR)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.ib_qp_init_attr*)* @qlnxr_check_gsi_qp_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_check_gsi_qp_attrs(%struct.qlnxr_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %7 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @QL_DPRINT12(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QLNXR_GSI_MAX_RECV_SGE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @QL_DPRINT11(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %25 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QLNXR_GSI_MAX_RECV_WR, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %32 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @QL_DPRINT11(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %23
  %38 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QLNXR_GSI_MAX_SEND_WR, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %46 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QL_DPRINT11(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %53 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @QL_DPRINT12(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %44, %30, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @QL_DPRINT12(i32, i8*) #1

declare dso_local i32 @QL_DPRINT11(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
