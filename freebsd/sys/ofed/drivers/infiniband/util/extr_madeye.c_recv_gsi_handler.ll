; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_recv_gsi_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_recv_gsi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.ib_mad_hdr }
%struct.ib_mad_hdr = type { i64, i32 }
%struct.ib_rmpp_mad = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ib_sa_mad = type { i32* }
%struct.ib_vendor_mad = type { i32*, i32* }

@gmp = common dso_local global i32 0, align 4
@mgmt_class = common dso_local global i64 0, align 8
@attr_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Madeye:recv GMP\0A\00", align 1
@data = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i64 0, align 8
@IB_MGMT_SA_DATA = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_DATA = common dso_local global i64 0, align 8
@IB_MGMT_VENDOR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Vendor OUI......%01x %01x %01x\0A\00", align 1
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\0AData...........\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%01x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_recv_wc*)* @recv_gsi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_gsi_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_hdr*, align 8
  %6 = alloca %struct.ib_rmpp_mad*, align 8
  %7 = alloca %struct.ib_sa_mad*, align 8
  %8 = alloca %struct.ib_vendor_mad*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %12 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %13 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.ib_mad_hdr* %16, %struct.ib_mad_hdr** %5, align 8
  store %struct.ib_rmpp_mad* null, %struct.ib_rmpp_mad** %6, align 8
  %17 = load i32, i32* @gmp, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @mgmt_class, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %145

26:                                               ; preds = %19, %2
  %27 = load i64, i64* @attr_id, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %31 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @be16_to_cpu(i32 %36)
  %38 = load i64, i64* @attr_id, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %145

41:                                               ; preds = %29, %26
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %44 = call i32 @print_mad_hdr(%struct.ib_mad_hdr* %43)
  %45 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %46 = call i64 @is_rmpp_mad(%struct.ib_mad_hdr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %50 = bitcast %struct.ib_mad_hdr* %49 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %50, %struct.ib_rmpp_mad** %6, align 8
  %51 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %52 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %51, i32 0, i32 0
  %53 = call i32 @print_rmpp_hdr(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i64, i64* @data, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %54
  %58 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_MGMT_CLASS_SUBN_ADM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = load i32, i32* @IB_MGMT_SA_DATA, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %66 = call i64 @is_rmpp_mad(%struct.ib_mad_hdr* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %70 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IB_MGMT_RMPP_TYPE_DATA, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %145

76:                                               ; preds = %68, %63
  %77 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %78 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = bitcast %struct.TYPE_4__** %79 to %struct.ib_sa_mad*
  store %struct.ib_sa_mad* %80, %struct.ib_sa_mad** %7, align 8
  %81 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %7, align 8
  %82 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %9, align 8
  br label %122

84:                                               ; preds = %57
  %85 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %5, align 8
  %86 = call i64 @is_rmpp_mad(%struct.ib_mad_hdr* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load i32, i32* @IB_MGMT_VENDOR_DATA, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %91 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = bitcast %struct.TYPE_4__** %92 to %struct.ib_vendor_mad*
  store %struct.ib_vendor_mad* %93, %struct.ib_vendor_mad** %8, align 8
  %94 = load %struct.ib_vendor_mad*, %struct.ib_vendor_mad** %8, align 8
  %95 = getelementptr inbounds %struct.ib_vendor_mad, %struct.ib_vendor_mad* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ib_vendor_mad*, %struct.ib_vendor_mad** %8, align 8
  %100 = getelementptr inbounds %struct.ib_vendor_mad, %struct.ib_vendor_mad* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ib_vendor_mad*, %struct.ib_vendor_mad** %8, align 8
  %105 = getelementptr inbounds %struct.ib_vendor_mad, %struct.ib_vendor_mad* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %103, i32 %108)
  %110 = load %struct.ib_vendor_mad*, %struct.ib_vendor_mad** %8, align 8
  %111 = getelementptr inbounds %struct.ib_vendor_mad, %struct.ib_vendor_mad* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %9, align 8
  br label %121

113:                                              ; preds = %84
  %114 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  store i32 %114, i32* %11, align 4
  %115 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %116 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %9, align 8
  br label %121

121:                                              ; preds = %113, %88
  br label %122

122:                                              ; preds = %121, %76
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %140, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = srem i32 %128, 16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %127
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %123

143:                                              ; preds = %123
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %145

145:                                              ; preds = %25, %40, %75, %143, %54
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @print_mad_hdr(%struct.ib_mad_hdr*) #1

declare dso_local i64 @is_rmpp_mad(%struct.ib_mad_hdr*) #1

declare dso_local i32 @print_rmpp_hdr(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
