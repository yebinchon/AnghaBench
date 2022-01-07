; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_intr_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_intr_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, {}*, i64, i64, i64, i64, i32, i64, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i32, %struct.netmap_bwrap_adapter* }
%struct.netmap_bwrap_adapter = type { %struct.netmap_vp_adapter }
%struct.netmap_vp_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netmap_kring** }

@NM_IRQ_COMPLETED = common dso_local global i32 0, align 4
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_RXINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s 0x%x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s head %d cur %d tail %d\00", align 1
@netmap_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"interrupt with no packets on %s\00", align 1
@NM_IRQ_RESCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @netmap_bwrap_intr_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_bwrap_intr_notify(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_kring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca %struct.netmap_bwrap_adapter*, align 8
  %8 = alloca %struct.netmap_kring*, align 8
  %9 = alloca %struct.netmap_vp_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %14 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %13, i32 0, i32 8
  %15 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  store %struct.netmap_adapter* %15, %struct.netmap_adapter** %6, align 8
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %16, i32 0, i32 1
  %18 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %17, align 8
  store %struct.netmap_bwrap_adapter* %18, %struct.netmap_bwrap_adapter** %7, align 8
  %19 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %19, i32 0, i32 0
  store %struct.netmap_vp_adapter* %20, %struct.netmap_vp_adapter** %9, align 8
  %21 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %22 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* @NM_IRQ_COMPLETED, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @netmap_debug, align 4
  %26 = load i32, i32* @NM_DEBUG_RXINTR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %34 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, i64, i32, ...) @nm_prinf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %9, align 8
  %41 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.netmap_kring**, %struct.netmap_kring*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %43, i64 %44
  %46 = load %struct.netmap_kring*, %struct.netmap_kring** %45, align 8
  store %struct.netmap_kring* %46, %struct.netmap_kring** %8, align 8
  %47 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %48 = call i64 @nm_kr_tryget(%struct.netmap_kring* %47, i32 0, i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @EIO, align 4
  store i32 %51, i32* %3, align 4
  br label %150

52:                                               ; preds = %39
  %53 = load i32, i32* @netmap_debug, align 4
  %54 = load i32, i32* @NM_DEBUG_RXINTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %62 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %65 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %69 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, i32, i64, i32, ...) @nm_prinf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %63, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %57, %52
  %73 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %74 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %73, i32 0, i32 1
  %75 = bitcast {}** %74 to i32 (%struct.netmap_kring*, i32)**
  %76 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %75, align 8
  %77 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %78 = call i32 %76(%struct.netmap_kring* %77, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %139

82:                                               ; preds = %72
  %83 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %84 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %87 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i64, i64* @netmap_verbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %95 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nm_prlim(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %139

99:                                               ; preds = %82
  %100 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %101 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %104 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %106 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %105, i32 0, i32 5
  store i64 %102, i64* %106, align 8
  %107 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %108 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %107, i32 0, i32 1
  %109 = bitcast {}** %108 to i32 (%struct.netmap_kring*, i32)**
  %110 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %109, align 8
  %111 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 %110(%struct.netmap_kring* %111, i32 %112)
  %114 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %115 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %118 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %120 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %119, i32 0, i32 3
  store i64 %116, i64* %120, align 8
  %121 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %122 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %121, i32 0, i32 5
  store i64 %116, i64* %122, align 8
  %123 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %124 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %123, i32 0, i32 1
  %125 = bitcast {}** %124 to i32 (%struct.netmap_kring*, i32)**
  %126 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %125, align 8
  %127 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %128 = call i32 %126(%struct.netmap_kring* %127, i32 0)
  store i32 %128, i32* %12, align 4
  %129 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %130 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %133 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %99
  %137 = load i32, i32* @NM_IRQ_RESCHED, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %99
  br label %139

139:                                              ; preds = %138, %98, %81
  %140 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %141 = call i32 @nm_kr_put(%struct.netmap_kring* %140)
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %11, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %50
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @nm_prinf(i8*, i32, i64, i32, ...) #1

declare dso_local i64 @nm_kr_tryget(%struct.netmap_kring*, i32, i32*) #1

declare dso_local i32 @nm_prlim(i32, i8*, i32) #1

declare dso_local i32 @nm_kr_put(%struct.netmap_kring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
