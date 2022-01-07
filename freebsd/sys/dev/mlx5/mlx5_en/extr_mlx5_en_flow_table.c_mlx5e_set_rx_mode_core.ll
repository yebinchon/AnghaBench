; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_set_rx_mode_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_set_rx_mode_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.ifnet*, %struct.mlx5e_eth_addr_db, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.mlx5e_eth_addr_db = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MLX5E_PROMISC = common dso_local global i32 0, align 4
@MLX5E_ALLMULTI = common dso_local global i32 0, align 4
@MLX5E_FULLMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_set_rx_mode_core(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_eth_addr_db*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 2
  store %struct.mlx5e_eth_addr_db* %16, %struct.mlx5e_eth_addr_db** %3, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 1
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %4, align 8
  %20 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 3
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %1
  %34 = phi i1 [ false, %1 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i1 [ false, %33 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %45
  %57 = phi i1 [ false, %45 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ false, %56 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i1 [ false, %67 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %81 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %77
  %89 = phi i1 [ false, %77 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %88
  %99 = phi i1 [ false, %88 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %102 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i1 [ false, %98 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %14, align 4
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %118 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %117, i32 0, i32 1
  %119 = load %struct.ifnet*, %struct.ifnet** %118, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ether_addr_copy(i32 %116, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %109
  %126 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %127 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %128 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %127, i32 0, i32 3
  %129 = load i32, i32* @MLX5E_PROMISC, align 4
  %130 = call i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv* %126, %struct.TYPE_5__* %128, i32 %129)
  %131 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %132 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %125
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %138 = call i32 @mlx5e_add_any_vid_rules(%struct.mlx5e_priv* %137)
  br label %139

139:                                              ; preds = %136, %125
  br label %140

140:                                              ; preds = %139, %109
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %145 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %146 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %145, i32 0, i32 4
  %147 = load i32, i32* @MLX5E_ALLMULTI, align 4
  %148 = call i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv* %144, %struct.TYPE_5__* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %154 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %155 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %154, i32 0, i32 5
  %156 = load i32, i32* @MLX5E_FULLMATCH, align 4
  %157 = call i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv* %153, %struct.TYPE_5__* %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %149
  %159 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %160 = call i32 @mlx5e_handle_ifp_addr(%struct.mlx5e_priv* %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %165 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %166 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %165, i32 0, i32 5
  %167 = call i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %164, %struct.TYPE_5__* %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %173 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %174 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %173, i32 0, i32 4
  %175 = call i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %172, %struct.TYPE_5__* %174)
  br label %176

176:                                              ; preds = %171, %168
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %181 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %187 = call i32 @mlx5e_del_any_vid_rules(%struct.mlx5e_priv* %186)
  br label %188

188:                                              ; preds = %185, %179
  %189 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %190 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %191 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %190, i32 0, i32 3
  %192 = call i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %189, %struct.TYPE_5__* %191)
  br label %193

193:                                              ; preds = %188, %176
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %196 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %199 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %202 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %204 = call i32 @mlx5e_vport_context_update(%struct.mlx5e_priv* %203)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mlx5e_add_any_vid_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_handle_ifp_addr(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv*, %struct.TYPE_5__*) #1

declare dso_local i32 @mlx5e_del_any_vid_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_vport_context_update(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
