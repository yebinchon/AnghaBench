; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_wait_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_wait_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.timespec*, i64*)* @wait_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_time(i64 %0, i64 %1, %struct.timespec* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @CLOCK_REALTIME, align 4
  %16 = call i32 @clock_gettime(i32 %15, %struct.timespec* %9)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %37, %20
  %22 = call i64 @timespec_ge(%struct.timespec* %6, %struct.timespec* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @CLOCK_REALTIME, align 4
  %33 = call i32 @clock_gettime(i32 %32, %struct.timespec* %9)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %46

37:                                               ; preds = %31
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.timespec*, %struct.timespec** %7, align 8
  %40 = icmp ne %struct.timespec* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.timespec*, %struct.timespec** %7, align 8
  %43 = bitcast %struct.timespec* %42 to i8*
  %44 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  br label %45

45:                                               ; preds = %41, %38
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %35, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @timespec_ge(%struct.timespec*, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
