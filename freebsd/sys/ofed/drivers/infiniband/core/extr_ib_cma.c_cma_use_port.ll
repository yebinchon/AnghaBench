; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_use_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_use_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_bind_list = type { i32 }

@IPPORT_RESERVED = common dso_local global i16 0, align 2
@curthread = common dso_local global i32 0, align 4
@PRIV_NETINET_BINDANY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rdma_id_private*)* @cma_use_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_use_port(i32 %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.rdma_bind_list*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %10 = call i32 @cma_src_addr(%struct.rdma_id_private* %9)
  %11 = call i32 @cma_port(i32 %10)
  %12 = call zeroext i16 @ntohs(i32 %11)
  store i16 %12, i16* %7, align 2
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @IPPORT_RESERVED, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @curthread, align 4
  %20 = load i32, i32* @PRIV_NETINET_BINDANY, align 4
  %21 = call i64 @priv_check(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %18, %2
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i16, i16* %7, align 2
  %36 = call %struct.rdma_bind_list* @cma_ps_find(i32 %33, i32 %34, i16 zeroext %35)
  store %struct.rdma_bind_list* %36, %struct.rdma_bind_list** %6, align 8
  %37 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %38 = icmp ne %struct.rdma_bind_list* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %42 = load i16, i16* %7, align 2
  %43 = call i32 @cma_alloc_port(i32 %40, %struct.rdma_id_private* %41, i16 zeroext %42)
  store i32 %43, i32* %8, align 4
  br label %58

44:                                               ; preds = %26
  %45 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cma_check_port(%struct.rdma_bind_list* %45, %struct.rdma_id_private* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %56 = call i32 @cma_bind_port(%struct.rdma_bind_list* %54, %struct.rdma_id_private* %55)
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @cma_port(i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @priv_check(i32, i32) #1

declare dso_local %struct.rdma_bind_list* @cma_ps_find(i32, i32, i16 zeroext) #1

declare dso_local i32 @cma_alloc_port(i32, %struct.rdma_id_private*, i16 zeroext) #1

declare dso_local i32 @cma_check_port(%struct.rdma_bind_list*, %struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_bind_port(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
