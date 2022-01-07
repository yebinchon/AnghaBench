; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_state = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.pps_fetch_args = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"NULL pps pointer in pps_ioctl\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PPS_API_VERS_1 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@KCMODE_ABIFLAG = common dso_local global i32 0, align 4
@KCMODE_EDGEMASK = common dso_local global i32 0, align 4
@PPS_KC_HARDPPS = common dso_local global i32 0, align 4
@PPS_TSCLK_MASK = common dso_local global i32 0, align 4
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pps_ioctl(i32 %0, i64 %1, %struct.pps_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pps_state*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.pps_fetch_args*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.pps_state* %2, %struct.pps_state** %7, align 8
  %10 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %11 = icmp ne %struct.pps_state* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %62 [
    i32 137, label %15
    i32 136, label %16
    i32 130, label %17
    i32 132, label %37
    i32 133, label %48
    i32 135, label %54
    i32 131, label %60
  ]

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %24 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %64

31:                                               ; preds = %17
  %32 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %33 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = bitcast %struct.TYPE_8__* %33 to i8*
  %36 = bitcast %struct.TYPE_8__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %64

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %42 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %41, i32 0, i32 3
  %43 = bitcast %struct.TYPE_8__* %40 to i8*
  %44 = bitcast %struct.TYPE_8__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load i32, i32* @PPS_API_VERS_1, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %64

48:                                               ; preds = %3
  %49 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %50 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %64

54:                                               ; preds = %3
  %55 = load i64, i64* %6, align 8
  %56 = inttoptr i64 %55 to %struct.pps_fetch_args*
  store %struct.pps_fetch_args* %56, %struct.pps_fetch_args** %9, align 8
  %57 = load %struct.pps_fetch_args*, %struct.pps_fetch_args** %9, align 8
  %58 = load %struct.pps_state*, %struct.pps_state** %7, align 8
  %59 = call i32 @pps_fetch(%struct.pps_fetch_args* %57, %struct.pps_state* %58)
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %3
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %3
  %63 = load i32, i32* @ENOIOCTL, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %54, %48, %37, %31, %29, %16, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pps_fetch(%struct.pps_fetch_args*, %struct.pps_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
