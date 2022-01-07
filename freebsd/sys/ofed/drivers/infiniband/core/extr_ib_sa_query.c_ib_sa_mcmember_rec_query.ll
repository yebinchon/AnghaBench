; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_mcmember_rec_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_mcmember_rec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32 }
%struct.ib_sa_query = type { %struct.ib_sa_client*, i32, i32*, %struct.TYPE_4__*, %struct.ib_sa_port* }
%struct.TYPE_4__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ib_sa_port = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_mcmember_query = type { void (i32, %struct.ib_sa_mcmember_rec*, i8*)*, %struct.ib_sa_query, i8* }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }

@sa_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_sa_mcmember_rec_callback = common dso_local global i32* null, align 8
@ib_sa_mcmember_rec_release = common dso_local global i32 0, align 4
@IB_SA_ATTR_MC_MEMBER_REC = common dso_local global i32 0, align 4
@mcmember_rec_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_mcmember_rec_query(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, i64 %3, %struct.ib_sa_mcmember_rec* %4, i32 %5, i32 %6, i32 %7, void (i32, %struct.ib_sa_mcmember_rec*, i8*)* %8, i8* %9, %struct.ib_sa_query** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_sa_client*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca void (i32, %struct.ib_sa_mcmember_rec*, i8*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.ib_sa_query**, align 8
  %24 = alloca %struct.ib_sa_mcmember_query*, align 8
  %25 = alloca %struct.ib_sa_device*, align 8
  %26 = alloca %struct.ib_sa_port*, align 8
  %27 = alloca %struct.ib_mad_agent*, align 8
  %28 = alloca %struct.ib_sa_mad*, align 8
  %29 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %13, align 8
  store %struct.ib_device* %1, %struct.ib_device** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store %struct.ib_sa_mcmember_rec* %4, %struct.ib_sa_mcmember_rec** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store void (i32, %struct.ib_sa_mcmember_rec*, i8*)* %8, void (i32, %struct.ib_sa_mcmember_rec*, i8*)** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.ib_sa_query** %10, %struct.ib_sa_query*** %23, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %31 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %30, i32* @sa_client)
  store %struct.ib_sa_device* %31, %struct.ib_sa_device** %25, align 8
  %32 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %33 = icmp ne %struct.ib_sa_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %153

37:                                               ; preds = %11
  %38 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %39 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %38, i32 0, i32 1
  %40 = load %struct.ib_sa_port*, %struct.ib_sa_port** %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.ib_sa_device*, %struct.ib_sa_device** %25, align 8
  %43 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  %46 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %40, i64 %45
  store %struct.ib_sa_port* %46, %struct.ib_sa_port** %26, align 8
  %47 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %48 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %47, i32 0, i32 0
  %49 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %48, align 8
  store %struct.ib_mad_agent* %49, %struct.ib_mad_agent** %27, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call %struct.ib_sa_mcmember_query* @kzalloc(i32 56, i32 %50)
  store %struct.ib_sa_mcmember_query* %51, %struct.ib_sa_mcmember_query** %24, align 8
  %52 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %53 = icmp ne %struct.ib_sa_mcmember_query* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %153

57:                                               ; preds = %37
  %58 = load %struct.ib_sa_port*, %struct.ib_sa_port** %26, align 8
  %59 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %60 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %60, i32 0, i32 4
  store %struct.ib_sa_port* %58, %struct.ib_sa_port** %61, align 8
  %62 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %63 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %62, i32 0, i32 1
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @alloc_mad(%struct.ib_sa_query* %63, i32 %64)
  store i32 %65, i32* %29, align 4
  %66 = load i32, i32* %29, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %149

69:                                               ; preds = %57
  %70 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %71 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %70)
  %72 = load %struct.ib_sa_client*, %struct.ib_sa_client** %13, align 8
  %73 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %74 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %74, i32 0, i32 0
  store %struct.ib_sa_client* %72, %struct.ib_sa_client** %75, align 8
  %76 = load void (i32, %struct.ib_sa_mcmember_rec*, i8*)*, void (i32, %struct.ib_sa_mcmember_rec*, i8*)** %21, align 8
  %77 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %78 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %77, i32 0, i32 0
  store void (i32, %struct.ib_sa_mcmember_rec*, i8*)* %76, void (i32, %struct.ib_sa_mcmember_rec*, i8*)** %78, align 8
  %79 = load i8*, i8** %22, align 8
  %80 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %81 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %83 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %86, align 8
  store %struct.ib_sa_mad* %87, %struct.ib_sa_mad** %28, align 8
  %88 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %89 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %27, align 8
  %90 = call i32 @init_mad(%struct.ib_sa_mad* %88, %struct.ib_mad_agent* %89)
  %91 = load void (i32, %struct.ib_sa_mcmember_rec*, i8*)*, void (i32, %struct.ib_sa_mcmember_rec*, i8*)** %21, align 8
  %92 = icmp ne void (i32, %struct.ib_sa_mcmember_rec*, i8*)* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %69
  %94 = load i32*, i32** @ib_sa_mcmember_rec_callback, align 8
  br label %96

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32* [ %94, %93 ], [ null, %95 ]
  %98 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %99 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %99, i32 0, i32 2
  store i32* %97, i32** %100, align 8
  %101 = load i32, i32* @ib_sa_mcmember_rec_release, align 4
  %102 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %103 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %107 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load i32, i32* @IB_SA_ATTR_MC_MEMBER_REC, align 4
  %110 = call i32 @cpu_to_be16(i32 %109)
  %111 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %112 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %116 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @mcmember_rec_table, align 4
  %119 = load i32, i32* @mcmember_rec_table, align 4
  %120 = call i32 @ARRAY_SIZE(i32 %119)
  %121 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %17, align 8
  %122 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %28, align 8
  %123 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ib_pack(i32 %118, i32 %120, %struct.ib_sa_mcmember_rec* %121, i32 %124)
  %126 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %127 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %126, i32 0, i32 1
  %128 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* %127, %struct.ib_sa_query** %128, align 8
  %129 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %130 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %129, i32 0, i32 1
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @send_mad(%struct.ib_sa_query* %130, i32 %131, i32 %132)
  store i32 %133, i32* %29, align 4
  %134 = load i32, i32* %29, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %96
  br label %139

137:                                              ; preds = %96
  %138 = load i32, i32* %29, align 4
  store i32 %138, i32* %12, align 4
  br label %153

139:                                              ; preds = %136
  %140 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %23, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %140, align 8
  %141 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %142 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %142, i32 0, i32 0
  %144 = load %struct.ib_sa_client*, %struct.ib_sa_client** %143, align 8
  %145 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %144)
  %146 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %147 = getelementptr inbounds %struct.ib_sa_mcmember_query, %struct.ib_sa_mcmember_query* %146, i32 0, i32 1
  %148 = call i32 @free_mad(%struct.ib_sa_query* %147)
  br label %149

149:                                              ; preds = %139, %68
  %150 = load %struct.ib_sa_mcmember_query*, %struct.ib_sa_mcmember_query** %24, align 8
  %151 = call i32 @kfree(%struct.ib_sa_mcmember_query* %150)
  %152 = load i32, i32* %29, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %149, %137, %54, %34
  %154 = load i32, i32* %12, align 4
  ret i32 %154
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.ib_sa_mcmember_query* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

declare dso_local i32 @init_mad(%struct.ib_sa_mad*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_pack(i32, i32, %struct.ib_sa_mcmember_rec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i32, i32) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.ib_sa_mcmember_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
