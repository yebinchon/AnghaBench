; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { %struct.TYPE_6__, %struct.dn_fsk* }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.dn_fsk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wf2qp_si = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.wf2qp_queue = type { i32, i8*, i8* }

@ONE_FP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"++ ouch! not eligible but empty scheduler!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @wf2qp_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf2qp_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.dn_fsk*, align 8
  %9 = alloca %struct.wf2qp_si*, align 8
  %10 = alloca %struct.wf2qp_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %5, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %12 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %13 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %12, i32 0, i32 1
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %13, align 8
  store %struct.dn_fsk* %14, %struct.dn_fsk** %8, align 8
  %15 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %16 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %15, i64 1
  %17 = bitcast %struct.dn_sch_inst* %16 to %struct.wf2qp_si*
  store %struct.wf2qp_si* %17, %struct.wf2qp_si** %9, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %24 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %27 = icmp ne %struct.mbuf* %22, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = call i64 @dn_enqueue(%struct.dn_queue* %29, %struct.mbuf* %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %161

34:                                               ; preds = %28
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %37 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.mbuf*, %struct.mbuf** %38, align 8
  %40 = icmp ne %struct.mbuf* %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %161

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %45 = bitcast %struct.dn_queue* %44 to %struct.wf2qp_queue*
  store %struct.wf2qp_queue* %45, %struct.wf2qp_queue** %10, align 8
  %46 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %47 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %50 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @DN_KEY_LT(i8* %48, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %43
  %55 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %56 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %59 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %61 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %67 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i32, i32* @ONE_FP, align 4
  %73 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %74 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %72, %75
  %77 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %78 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %93

79:                                               ; preds = %43
  %80 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %81 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %80, i32 0, i32 5
  %82 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %83 = call i32 @heap_extract(i32* %81, %struct.dn_queue* %82)
  %84 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %85 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %88 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @MAX64(i8* %86, i8* %89)
  %91 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %92 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %79, %54
  %94 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %95 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %99 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %96, i64 %102
  %104 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %105 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %107 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %93
  %112 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %113 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %119 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %122 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @MAX64(i8* %120, i8* %123)
  %125 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %126 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %117, %111, %93
  %128 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %129 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %132 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @DN_KEY_LT(i8* %130, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %127
  %137 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %138 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 @D(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %136
  %145 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %146 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %145, i32 0, i32 3
  %147 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %148 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %151 = call i32 @heap_insert(%struct.TYPE_8__* %146, i8* %149, %struct.dn_queue* %150)
  br label %160

152:                                              ; preds = %127
  %153 = load %struct.wf2qp_si*, %struct.wf2qp_si** %9, align 8
  %154 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %153, i32 0, i32 2
  %155 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %10, align 8
  %156 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %159 = call i32 @heap_insert(%struct.TYPE_8__* %154, i8* %157, %struct.dn_queue* %158)
  br label %160

160:                                              ; preds = %152, %144
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %41, %33
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @dn_enqueue(%struct.dn_queue*, %struct.mbuf*, i32) #1

declare dso_local i64 @DN_KEY_LT(i8*, i8*) #1

declare dso_local i32 @heap_extract(i32*, %struct.dn_queue*) #1

declare dso_local i8* @MAX64(i8*, i8*) #1

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @heap_insert(%struct.TYPE_8__*, i8*, %struct.dn_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
