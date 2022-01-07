; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_qp_uresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_copy_qp_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i64, i32* }
%struct.qlnxr_qp = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_create_qp_uresp = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"enter qp->icid =0x%x\0A\00", align 1
@IB_ATOMIC_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_udata*)* @qlnxr_copy_qp_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_copy_qp_uresp(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlnxr_create_qp_uresp, align 4
  %9 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %11 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %15 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QL_DPRINT12(i32* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @memset(%struct.qlnxr_create_qp_uresp* %8, i32 0, i32 8)
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %20 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %21 = call i32 @qlnxr_copy_sq_uresp(%struct.qlnxr_dev* %19, %struct.qlnxr_create_qp_uresp* %8, %struct.qlnxr_qp* %20)
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %24 = call i32 @qlnxr_copy_rq_uresp(%struct.qlnxr_dev* %22, %struct.qlnxr_create_qp_uresp* %8, %struct.qlnxr_qp* %23)
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_ATOMIC_NONE, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %33 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.qlnxr_create_qp_uresp, %struct.qlnxr_create_qp_uresp* %8, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %37 = call i32 @ib_copy_to_udata(%struct.ib_udata* %36, %struct.qlnxr_create_qp_uresp* %8, i32 8)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @QL_DPRINT12(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.qlnxr_create_qp_uresp*, i32, i32) #1

declare dso_local i32 @qlnxr_copy_sq_uresp(%struct.qlnxr_dev*, %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_qp*) #1

declare dso_local i32 @qlnxr_copy_rq_uresp(%struct.qlnxr_dev*, %struct.qlnxr_create_qp_uresp*, %struct.qlnxr_qp*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.qlnxr_create_qp_uresp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
