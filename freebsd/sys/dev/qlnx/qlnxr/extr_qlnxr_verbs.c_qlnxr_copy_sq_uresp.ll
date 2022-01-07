; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_sq_uresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_sq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_create_qp_uresp = type { i64, i32 }
%struct.qlnxr_qp = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"uresp->sq_icid = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_qp*)* @qlnxr_copy_sq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_copy_sq_uresp(%struct.qlnxr_dev* %0, %struct.qlnxr_create_qp_uresp* %1, %struct.qlnxr_qp* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_create_qp_uresp*, align 8
  %6 = alloca %struct.qlnxr_qp*, align 8
  %7 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_create_qp_uresp* %1, %struct.qlnxr_create_qp_uresp** %5, align 8
  store %struct.qlnxr_qp* %2, %struct.qlnxr_qp** %6, align 8
  %8 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD, align 4
  %14 = call i32 @DB_ADDR_SHIFT(i32 %13)
  %15 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %16 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %18 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %25 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %28 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %33 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %37 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @DB_ADDR_SHIFT(i32) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
