; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_oq_enq.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_oq_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overflow_queue = type { i64, i64, i32, %struct.netmap_slot*, i32 }
%struct.netmap_slot = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: queue full!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.overflow_queue*, %struct.netmap_slot*)* @oq_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oq_enq(%struct.overflow_queue* %0, %struct.netmap_slot* %1) #0 {
  %3 = alloca %struct.overflow_queue*, align 8
  %4 = alloca %struct.netmap_slot*, align 8
  store %struct.overflow_queue* %0, %struct.overflow_queue** %3, align 8
  store %struct.netmap_slot* %1, %struct.netmap_slot** %4, align 8
  %5 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %6 = call i32 @oq_full(%struct.overflow_queue* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %11 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @abort() #4
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %17 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %16, i32 0, i32 3
  %18 = load %struct.netmap_slot*, %struct.netmap_slot** %17, align 8
  %19 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %20 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %18, i64 %21
  %23 = load %struct.netmap_slot*, %struct.netmap_slot** %4, align 8
  %24 = bitcast %struct.netmap_slot* %22 to i8*
  %25 = bitcast %struct.netmap_slot* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %27 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %31 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %35 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %38 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %15
  %42 = load %struct.overflow_queue*, %struct.overflow_queue** %3, align 8
  %43 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @oq_full(%struct.overflow_queue*) #1

declare dso_local i32 @D(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
