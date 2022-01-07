; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_fetch_args = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pps_state = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.timeval = type { i32, i32 }

@PPS_TSFMT_TSPEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSFLAG_MTX_SPIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ppsfch\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pps_fetch_args*, %struct.pps_state*)* @pps_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_fetch(%struct.pps_fetch_args* %0, %struct.pps_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pps_fetch_args*, align 8
  %5 = alloca %struct.pps_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timeval, align 4
  store %struct.pps_fetch_args* %0, %struct.pps_fetch_args** %4, align 8
  store %struct.pps_state* %1, %struct.pps_state** %5, align 8
  %11 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %12 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %17 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PPS_TSFMT_TSPEC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %152

23:                                               ; preds = %15, %2
  %24 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %25 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %31 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %138

35:                                               ; preds = %29, %23
  %36 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %37 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 2147483647, i32* %7, align 4
  br label %55

42:                                               ; preds = %35
  %43 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %44 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %49 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 1000
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = call i32 @tvtohz(%struct.timeval* %10)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %42, %41
  %56 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %57 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i64 @atomic_load_int(i32* %58)
  store i64 %59, i64* %8, align 8
  %60 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %61 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = call i64 @atomic_load_int(i32* %62)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %136, %127, %55
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %67 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i64 @atomic_load_int(i32* %68)
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %74 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = call i64 @atomic_load_int(i32* %75)
  %77 = icmp eq i64 %72, %76
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i1 [ false, %64 ], [ %77, %71 ]
  br i1 %79, label %80, label %137

80:                                               ; preds = %78
  %81 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %82 = call i64 @abi_aware(%struct.pps_state* %81, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %86 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %91 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PPSFLAG_MTX_SPIN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %98 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %99 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @msleep_spin(%struct.pps_state* %97, i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %6, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %105 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %106 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @PCATCH, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @msleep(%struct.pps_state* %104, i32* %107, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %103, %96
  br label %117

112:                                              ; preds = %84, %80
  %113 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %114 = load i32, i32* @PCATCH, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @tsleep(%struct.pps_state* %113, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @EWOULDBLOCK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %123 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %64

128:                                              ; preds = %121
  %129 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %129, i32* %3, align 4
  br label %152

130:                                              ; preds = %117
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %152

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135
  br label %64

137:                                              ; preds = %78
  br label %138

138:                                              ; preds = %137, %29
  %139 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %140 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %144 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 4
  %146 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %4, align 8
  %147 = getelementptr inbounds %struct.pps_fetch_args, %struct.pps_fetch_args* %146, i32 0, i32 1
  %148 = load %struct.pps_state*, %struct.pps_state** %5, align 8
  %149 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %148, i32 0, i32 1
  %150 = bitcast %struct.TYPE_6__* %147 to i8*
  %151 = bitcast %struct.TYPE_6__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 4 %151, i64 12, i1 false)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %138, %133, %128, %21
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i64 @atomic_load_int(i32*) #1

declare dso_local i64 @abi_aware(%struct.pps_state*, i32) #1

declare dso_local i32 @msleep_spin(%struct.pps_state*, i32*, i8*, i32) #1

declare dso_local i32 @msleep(%struct.pps_state*, i32*, i32, i8*, i32) #1

declare dso_local i32 @tsleep(%struct.pps_state*, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
