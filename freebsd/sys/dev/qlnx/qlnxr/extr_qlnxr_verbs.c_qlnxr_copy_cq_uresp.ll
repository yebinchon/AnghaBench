; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_cq_uresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_cq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_create_cq_uresp = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ib_copy_to_udata error cqid=0x%x[%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_cq*, %struct.ib_udata*)* @qlnxr_copy_cq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_copy_cq_uresp(%struct.qlnxr_dev* %0, %struct.qlnxr_cq* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_cq*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.qlnxr_create_cq_uresp, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_cq* %1, %struct.qlnxr_cq** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %11 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @memset(%struct.qlnxr_create_cq_uresp* %7, i32 0, i32 8)
  %16 = load i32, i32* @DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT, align 4
  %17 = call i32 @DB_ADDR_SHIFT(i32 %16)
  %18 = getelementptr inbounds %struct.qlnxr_create_cq_uresp, %struct.qlnxr_create_cq_uresp* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %5, align 8
  %20 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.qlnxr_create_cq_uresp, %struct.qlnxr_create_cq_uresp* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %24 = call i32 @ib_copy_to_udata(%struct.ib_udata* %23, %struct.qlnxr_create_cq_uresp* %7, i32 8)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %5, align 8
  %30 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %3
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.qlnxr_create_cq_uresp*, i32, i32) #1

declare dso_local i32 @DB_ADDR_SHIFT(i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.qlnxr_create_cq_uresp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
