; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_attach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32, i32, i32, i32*, i32*, i64, i32*, i32, i32*, %struct.netmap_adapter*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@NAF_HOST_RINGS = common dso_local global i32 0, align 4
@netmap_hw_krings_create = common dso_local global i32* null, align 8
@netmap_hw_krings_delete = common dso_local global i32 0, align 4
@netmap_notify = common dso_local global i32* null, align 8
@nm_mem = common dso_local global i32 0, align 4
@netmap_default_bdg_attach = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_attach_common(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %3 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %3, i32 0, i32 12
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %9, i32 0, i32 12
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NAF_HOST_RINGS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %11
  %36 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** @netmap_hw_krings_create, align 8
  %42 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %42, i32 0, i32 8
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @netmap_hw_krings_delete, align 4
  %45 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32*, i32** @netmap_notify, align 8
  %54 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i32* @netmap_mem_get(i32* @nm_mem)
  %65 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %63, %56
  ret i32 0
}

declare dso_local i32* @netmap_mem_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
