; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_sync_ifp_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_sync_ifp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__, i32, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ifnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5e_copy_addr_ctx = type { i32, %struct.mlx5e_eth_addr_hash_head*, %struct.mlx5e_eth_addr_hash_head* }
%struct.mlx5e_eth_addr_hash_head = type { i32 }
%struct.mlx5e_eth_addr_hash_node = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_dl = type { i32 }

@M_MLX5EN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MLX5E_ACTION_ADD = common dso_local global i32 0, align 4
@hlist = common dso_local global i32 0, align 4
@mlx5e_copy_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_sync_ifp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_sync_ifp_addr(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_copy_addr_ctx, align 8
  %4 = alloca %struct.mlx5e_eth_addr_hash_head, align 4
  %5 = alloca %struct.mlx5e_eth_addr_hash_head, align 4
  %6 = alloca %struct.mlx5e_eth_addr_hash_head, align 4
  %7 = alloca %struct.mlx5e_eth_addr_hash_node*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %8, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = call i32 @PRIV_ASSERT_LOCKED(%struct.mlx5e_priv* %14)
  br label %16

16:                                               ; preds = %158, %1
  %17 = call i32 @LIST_INIT(%struct.mlx5e_eth_addr_hash_head* %4)
  %18 = call i32 @LIST_INIT(%struct.mlx5e_eth_addr_hash_head* %5)
  %19 = call i32 @LIST_INIT(%struct.mlx5e_eth_addr_hash_head* %6)
  %20 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %21 = call i32 @if_lladdr_count(%struct.ifnet* %20)
  %22 = add nsw i32 1, %21
  %23 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %24 = call i32 @if_llmaddr_count(%struct.ifnet* %23)
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %45, %16
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32, i32* @M_MLX5EN, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.mlx5e_eth_addr_hash_node* @malloc(i32 12, i32 %32, i32 %35)
  store %struct.mlx5e_eth_addr_hash_node* %36, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %37 = load i32, i32* @MLX5E_ACTION_ADD, align 4
  %38 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  %42 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %43 = load i32, i32* @hlist, align 4
  %44 = call i32 @LIST_INSERT_HEAD(%struct.mlx5e_eth_addr_hash_head* %4, %struct.mlx5e_eth_addr_hash_node* %42, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %27

48:                                               ; preds = %27
  %49 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_move_hn(%struct.mlx5e_eth_addr_hash_head* %4, %struct.mlx5e_eth_addr_hash_head* %5)
  store %struct.mlx5e_eth_addr_hash_node* %49, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %50 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %51 = icmp ne %struct.mlx5e_eth_addr_hash_node* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @MPASS(i32 %52)
  %54 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.sockaddr_dl*
  %64 = call i32 @LLADDR(%struct.sockaddr_dl* %63)
  %65 = call i32 @ether_addr_copy(i32 %57, i32 %64)
  %66 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 2
  store %struct.mlx5e_eth_addr_hash_head* %4, %struct.mlx5e_eth_addr_hash_head** %66, align 8
  %67 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 1
  store %struct.mlx5e_eth_addr_hash_head* %5, %struct.mlx5e_eth_addr_hash_head** %67, align 8
  %68 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %70 = load i32, i32* @mlx5e_copy_addr, align 4
  %71 = call i32 @if_foreach_lladdr(%struct.ifnet* %69, i32 %70, %struct.mlx5e_copy_addr_ctx* %3)
  %72 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %48
  br label %130

76:                                               ; preds = %48
  %77 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 1
  store %struct.mlx5e_eth_addr_hash_head* %6, %struct.mlx5e_eth_addr_hash_head** %77, align 8
  %78 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %79 = load i32, i32* @mlx5e_copy_addr, align 4
  %80 = call i32 @if_foreach_llmaddr(%struct.ifnet* %78, i32 %79, %struct.mlx5e_copy_addr_ctx* %3)
  %81 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %130

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %114, %97, %85
  %87 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head* %5)
  store %struct.mlx5e_eth_addr_hash_node* %87, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %88 = icmp ne %struct.mlx5e_eth_addr_hash_node* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %91 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %95 = call i64 @mlx5e_add_eth_addr_to_hash(i32 %93, %struct.mlx5e_eth_addr_hash_node* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %86

98:                                               ; preds = %89
  %99 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %100 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %105 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %108 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %107, i32 0, i32 0
  %109 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %110 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mlx5_mpfs_add_mac(i32 %106, i32* %108, i32 %112)
  br label %114

114:                                              ; preds = %103, %98
  br label %86

115:                                              ; preds = %86
  br label %116

116:                                              ; preds = %128, %127, %115
  %117 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head* %6)
  store %struct.mlx5e_eth_addr_hash_node* %117, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %118 = icmp ne %struct.mlx5e_eth_addr_hash_node* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %121 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %125 = call i64 @mlx5e_add_eth_addr_to_hash(i32 %123, %struct.mlx5e_eth_addr_hash_node* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %116

128:                                              ; preds = %119
  br label %116

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %84, %75
  br label %131

131:                                              ; preds = %134, %130
  %132 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head* %5)
  store %struct.mlx5e_eth_addr_hash_node* %132, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %133 = icmp ne %struct.mlx5e_eth_addr_hash_node* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %136 = load i32, i32* @M_MLX5EN, align 4
  %137 = call i32 @free(%struct.mlx5e_eth_addr_hash_node* %135, i32 %136)
  br label %131

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %142, %138
  %140 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head* %6)
  store %struct.mlx5e_eth_addr_hash_node* %140, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %141 = icmp ne %struct.mlx5e_eth_addr_hash_node* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %144 = load i32, i32* @M_MLX5EN, align 4
  %145 = call i32 @free(%struct.mlx5e_eth_addr_hash_node* %143, i32 %144)
  br label %139

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %150, %146
  %148 = call %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head* %4)
  store %struct.mlx5e_eth_addr_hash_node* %148, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %149 = icmp ne %struct.mlx5e_eth_addr_hash_node* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %7, align 8
  %152 = load i32, i32* @M_MLX5EN, align 4
  %153 = call i32 @free(%struct.mlx5e_eth_addr_hash_node* %151, i32 %152)
  br label %147

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.mlx5e_copy_addr_ctx, %struct.mlx5e_copy_addr_ctx* %3, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %16

159:                                              ; preds = %154
  ret void
}

declare dso_local i32 @PRIV_ASSERT_LOCKED(%struct.mlx5e_priv*) #1

declare dso_local i32 @LIST_INIT(%struct.mlx5e_eth_addr_hash_head*) #1

declare dso_local i32 @if_lladdr_count(%struct.ifnet*) #1

declare dso_local i32 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local %struct.mlx5e_eth_addr_hash_node* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.mlx5e_eth_addr_hash_head*, %struct.mlx5e_eth_addr_hash_node*, i32) #1

declare dso_local %struct.mlx5e_eth_addr_hash_node* @mlx5e_move_hn(%struct.mlx5e_eth_addr_hash_head*, %struct.mlx5e_eth_addr_hash_head*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @if_foreach_lladdr(%struct.ifnet*, i32, %struct.mlx5e_copy_addr_ctx*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.mlx5e_copy_addr_ctx*) #1

declare dso_local %struct.mlx5e_eth_addr_hash_node* @mlx5e_remove_hn(%struct.mlx5e_eth_addr_hash_head*) #1

declare dso_local i64 @mlx5e_add_eth_addr_to_hash(i32, %struct.mlx5e_eth_addr_hash_node*) #1

declare dso_local i32 @mlx5_mpfs_add_mac(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.mlx5e_eth_addr_hash_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
