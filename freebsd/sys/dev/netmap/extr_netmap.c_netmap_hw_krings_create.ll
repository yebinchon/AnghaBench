; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_hw_krings_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_hw_krings_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64 }
%struct.TYPE_2__ = type { i32 }

@NR_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"initialized sw rx queue %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_hw_krings_create(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %7 = call i32 @netmap_krings_create(%struct.netmap_adapter* %6, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %12 = load i32, i32* @NR_RX, align 4
  %13 = call i64 @netmap_real_rings(%struct.netmap_adapter* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %30, %10
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %23 = load i32, i32* @NR_RX, align 4
  %24 = call %struct.TYPE_2__** @NMR(%struct.netmap_adapter* %22, i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mbq_safe_init(i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nm_prdis(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @netmap_krings_create(%struct.netmap_adapter*, i32) #1

declare dso_local i64 @netmap_real_rings(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @mbq_safe_init(i32*) #1

declare dso_local %struct.TYPE_2__** @NMR(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @nm_prdis(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
