; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_del_eth_addr_from_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_del_eth_addr_from_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_eth_addr_info = type { i32, i32* }

@MLX5E_TT_IPV6_IPSEC_ESP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_IPSEC_ESP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6_IPSEC_AH = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_IPSEC_AH = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6_TCP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_TCP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6_UDP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_UDP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6 = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4 = common dso_local global i32 0, align 4
@MLX5E_TT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_eth_addr_info*)* @mlx5e_del_eth_addr_from_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %0, %struct.mlx5e_eth_addr_info* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_eth_addr_info*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_eth_addr_info* %1, %struct.mlx5e_eth_addr_info** %4, align 8
  %5 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MLX5E_TT_IPV6_IPSEC_ESP, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @MLX5E_TT_IPV6_IPSEC_ESP, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5_del_flow_rule(i32 %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX5E_TT_IPV4_IPSEC_ESP, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @MLX5E_TT_IPV4_IPSEC_ESP, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5_del_flow_rule(i32 %36)
  br label %38

38:                                               ; preds = %29, %21
  %39 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MLX5E_TT_IPV6_IPSEC_AH, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @MLX5E_TT_IPV6_IPSEC_AH, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx5_del_flow_rule(i32 %53)
  br label %55

55:                                               ; preds = %46, %38
  %56 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MLX5E_TT_IPV4_IPSEC_AH, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @MLX5E_TT_IPV4_IPSEC_AH, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mlx5_del_flow_rule(i32 %70)
  br label %72

72:                                               ; preds = %63, %55
  %73 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MLX5E_TT_IPV6_TCP, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @MLX5E_TT_IPV6_TCP, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mlx5_del_flow_rule(i32 %87)
  br label %89

89:                                               ; preds = %80, %72
  %90 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MLX5E_TT_IPV4_TCP, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @MLX5E_TT_IPV4_TCP, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mlx5_del_flow_rule(i32 %104)
  br label %106

106:                                              ; preds = %97, %89
  %107 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %116 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @MLX5E_TT_IPV6_UDP, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mlx5_del_flow_rule(i32 %121)
  br label %123

123:                                              ; preds = %114, %106
  %124 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %133 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @MLX5E_TT_IPV4_UDP, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @mlx5_del_flow_rule(i32 %138)
  br label %140

140:                                              ; preds = %131, %123
  %141 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %142 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %145 = shl i32 1, %144
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %150 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @MLX5E_TT_IPV6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @mlx5_del_flow_rule(i32 %155)
  br label %157

157:                                              ; preds = %148, %140
  %158 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %159 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %162 = shl i32 1, %161
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %157
  %166 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %167 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @MLX5E_TT_IPV4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mlx5_del_flow_rule(i32 %172)
  br label %174

174:                                              ; preds = %165, %157
  %175 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %176 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MLX5E_TT_ANY, align 4
  %179 = shl i32 1, %178
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %184 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @MLX5E_TT_ANY, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @mlx5_del_flow_rule(i32 %189)
  br label %191

191:                                              ; preds = %182, %174
  %192 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %4, align 8
  %193 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  ret void
}

declare dso_local i32 @mlx5_del_flow_rule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
