; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_path_rec_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_path_rec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_path_rec = type { i32 }
%struct.ib_sa_query = type { %struct.ib_sa_client*, %struct.TYPE_6__*, i32, i32, i32*, %struct.ib_sa_port* }
%struct.TYPE_6__ = type { %struct.ib_sa_path_rec**, %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_sa_port = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_path_query = type { void (i32, %struct.ib_sa_path_rec*, i8*)*, %struct.ib_sa_query, i8* }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }

@sa_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_sa_path_rec_callback = common dso_local global i32* null, align 8
@ib_sa_path_rec_release = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_SA_ATTR_PATH_REC = common dso_local global i32 0, align 4
@path_rec_table = common dso_local global i32 0, align 4
@IB_SA_ENABLE_LOCAL_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_path_rec_get(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, %struct.ib_sa_path_rec* %3, i32 %4, i32 %5, i32 %6, void (i32, %struct.ib_sa_path_rec*, i8*)* %7, i8* %8, %struct.ib_sa_query** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_sa_client*, align 8
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ib_sa_path_rec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca void (i32, %struct.ib_sa_path_rec*, i8*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ib_sa_query**, align 8
  %22 = alloca %struct.ib_sa_path_query*, align 8
  %23 = alloca %struct.ib_sa_device*, align 8
  %24 = alloca %struct.ib_sa_port*, align 8
  %25 = alloca %struct.ib_mad_agent*, align 8
  %26 = alloca %struct.ib_sa_mad*, align 8
  %27 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %12, align 8
  store %struct.ib_device* %1, %struct.ib_device** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.ib_sa_path_rec* %3, %struct.ib_sa_path_rec** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store void (i32, %struct.ib_sa_path_rec*, i8*)* %7, void (i32, %struct.ib_sa_path_rec*, i8*)** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.ib_sa_query** %9, %struct.ib_sa_query*** %21, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %29 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %28, i32* @sa_client)
  store %struct.ib_sa_device* %29, %struct.ib_sa_device** %23, align 8
  %30 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %31 = icmp ne %struct.ib_sa_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %165

35:                                               ; preds = %10
  %36 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %37 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %36, i32 0, i32 1
  %38 = load %struct.ib_sa_port*, %struct.ib_sa_port** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %41 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %38, i64 %43
  store %struct.ib_sa_port* %44, %struct.ib_sa_port** %24, align 8
  %45 = load %struct.ib_sa_port*, %struct.ib_sa_port** %24, align 8
  %46 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %45, i32 0, i32 0
  %47 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %46, align 8
  store %struct.ib_mad_agent* %47, %struct.ib_mad_agent** %25, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call %struct.ib_sa_path_query* @kzalloc(i32 56, i32 %48)
  store %struct.ib_sa_path_query* %49, %struct.ib_sa_path_query** %22, align 8
  %50 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %51 = icmp ne %struct.ib_sa_path_query* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %165

55:                                               ; preds = %35
  %56 = load %struct.ib_sa_port*, %struct.ib_sa_port** %24, align 8
  %57 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %58 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %58, i32 0, i32 5
  store %struct.ib_sa_port* %56, %struct.ib_sa_port** %59, align 8
  %60 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %61 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %60, i32 0, i32 1
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @alloc_mad(%struct.ib_sa_query* %61, i32 %62)
  store i32 %63, i32* %27, align 4
  %64 = load i32, i32* %27, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %161

67:                                               ; preds = %55
  %68 = load %struct.ib_sa_client*, %struct.ib_sa_client** %12, align 8
  %69 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %68)
  %70 = load %struct.ib_sa_client*, %struct.ib_sa_client** %12, align 8
  %71 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %72 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %72, i32 0, i32 0
  store %struct.ib_sa_client* %70, %struct.ib_sa_client** %73, align 8
  %74 = load void (i32, %struct.ib_sa_path_rec*, i8*)*, void (i32, %struct.ib_sa_path_rec*, i8*)** %19, align 8
  %75 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %76 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %75, i32 0, i32 0
  store void (i32, %struct.ib_sa_path_rec*, i8*)* %74, void (i32, %struct.ib_sa_path_rec*, i8*)** %76, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %79 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %81 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %84, align 8
  store %struct.ib_sa_mad* %85, %struct.ib_sa_mad** %26, align 8
  %86 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %87 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %25, align 8
  %88 = call i32 @init_mad(%struct.ib_sa_mad* %86, %struct.ib_mad_agent* %87)
  %89 = load void (i32, %struct.ib_sa_path_rec*, i8*)*, void (i32, %struct.ib_sa_path_rec*, i8*)** %19, align 8
  %90 = icmp ne void (i32, %struct.ib_sa_path_rec*, i8*)* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %67
  %92 = load i32*, i32** @ib_sa_path_rec_callback, align 8
  br label %94

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32* [ %92, %91 ], [ null, %93 ]
  %96 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %97 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %97, i32 0, i32 4
  store i32* %95, i32** %98, align 8
  %99 = load i32, i32* @ib_sa_path_rec_release, align 4
  %100 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %101 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %104 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %105 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @IB_SA_ATTR_PATH_REC, align 4
  %108 = call i32 @cpu_to_be16(i32 %107)
  %109 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %110 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %114 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @path_rec_table, align 4
  %117 = load i32, i32* @path_rec_table, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %15, align 8
  %120 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %121 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ib_pack(i32 %116, i32 %118, %struct.ib_sa_path_rec* %119, i32 %122)
  %124 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %125 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %124, i32 0, i32 1
  %126 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %21, align 8
  store %struct.ib_sa_query* %125, %struct.ib_sa_query** %126, align 8
  %127 = load i32, i32* @IB_SA_ENABLE_LOCAL_SERVICE, align 4
  %128 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %129 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %15, align 8
  %134 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %135 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.ib_sa_path_rec**, %struct.ib_sa_path_rec*** %138, align 8
  %140 = getelementptr inbounds %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %139, i64 1
  store %struct.ib_sa_path_rec* %133, %struct.ib_sa_path_rec** %140, align 8
  %141 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %142 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %141, i32 0, i32 1
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @send_mad(%struct.ib_sa_query* %142, i32 %143, i32 %144)
  store i32 %145, i32* %27, align 4
  %146 = load i32, i32* %27, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %94
  br label %151

149:                                              ; preds = %94
  %150 = load i32, i32* %27, align 4
  store i32 %150, i32* %11, align 4
  br label %165

151:                                              ; preds = %148
  %152 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %21, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %152, align 8
  %153 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %154 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %154, i32 0, i32 0
  %156 = load %struct.ib_sa_client*, %struct.ib_sa_client** %155, align 8
  %157 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %156)
  %158 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %159 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %158, i32 0, i32 1
  %160 = call i32 @free_mad(%struct.ib_sa_query* %159)
  br label %161

161:                                              ; preds = %151, %66
  %162 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %163 = call i32 @kfree(%struct.ib_sa_path_query* %162)
  %164 = load i32, i32* %27, align 4
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %161, %149, %52, %32
  %166 = load i32, i32* %11, align 4
  ret i32 %166
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.ib_sa_path_query* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

declare dso_local i32 @init_mad(%struct.ib_sa_mad*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_pack(i32, i32, %struct.ib_sa_path_rec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i32, i32) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.ib_sa_path_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
