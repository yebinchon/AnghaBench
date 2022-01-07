; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_device = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cm_device = type { i32, %struct.cm_port**, i32, i64, i32, %struct.ib_device* }
%struct.cm_port = type { i32, i32, i32, i32, %struct.cm_device* }
%struct.ib_mad_reg_req = type { i32, i32, i32 }
%struct.ib_port_modify = type { i64, i64 }

@IB_CM_CLASS_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_CM = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@cm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IB_MGMT_METHOD_SEND = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@cm_send_handler = common dso_local global i32 0, align 4
@cm_recv_handler = common dso_local global i32 0, align 4
@cm_client = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @cm_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.cm_device*, align 8
  %4 = alloca %struct.cm_port*, align 8
  %5 = alloca %struct.ib_mad_reg_req, align 4
  %6 = alloca %struct.ib_port_modify, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 1
  %13 = load i32, i32* @IB_CM_CLASS_VERSION, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 2
  %15 = load i32, i32* @IB_MGMT_CLASS_CM, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  %18 = load i64, i64* @IB_PORT_CM_SUP, align 8
  store i64 %18, i64* %17, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 24, %22
  %24 = add i64 48, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.cm_device*
  store %struct.cm_device* %28, %struct.cm_device** %3, align 8
  %29 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %30 = icmp ne %struct.cm_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %205

32:                                               ; preds = %1
  %33 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %34 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %35 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %34, i32 0, i32 5
  store %struct.ib_device* %33, %struct.ib_device** %35, align 8
  %36 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %41 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %43 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 2
  %46 = call i32 @MKDEV(i32 0, i32 0)
  %47 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %48 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_create(i32* @cm_class, i32* %45, i32 %46, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %52 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %54 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %32
  %59 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %60 = call i32 @kfree(%struct.cm_device* %59)
  br label %205

61:                                               ; preds = %32
  %62 = load i32, i32* @IB_MGMT_METHOD_SEND, align 4
  %63 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_bit(i32 %62, i32 %64)
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %137, %61
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %69 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %140

72:                                               ; preds = %66
  %73 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @rdma_cap_ib_cm(%struct.ib_device* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %137

78:                                               ; preds = %72
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kzalloc(i32 24, i32 %79)
  %81 = bitcast i8* %80 to %struct.cm_port*
  store %struct.cm_port* %81, %struct.cm_port** %4, align 8
  %82 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %83 = icmp ne %struct.cm_port* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %163

85:                                               ; preds = %78
  %86 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %87 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %88 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %87, i32 0, i32 1
  %89 = load %struct.cm_port**, %struct.cm_port*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cm_port*, %struct.cm_port** %89, i64 %92
  store %struct.cm_port* %86, %struct.cm_port** %93, align 8
  %94 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %95 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %96 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %95, i32 0, i32 4
  store %struct.cm_device* %94, %struct.cm_device** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %99 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %101 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %100, i32 0, i32 3
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %104 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %103, i32 0, i32 2
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %107 = call i32 @cm_create_port_fs(%struct.cm_port* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %85
  br label %163

111:                                              ; preds = %85
  %112 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IB_QPT_GSI, align 4
  %115 = load i32, i32* @cm_send_handler, align 4
  %116 = load i32, i32* @cm_recv_handler, align 4
  %117 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %118 = call i32 @ib_register_mad_agent(%struct.ib_device* %112, i32 %113, i32 %114, %struct.ib_mad_reg_req* %5, i32 0, i32 %115, i32 %116, %struct.cm_port* %117, i32 0)
  %119 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %120 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %122 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @IS_ERR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  br label %160

127:                                              ; preds = %111
  %128 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @ib_modify_port(%struct.ib_device* %128, i32 %129, i32 0, %struct.ib_port_modify* %6)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %155

134:                                              ; preds = %127
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %77
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %66

140:                                              ; preds = %66
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  br label %198

144:                                              ; preds = %140
  %145 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %146 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %147 = call i32 @ib_set_client_data(%struct.ib_device* %145, i32* @cm_client, %struct.cm_device* %146)
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %148)
  %150 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %151 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %150, i32 0, i32 2
  %152 = call i32 @list_add_tail(i32* %151, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 1))
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %153)
  br label %205

155:                                              ; preds = %133
  %156 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %157 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ib_unregister_mad_agent(i32 %158)
  br label %160

160:                                              ; preds = %155, %126
  %161 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %162 = call i32 @cm_remove_port_fs(%struct.cm_port* %161)
  br label %163

163:                                              ; preds = %160, %110, %84
  %164 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* @IB_PORT_CM_SUP, align 8
  %166 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %177, %176, %163
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %167
  %172 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @rdma_cap_ib_cm(%struct.ib_device* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %167

177:                                              ; preds = %171
  %178 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %179 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %178, i32 0, i32 1
  %180 = load %struct.cm_port**, %struct.cm_port*** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.cm_port*, %struct.cm_port** %180, i64 %183
  %185 = load %struct.cm_port*, %struct.cm_port** %184, align 8
  store %struct.cm_port* %185, %struct.cm_port** %4, align 8
  %186 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %187 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %188 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ib_modify_port(%struct.ib_device* %186, i32 %189, i32 0, %struct.ib_port_modify* %6)
  %191 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %192 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ib_unregister_mad_agent(i32 %193)
  %195 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %196 = call i32 @cm_remove_port_fs(%struct.cm_port* %195)
  br label %167

197:                                              ; preds = %167
  br label %198

198:                                              ; preds = %197, %143
  %199 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %200 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @device_unregister(i32 %201)
  %203 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %204 = call i32 @kfree(%struct.cm_device* %203)
  br label %205

205:                                              ; preds = %198, %144, %58, %31
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @device_create(i32*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.cm_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rdma_cap_ib_cm(%struct.ib_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cm_create_port_fs(%struct.cm_port*) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, %struct.ib_mad_reg_req*, i32, i32, i32, %struct.cm_port*, i32) #1

declare dso_local i32 @ib_modify_port(%struct.ib_device*, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.cm_device*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @cm_remove_port_fs(%struct.cm_port*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
