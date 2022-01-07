; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_rq_uresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_rq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_create_qp_uresp = type { i32, i8*, i8* }
%struct.qlnxr_qp = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"enter qp->srq = %p\0A\00", align 1
@DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD = common dso_local global i32 0, align 4
@DQ_PWM_OFFSET_TCM_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"uresp->rq_db_offset = 0x%x uresp->rq_db2_offset = 0x%x\0A\00", align 1
@DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_qp*)* @qlnxr_copy_rq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_copy_rq_uresp(%struct.qlnxr_dev* %0, %struct.qlnxr_create_qp_uresp* %1, %struct.qlnxr_qp* %2) #0 {
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
  %12 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %13 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %17 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %23 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32, i32* @DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD, align 4
  %27 = call i8* @DB_ADDR_SHIFT(i32 %26)
  %28 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %29 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @DQ_PWM_OFFSET_TCM_FLAGS, align 4
  %31 = call i8* @DB_ADDR_SHIFT(i32 %30)
  %32 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %33 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %36 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %39 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %34, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %40)
  br label %47

42:                                               ; preds = %21
  %43 = load i32, i32* @DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD, align 4
  %44 = call i8* @DB_ADDR_SHIFT(i32 %43)
  %45 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %46 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %25
  %48 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %49 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_create_qp_uresp** %5, align 8
  %52 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %47, %20
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i8* @DB_ADDR_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
