; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_remove_all_mcast_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_remove_all_mcast_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast, %struct.ecore_dev }
%struct.ecore_filter_mcast = type { i32, i64*, i32**, i32 }
%struct.ecore_dev = type { i32 }

@ECORE_FILTER_REMOVE = common dso_local global i32 0, align 4
@QLNX_MAX_NUM_MULTICAST_ADDRS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qlnx_remove_all_mcast_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_remove_all_mcast_mac(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ecore_filter_mcast*, align 8
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store %struct.ecore_dev* %8, %struct.ecore_dev** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store %struct.ecore_filter_mcast* %10, %struct.ecore_filter_mcast** %3, align 8
  %11 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %3, align 8
  %12 = call i32 @bzero(%struct.ecore_filter_mcast* %11, i32 32)
  %13 = load i32, i32* @ECORE_FILTER_REMOVE, align 4
  %14 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %117, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @QLNX_MAX_NUM_MULTICAST_ADDRS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %23, i64 %25
  %27 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %92, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %35, i64 %37
  %39 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %47, i64 %49
  %51 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %59, i64 %61
  %63 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %56
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %71, i64 %73
  %75 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %68
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %83, i64 %85
  %87 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %80, %68, %56, %44, %32, %20
  %93 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %3, align 8
  %94 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %103, i64 %105
  %107 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i32 @memcpy(i32* %100, i64* %109, i32 %110)
  %112 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %3, align 8
  %113 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %92, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %16

120:                                              ; preds = %16
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store %struct.ecore_filter_mcast* %122, %struct.ecore_filter_mcast** %3, align 8
  %123 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %124 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %3, align 8
  %125 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %126 = call i32 @ecore_filter_mcast_cmd(%struct.ecore_dev* %123, %struct.ecore_filter_mcast* %124, i32 %125, i32* null)
  store i32 %126, i32* %5, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %128, align 8
  %130 = load i32, i32* @QLNX_MAX_NUM_MULTICAST_ADDRS, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 4, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @bzero(%struct.ecore_filter_mcast* %129, i32 %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @bzero(%struct.ecore_filter_mcast*, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ecore_filter_mcast_cmd(%struct.ecore_dev*, %struct.ecore_filter_mcast*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
