; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_eth_link_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_eth_link_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__*, %struct.mlx4_ib_iboe }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.mlx4_ib_iboe = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_SPEED_QDR = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_IP_BASED_GIDS = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i8* null, align 8
@IB_MTU_256 = common dso_local global i8* null, align 8
@IB_PORT_ACTIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*, i32)* @eth_link_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_link_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_ib_iboe*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %10, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 1
  store %struct.mlx4_ib_iboe* %20, %struct.mlx4_ib_iboe** %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @mlx4_is_bonded(%struct.TYPE_7__* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_7__* %27)
  store %struct.mlx4_cmd_mailbox* %28, %struct.mlx4_cmd_mailbox** %14, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %30 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %34 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %33)
  store i32 %34, i32* %5, align 4
  br label %185

35:                                               ; preds = %4
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %44 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %45 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %46 = call i32 @mlx4_cmd_box(%struct.TYPE_7__* %38, i32 0, i32 %41, i32 %42, i32 0, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %178

50:                                               ; preds = %35
  %51 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %52 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 64
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @IB_WIDTH_4X, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @IB_WIDTH_1X, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IB_SPEED_QDR, align 4
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %70 = load i32, i32* @IB_PORT_IP_BASED_GIDS, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %95 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* @IB_MTU_4096, align 4
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %100 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %99, i32 0, i32 2
  store i32 2, i32* %100, align 8
  %101 = load i8*, i8** @IB_PORT_DOWN, align 8
  %102 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %103 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %105 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @state_to_phys_state(i8* %106)
  %108 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %109 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @IB_MTU_256, align 8
  %111 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %112 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %113, i32 0, i32 0
  %115 = call i32 @spin_lock_bh(i32* %114)
  %116 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %116, i32 0, i32 1
  %118 = load %struct.net_device**, %struct.net_device*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.net_device*, %struct.net_device** %118, i64 %121
  %123 = load %struct.net_device*, %struct.net_device** %122, align 8
  store %struct.net_device* %123, %struct.net_device** %12, align 8
  %124 = load %struct.net_device*, %struct.net_device** %12, align 8
  %125 = icmp ne %struct.net_device* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %62
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %126, %62
  %131 = load %struct.net_device*, %struct.net_device** %12, align 8
  %132 = icmp ne %struct.net_device* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  br label %174

134:                                              ; preds = %130
  %135 = load %struct.net_device*, %struct.net_device** %12, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @iboe_get_mtu(i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %143 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i8* @min(i32 %144, i32 %145)
  br label %149

147:                                              ; preds = %134
  %148 = load i8*, i8** @IB_MTU_256, align 8
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi i8* [ %146, %141 ], [ %148, %147 ]
  %151 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %152 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.net_device*, %struct.net_device** %12, align 8
  %154 = call i64 @netif_running(%struct.net_device* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.net_device*, %struct.net_device** %12, align 8
  %158 = call i64 @netif_carrier_ok(%struct.net_device* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  br label %164

162:                                              ; preds = %156, %149
  %163 = load i8*, i8** @IB_PORT_DOWN, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i8* [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %167 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %169 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @state_to_phys_state(i8* %170)
  %172 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %173 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %164, %133
  %175 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %176 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock_bh(i32* %176)
  br label %178

178:                                              ; preds = %174, %49
  %179 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %183 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_7__* %181, %struct.mlx4_cmd_mailbox* %182)
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %178, %32
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_is_bonded(%struct.TYPE_7__*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @state_to_phys_state(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_7__*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
