; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_wait_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_wait_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32)* @wait_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @wait_time(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %9, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %12 = call i32 @clock_gettime(i32 %11, %struct.timespec* %3)
  %13 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call { i64, i32 } @timespec_sub(i64 %15, i32 %17, i64 %20, i32 %22)
  %24 = bitcast %struct.timespec* %6 to { i64, i32 }*
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i32 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i32 } %23, 1
  store i32 %28, i32* %27, align 8
  %29 = bitcast %struct.timespec* %5 to i8*
  %30 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %10
  %35 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %36 = load { i64, i32 }, { i64, i32 }* %35, align 8
  ret { i64, i32 } %36

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1000000
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = call i32 @poll(i32* null, i32 0, i32 1)
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47
  br label %10
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local { i64, i32 } @timespec_sub(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @poll(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
