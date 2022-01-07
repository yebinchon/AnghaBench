; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_get_max_memlockable_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_get_max_memlockable_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @sdp_get_max_memlockable_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdp_get_max_memlockable_bytes(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @CAP_IPC_LOCK, align 4
  %7 = call i64 @capable(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @ULONG_MAX, align 8
  store i64 %10, i64* %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = sub i64 %21, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %11, %9
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
