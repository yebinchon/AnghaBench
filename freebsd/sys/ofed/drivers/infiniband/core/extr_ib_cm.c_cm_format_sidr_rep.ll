; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_sidr_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_sidr_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_sidr_rep_msg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_cm_sidr_rep_param = type { i64, i64, i64, i64, i32, i32, i32 }

@CM_SIDR_REP_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_sidr_rep_msg*, %struct.cm_id_private*, %struct.ib_cm_sidr_rep_param*)* @cm_format_sidr_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_rep(%struct.cm_sidr_rep_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_sidr_rep_param* %2) #0 {
  %4 = alloca %struct.cm_sidr_rep_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_sidr_rep_param*, align 8
  store %struct.cm_sidr_rep_msg* %0, %struct.cm_sidr_rep_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_sidr_rep_param* %2, %struct.ib_cm_sidr_rep_param** %6, align 8
  %7 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %8 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %7, i32 0, i32 6
  %9 = load i32, i32* @CM_SIDR_REP_ATTR_ID, align 4
  %10 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %11 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cm_format_mad_hdr(i32* %8, i32 %9, i32 %12)
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %15 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %19 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %21 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %24 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %26 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %27 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = call i32 @cm_sidr_rep_set_qpn(%struct.cm_sidr_rep_msg* %25, i32 %29)
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %32 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %36 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %38 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpu_to_be32(i32 %39)
  %41 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %42 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %44 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %3
  %48 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %49 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %54 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %57 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %60 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i32 %55, i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %52, %47, %3
  %64 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %65 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %70 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %75 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %78 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %6, align 8
  %81 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @memcpy(i32 %76, i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %73, %68, %63
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_sidr_rep_set_qpn(%struct.cm_sidr_rep_msg*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
