; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_key = type { i32 }
%struct.umtxq_chain = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"umtxqb\00", align 1
@BUSY_SPINS = common dso_local global i32 0, align 4
@smp_cpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_key*)* @umtxq_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtxq_busy(%struct.umtx_key* %0) #0 {
  %2 = alloca %struct.umtx_key*, align 8
  %3 = alloca %struct.umtxq_chain*, align 8
  store %struct.umtx_key* %0, %struct.umtx_key** %2, align 8
  %4 = load %struct.umtx_key*, %struct.umtx_key** %2, align 8
  %5 = call %struct.umtxq_chain* @umtxq_getchain(%struct.umtx_key* %4)
  store %struct.umtxq_chain* %5, %struct.umtxq_chain** %3, align 8
  %6 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %7 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %6, i32 0, i32 2
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %11 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %20, %14
  %16 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %17 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %22 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %26 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %27 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %26, i32 0, i32 2
  %28 = call i32 @msleep(%struct.umtxq_chain* %25, i32* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %29 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %30 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %36 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  ret void
}

declare dso_local %struct.umtxq_chain* @umtxq_getchain(%struct.umtx_key*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @msleep(%struct.umtxq_chain*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
