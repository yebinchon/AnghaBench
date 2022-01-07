; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_cm_msgs.h_cm_req_set_qp_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_cm_msgs.h_cm_req_set_qp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, i32)* @cm_req_set_qp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_req_set_qp_type(%struct.cm_req_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.cm_req_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %33 [
    i32 129, label %6
    i32 128, label %16
  ]

6:                                                ; preds = %2
  %7 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %8 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @be32_to_cpu(i8* %9)
  %11 = and i32 %10, -7
  %12 = or i32 %11, 2
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %15 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %18 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @be32_to_cpu(i8* %19)
  %21 = and i32 %20, -7
  %22 = or i32 %21, 6
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %25 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %27 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 248
  %30 = or i32 %29, 1
  %31 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %32 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %35 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @be32_to_cpu(i8* %36)
  %38 = and i32 %37, -7
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %41 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %33, %16, %6
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
