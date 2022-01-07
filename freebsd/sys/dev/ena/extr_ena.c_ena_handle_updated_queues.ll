; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_handle_updated_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_handle_updated_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.ena_com_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_dev_get_features_ctx = type { i32 }
%struct.ena_calc_queue_size_ctx = type { i64, i64, i32, i32, i32, %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"Not enough resources to allocate requested queue sizes (TX,RX)=(%d,%d), falling back to queue sizes (TX,RX)=(%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Not enough resources to allocate %d queues, falling back to %d queues\0A\00", align 1
@ENA_FLAG_RSS_ACTIVE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot init RSS rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*)* @ena_handle_updated_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_handle_updated_queues(%struct.ena_adapter* %0, %struct.ena_com_dev_get_features_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca %struct.ena_calc_queue_size_ctx, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_com_dev_get_features_ctx* %1, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 8
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %13, align 8
  store %struct.ena_com_dev* %14, %struct.ena_com_dev** %6, align 8
  %15 = bitcast %struct.ena_calc_queue_size_ctx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 56, i1 false)
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %20 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 6
  store %struct.ena_com_dev* %19, %struct.ena_com_dev** %20, align 8
  %21 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 5
  store %struct.ena_com_dev_get_features_ctx* %21, %struct.ena_com_dev_get_features_ctx** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %26 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %27 = call i32 @ena_calc_io_queue_num(%struct.ena_adapter* %25, %struct.ena_com_dev_get_features_ctx* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %29 = call i32 @ena_calc_queue_size(%struct.ena_adapter* %28, %struct.ena_calc_queue_size_ctx* %7)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 0
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi i1 [ true, %2 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EFAULT, align 4
  store i32 %41, i32* %3, align 4
  br label %156

42:                                               ; preds = %35
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %63, %65
  br label %67

67:                                               ; preds = %60, %53
  %68 = phi i1 [ true, %53 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %80, i64 %82, i64 %84)
  %86 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.ena_calc_queue_size_ctx, %struct.ena_calc_queue_size_ctx* %7, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %72, %67
  %103 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %146

111:                                              ; preds = %102
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %122 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %123 = call i64 @ENA_FLAG_ISSET(i32 %121, %struct.ena_adapter* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %111
  %126 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %127 = call i32 @ena_com_rss_destroy(%struct.ena_com_dev* %126)
  %128 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %129 = call i32 @ena_rss_init_default(%struct.ena_adapter* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @EOPNOTSUPP, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %156

144:                                              ; preds = %135, %125
  br label %145

145:                                              ; preds = %144, %111
  store i32 1, i32* %9, align 4
  br label %146

146:                                              ; preds = %145, %102
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %152 = call i32 @ena_free_all_io_rings_resources(%struct.ena_adapter* %151)
  %153 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %154 = call i32 @ena_init_io_rings(%struct.ena_adapter* %153)
  br label %155

155:                                              ; preds = %150, %146
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %139, %40
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ena_calc_io_queue_num(%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #2

declare dso_local i32 @ena_calc_queue_size(%struct.ena_adapter*, %struct.ena_calc_queue_size_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #2

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #2

declare dso_local i32 @ena_com_rss_destroy(%struct.ena_com_dev*) #2

declare dso_local i32 @ena_rss_init_default(%struct.ena_adapter*) #2

declare dso_local i32 @ena_free_all_io_rings_resources(%struct.ena_adapter*) #2

declare dso_local i32 @ena_init_io_rings(%struct.ena_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
