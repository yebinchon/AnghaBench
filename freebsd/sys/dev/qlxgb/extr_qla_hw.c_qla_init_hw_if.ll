; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_init_hw_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_init_hw_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32*, %struct.TYPE_20__*, i64, i64, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }

@NUM_RX_DESCRIPTORS = common dso_local global i64 0, align 8
@NUM_RX_JUMBO_DESCRIPTORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla_init_hw_if(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = call i32 @qla_get_hw_caps(%struct.TYPE_22__* %7)
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bzero(i32 %29, i32 %39)
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = call i64 @qla_init_rcv_cntxt(%struct.TYPE_22__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %147

49:                                               ; preds = %44
  %50 = load i64, i64* @NUM_RX_DESCRIPTORS, align 8
  %51 = sub nsw i64 %50, 2
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* @NUM_RX_JUMBO_DESCRIPTORS, align 8
  %56 = sub nsw i64 %55, 2
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @QL_UPDATE_RDS_PRODUCER_INDEX(%struct.TYPE_22__* %66, i32 0, i64 %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @QL_UPDATE_RDS_PRODUCER_INDEX(%struct.TYPE_22__* %72, i32 1, i64 %76)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call i64 @qla_init_xmt_cntxt(%struct.TYPE_22__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %49
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = call i32 @qla_del_rcv_cntxt(%struct.TYPE_22__* %82)
  store i32 -1, i32* %2, align 4
  br label %147

84:                                               ; preds = %49
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @qla_config_mac_addr(%struct.TYPE_22__* %85, i32* %89, i32 %96, i32 1)
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 255, i32* %98, align 16
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %99, align 4
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 255, i32* %100, align 8
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 255, i32* %101, align 4
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 255, i32* %102, align 16
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 255, i32* %103, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @qla_config_mac_addr(%struct.TYPE_22__* %104, i32* %105, i32 %112, i32 1)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @qla_config_rss(%struct.TYPE_22__* %114, i32 %121)
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @qla_config_intr_coalesce(%struct.TYPE_22__* %123, i32 %130, i32 0)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %143, %84
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %133, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @QL_ENABLE_INTERRUPTS(%struct.TYPE_22__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %132

146:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %81, %48
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @qla_get_hw_caps(%struct.TYPE_22__*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @qla_init_rcv_cntxt(%struct.TYPE_22__*) #1

declare dso_local i32 @QL_UPDATE_RDS_PRODUCER_INDEX(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i64 @qla_init_xmt_cntxt(%struct.TYPE_22__*) #1

declare dso_local i32 @qla_del_rcv_cntxt(%struct.TYPE_22__*) #1

declare dso_local i32 @qla_config_mac_addr(%struct.TYPE_22__*, i32*, i32, i32) #1

declare dso_local i32 @qla_config_rss(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @qla_config_intr_coalesce(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @QL_ENABLE_INTERRUPTS(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
