; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_qp_user_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_qp_user_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32 }
%struct.qlnxr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"qp=%p. sq_addr=0x%llx, sq_len=%zd, rq_addr=0x%llx, rq_len=%zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_qp*)* @qlnxr_qp_user_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_qp_user_print(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1) #0 {
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca %struct.qlnxr_qp*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %4, align 8
  %5 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %9 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %10 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %14 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %18 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @QL_DPRINT12(i32 %7, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %8, i32 %12, i32 %16, i32 %20, i32 %24)
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32, i8*, %struct.qlnxr_qp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
