; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_et.c_hyperv_sbintime2count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_et.c_hyperv_sbintime2count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@HYPERV_TIMER_FREQ = common dso_local global i32 0, align 4
@HYPERV_TIMER_NS_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hyperv_sbintime2count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyperv_sbintime2count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @sbttots(i32 %5)
  %7 = bitcast %struct.timespec* %4 to i64*
  store i64 %6, i64* %7, align 4
  %8 = bitcast %struct.timespec* %3 to i8*
  %9 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 8, i1 false)
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HYPERV_TIMER_FREQ, align 4
  %13 = mul nsw i32 %11, %12
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HYPERV_TIMER_NS_FACTOR, align 4
  %17 = sdiv i32 %15, %16
  %18 = add nsw i32 %13, %17
  ret i32 %18
}

declare dso_local i64 @sbttots(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
