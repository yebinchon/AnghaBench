; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_get_hw_access_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_get_hw_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MTHCA_QP_BIT_RRE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@MTHCA_QP_BIT_RAE = common dso_local global i32 0, align 4
@MTHCA_QP_BIT_RWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_qp*, %struct.ib_qp_attr*, i32)* @get_hw_access_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hw_access_flags(%struct.mthca_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_qp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mthca_qp* %0, %struct.mthca_qp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %20 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @MTHCA_QP_BIT_RRE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @MTHCA_QP_BIT_RAE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @MTHCA_QP_BIT_RWE, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @cpu_to_be32(i32 %70)
  ret i32 %71
}

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
