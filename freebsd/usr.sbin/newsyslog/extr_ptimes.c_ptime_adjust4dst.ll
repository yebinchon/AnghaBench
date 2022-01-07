; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptime_adjust4dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptime_adjust4dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@TNYET_ADJ4DST = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptime_adjust4dst(%struct.ptime_data* %0, %struct.ptime_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptime_data*, align 8
  %5 = alloca %struct.ptime_data*, align 8
  %6 = alloca %struct.ptime_data, align 8
  store %struct.ptime_data* %0, %struct.ptime_data** %4, align 8
  store %struct.ptime_data* %1, %struct.ptime_data** %5, align 8
  %7 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %8 = icmp eq %struct.ptime_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %76

10:                                               ; preds = %2
  %11 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %12 = bitcast %struct.ptime_data* %6 to i8*
  %13 = bitcast %struct.ptime_data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TNYET_ADJ4DST, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ptime_data*, %struct.ptime_data** %5, align 8
  %22 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %76

27:                                               ; preds = %18, %10
  %28 = load %struct.ptime_data*, %struct.ptime_data** %5, align 8
  %29 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64, i64* @SECS_PER_HOUR, align 8
  %43 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %42
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  br label %61

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i64, i64* @SECS_PER_HOUR, align 8
  %55 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %54
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  br label %60

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60, %41
  %62 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 1
  %63 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 2
  %64 = call %struct.TYPE_2__* @localtime(i32* %63)
  %65 = bitcast %struct.TYPE_2__* %62 to i8*
  %66 = bitcast %struct.TYPE_2__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = load %struct.ptime_data*, %struct.ptime_data** %5, align 8
  %68 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %6, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %61, %27
  %73 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %74 = bitcast %struct.ptime_data* %73 to i8*
  %75 = bitcast %struct.ptime_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %26, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @localtime(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
