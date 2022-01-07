; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_sa_classport_info_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_sa_classport_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_class_port_info = type { i32 }
%struct.class_port_info_context = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"RDMA CM: %s port %u failed query ClassPortInfo status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_class_port_info*, i8*)* @cma_query_sa_classport_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_query_sa_classport_info_cb(i32 %0, %struct.ib_class_port_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_class_port_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.class_port_info_context*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_class_port_info* %1, %struct.ib_class_port_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.class_port_info_context*
  store %struct.class_port_info_context* %9, %struct.class_port_info_context** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %19 = icmp ne %struct.ib_class_port_info* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.class_port_info_context*, %struct.class_port_info_context** %7, align 8
  %22 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.class_port_info_context*, %struct.class_port_info_context** %7, align 8
  %27 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %29)
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.class_port_info_context*, %struct.class_port_info_context** %7, align 8
  %33 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %36 = call i32 @memcpy(i32 %34, %struct.ib_class_port_info* %35, i32 4)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.class_port_info_context*, %struct.class_port_info_context** %7, align 8
  %39 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %38, i32 0, i32 0
  %40 = call i32 @complete(i32* %39)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ib_class_port_info*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
