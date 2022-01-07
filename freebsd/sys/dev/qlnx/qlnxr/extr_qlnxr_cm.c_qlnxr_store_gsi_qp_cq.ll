; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_store_gsi_qp_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_store_gsi_qp_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, %struct.qlnxr_qp*, i8*, i8* }
%struct.qlnxr_qp = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_store_gsi_qp_cq(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %5, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %6, align 8
  %7 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %8 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @QL_DPRINT12(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @get_qlnxr_cq(i32 %15)
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @get_qlnxr_cq(i32 %21)
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %26 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %27 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %26, i32 0, i32 2
  store %struct.qlnxr_qp* %25, %struct.qlnxr_qp** %27, align 8
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @QL_DPRINT12(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32, i8*) #1

declare dso_local i8* @get_qlnxr_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
