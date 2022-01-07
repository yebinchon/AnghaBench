; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4
@recv_handler = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@ib_sa_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_sa_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_sa_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = call i32 @rdma_start_port(%struct.ib_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 24, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_sa_device* @kzalloc(i32 %19, i32 %20)
  store %struct.ib_sa_device* %21, %struct.ib_sa_device** %3, align 8
  %22 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %23 = icmp ne %struct.ib_sa_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %199

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %28 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %31 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %125, %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %32
  %39 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %40 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %125

53:                                               ; preds = %38
  %54 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %55 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %65 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 8
  %71 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %72 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %80 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* @IB_QPT_GSI, align 4
  %92 = load i32, i32* @send_handler, align 4
  %93 = load i32, i32* @recv_handler, align 4
  %94 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %95 = call i32 @ib_register_mad_agent(%struct.ib_device* %87, i32 %90, i32 %91, i32* null, i32 0, i32 %92, i32 %93, %struct.ib_sa_device* %94, i32 0)
  %96 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %97 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %95, i32* %102, align 4
  %103 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %104 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %53
  br label %173

114:                                              ; preds = %53
  %115 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %116 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = call i32 @INIT_WORK(i32* %121, i32 (i32*)* @update_sm_ah)
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %114, %52
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %32

128:                                              ; preds = %32
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %196

132:                                              ; preds = %128
  %133 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %134 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %135 = call i32 @ib_set_client_data(%struct.ib_device* %133, i32* @sa_client, %struct.ib_sa_device* %134)
  %136 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %137 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %136, i32 0, i32 3
  %138 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %139 = load i32, i32* @ib_sa_event, align 4
  %140 = call i32 @INIT_IB_EVENT_HANDLER(i32* %137, %struct.ib_device* %138, i32 %139)
  %141 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %142 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %141, i32 0, i32 3
  %143 = call i64 @ib_register_event_handler(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %173

146:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %149, %150
  %152 = icmp sle i32 %148, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  %154 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  %157 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %161 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = call i32 @update_sm_ah(i32* %166)
  br label %168

168:                                              ; preds = %159, %153
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %147

172:                                              ; preds = %147
  br label %199

173:                                              ; preds = %145, %113
  br label %174

174:                                              ; preds = %194, %173
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %6, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %179, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %178
  %185 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %186 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %185, i32 0, i32 2
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ib_unregister_mad_agent(i32 %192)
  br label %194

194:                                              ; preds = %184, %178
  br label %174

195:                                              ; preds = %174
  br label %196

196:                                              ; preds = %195, %131
  %197 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %198 = call i32 @kfree(%struct.ib_sa_device* %197)
  br label %199

199:                                              ; preds = %196, %172, %24
  ret void
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local %struct.ib_sa_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @rdma_cap_ib_sa(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, i32*, i32, i32, i32, %struct.ib_sa_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @update_sm_ah(i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_sa_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i64 @ib_register_event_handler(i32*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
