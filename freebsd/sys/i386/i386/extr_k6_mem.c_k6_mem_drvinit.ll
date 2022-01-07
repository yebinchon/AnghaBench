; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mem_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mem_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@k6_mrops = common dso_local global i32 0, align 4
@mem_range_softc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @k6_mem_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k6_mem_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @cpu_vendor_id, align 8
  %4 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @cpu_id, align 4
  %9 = and i32 %8, 3840
  %10 = icmp ne i32 %9, 1280
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %26

12:                                               ; preds = %7
  %13 = load i32, i32* @cpu_id, align 4
  %14 = and i32 %13, 240
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @cpu_id, align 4
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @cpu_id, align 4
  %22 = and i32 %21, 15
  %23 = icmp sle i32 %22, 7
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %12
  br label %26

25:                                               ; preds = %20, %16
  store i32* @k6_mrops, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_range_softc, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %25, %24, %11, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
