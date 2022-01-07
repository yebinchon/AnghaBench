; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_copy_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.mlx5e_copy_addr_ctx = type { i32, i32, i32 }
%struct.mlx5e_eth_addr_hash_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @mlx5e_copy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_copy_addr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_copy_addr_ctx*, align 8
  %9 = alloca %struct.mlx5e_eth_addr_hash_node*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mlx5e_copy_addr_ctx*
  store %struct.mlx5e_copy_addr_ctx* %11, %struct.mlx5e_copy_addr_ctx** %8, align 8
  %12 = load %struct.mlx5e_copy_addr_ctx*, %struct.mlx5e_copy_addr_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5e_copy_addr_ctx*, %struct.mlx5e_copy_addr_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_move_hn(i32 %14, i32 %17)
  store %struct.mlx5e_eth_addr_hash_node* %18, %struct.mlx5e_eth_addr_hash_node** %9, align 8
  %19 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %9, align 8
  %20 = icmp eq %struct.mlx5e_eth_addr_hash_node* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.mlx5e_copy_addr_ctx*, %struct.mlx5e_copy_addr_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %30 = call i32 @LLADDR(%struct.sockaddr_dl* %29)
  %31 = call i32 @ether_addr_copy(i32 %28, i32 %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.mlx5e_eth_addr_hash_node* @mlx5e_move_hn(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
