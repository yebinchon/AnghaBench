; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_process_routed_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_process_routed_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i64, i64, i64, i64 }
%struct.ib_wc = type { i32, i32, i32 }

@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.ib_wc*)* @cm_process_routed_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_process_routed_req(%struct.cm_req_msg* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.cm_req_msg*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %5 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %6 = call i32 @cm_req_get_primary_subnet_local(%struct.cm_req_msg* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %10 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_be16(i32 %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %21 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %23 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cm_req_set_primary_sl(%struct.cm_req_msg* %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %8
  %28 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %29 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %40 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %44 = call i32 @cm_req_get_alt_subnet_local(%struct.cm_req_msg* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %42
  %47 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %48 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be16(i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %59 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %61 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cm_req_set_alt_sl(%struct.cm_req_msg* %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %46
  %66 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %67 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_be16(i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %78 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %65
  br label %80

80:                                               ; preds = %79, %42
  ret void
}

declare dso_local i32 @cm_req_get_primary_subnet_local(%struct.cm_req_msg*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cm_req_set_primary_sl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_get_alt_subnet_local(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_set_alt_sl(%struct.cm_req_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
