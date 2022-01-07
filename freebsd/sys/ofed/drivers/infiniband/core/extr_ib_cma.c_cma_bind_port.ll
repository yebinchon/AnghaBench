; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_bind_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_bind_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_bind_list = type { i32, i32 }
%struct.rdma_id_private = type { i32, %struct.rdma_bind_list* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ib = type { i8*, i8* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_bind_list*, %struct.rdma_id_private*)* @cma_bind_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_bind_port(%struct.rdma_bind_list* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca %struct.rdma_bind_list*, align 8
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_ib*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.rdma_bind_list* %0, %struct.rdma_bind_list** %3, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %4, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %11 = call %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private* %10)
  store %struct.sockaddr* %11, %struct.sockaddr** %5, align 8
  %12 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @htons(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %53 [
    i32 129, label %19
    i32 128, label %24
    i32 130, label %29
  ]

19:                                               ; preds = %2
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  br label %53

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in6*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %31, %struct.sockaddr_ib** %6, align 8
  %32 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @be64_to_cpu(i8* %34)
  store i64 %35, i64* %7, align 8
  %36 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @be64_to_cpu(i8* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = and i64 %40, %41
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @ntohs(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = or i64 %42, %45
  %47 = call i8* @cpu_to_be64(i64 %46)
  %48 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %49 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i8* @cpu_to_be64(i64 -1)
  %51 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %52 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %2, %29, %24, %19
  %54 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %55, i32 0, i32 1
  store %struct.rdma_bind_list* %54, %struct.rdma_bind_list** %56, align 8
  %57 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %57, i32 0, i32 0
  %59 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %60 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %59, i32 0, i32 0
  %61 = call i32 @hlist_add_head(i32* %58, i32* %60)
  ret void
}

declare dso_local %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
