; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.qlnxr_cq = type { i64, i32, i32, i64, i32, i64 }
%struct.qlnxr_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"enter ibcq = %p flags = 0x%x cp = %p cons = 0x%x cq_type = 0x%x\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cq was already destroyed cq = %p icid=%d\0A\00", align 1
@QLNXR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@DQ_UCM_ROCE_CQ_ARM_CF_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"exit ibcq = %p flags = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnxr_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %11 = call %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq* %10)
  store %struct.qlnxr_cq* %11, %struct.qlnxr_cq** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %14)
  store %struct.qlnxr_dev* %15, %struct.qlnxr_dev** %8, align 8
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %23 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %24 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %27 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.TYPE_6__*, i8*, %struct.ib_cq*, i32, ...) @QL_DPRINT12(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.ib_cq* %20, i32 %21, %struct.qlnxr_cq* %22, i64 %25, i64 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %109

41:                                               ; preds = %2
  %42 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %43 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %49 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %50 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @QL_DPRINT11(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.qlnxr_cq* %48, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %109

55:                                               ; preds = %41
  %56 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %57 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QLNXR_CQ_TYPE_GSI, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %109

62:                                               ; preds = %55
  %63 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %64 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %63, i32 0, i32 1
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %68 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load i32, i32* @DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD, align 4
  %75 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %76 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %62
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @DQ_UCM_ROCE_CQ_ARM_CF_CMD, align 4
  %86 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %87 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %92 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %93 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %94 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %98 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @doorbell_cq(%struct.qlnxr_dev* %91, %struct.qlnxr_cq* %92, i64 %96, i32 %99)
  %101 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %102 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %101, i32 0, i32 1
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (%struct.TYPE_6__*, i8*, %struct.ib_cq*, i32, ...) @QL_DPRINT12(%struct.TYPE_6__* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.ib_cq* %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %90, %61, %46, %38
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_6__*, i8*, %struct.ib_cq*, i32, ...) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_6__*, i8*, %struct.qlnxr_cq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @doorbell_cq(%struct.qlnxr_dev*, %struct.qlnxr_cq*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
