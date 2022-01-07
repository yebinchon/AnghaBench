; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_get_hw_na.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_get_hw_na.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.netmap_mem_d = type { i32 }
%struct.netmap_adapter = type { i32, i64, i64, %struct.netmap_mem_d*, %struct.netmap_mem_d* }

@netmap_admode = common dso_local global i32 0, align 4
@NETMAP_ADMODE_BEST = common dso_local global i32 0, align 4
@NETMAP_ADMODE_LAST = common dso_local global i32 0, align 4
@NETMAP_ADMODE_GENERIC = common dso_local global i32 0, align 4
@NAF_FORCE_NATIVE = common dso_local global i32 0, align 4
@NETMAP_ADMODE_NATIVE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NAF_MEM_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_get_hw_na(%struct.ifnet* %0, %struct.netmap_mem_d* %1, %struct.netmap_adapter** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.netmap_mem_d*, align 8
  %7 = alloca %struct.netmap_adapter**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netmap_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.netmap_mem_d* %1, %struct.netmap_mem_d** %6, align 8
  store %struct.netmap_adapter** %2, %struct.netmap_adapter*** %7, align 8
  %11 = load i32, i32* @netmap_admode, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NETMAP_ADMODE_BEST, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NETMAP_ADMODE_LAST, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @NETMAP_ADMODE_BEST, align 4
  store i32 %21, i32* @netmap_admode, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = call i64 @NM_NA_VALID(%struct.ifnet* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = call %struct.netmap_adapter* @NA(%struct.ifnet* %27)
  store %struct.netmap_adapter* %28, %struct.netmap_adapter** %9, align 8
  %29 = load %struct.netmap_adapter*, %struct.netmap_adapter** %9, align 8
  %30 = call i64 @NETMAP_OWNED_BY_ANY(%struct.netmap_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NETMAP_ADMODE_GENERIC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load %struct.netmap_adapter*, %struct.netmap_adapter** %9, align 8
  %38 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NAF_FORCE_NATIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %32, %26
  %44 = load %struct.netmap_adapter*, %struct.netmap_adapter** %9, align 8
  %45 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  store %struct.netmap_adapter* %44, %struct.netmap_adapter** %45, align 8
  br label %68

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = call i32 @NM_IS_NATIVE(%struct.ifnet* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NETMAP_ADMODE_NATIVE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %51, %47
  %58 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %59 = call i32 @generic_netmap_attach(%struct.ifnet* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %106

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = call %struct.netmap_adapter* @NA(%struct.ifnet* %65)
  %67 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  store %struct.netmap_adapter* %66, %struct.netmap_adapter** %67, align 8
  br label %68

68:                                               ; preds = %64, %43
  %69 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %70 = icmp ne %struct.netmap_mem_d* %69, null
  br i1 %70, label %71, label %105

71:                                               ; preds = %68
  %72 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %73 = load %struct.netmap_adapter*, %struct.netmap_adapter** %72, align 8
  %74 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NAF_MEM_OWNER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %71
  %80 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %81 = load %struct.netmap_adapter*, %struct.netmap_adapter** %80, align 8
  %82 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %87 = load %struct.netmap_adapter*, %struct.netmap_adapter** %86, align 8
  %88 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %87, i32 0, i32 3
  %89 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %88, align 8
  %90 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %91 = icmp ne %struct.netmap_mem_d* %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %94 = load %struct.netmap_adapter*, %struct.netmap_adapter** %93, align 8
  %95 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %94, i32 0, i32 3
  %96 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %95, align 8
  %97 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %98 = load %struct.netmap_adapter*, %struct.netmap_adapter** %97, align 8
  %99 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %98, i32 0, i32 4
  store %struct.netmap_mem_d* %96, %struct.netmap_mem_d** %99, align 8
  %100 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %101 = call %struct.netmap_mem_d* @netmap_mem_get(%struct.netmap_mem_d* %100)
  %102 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %7, align 8
  %103 = load %struct.netmap_adapter*, %struct.netmap_adapter** %102, align 8
  %104 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %103, i32 0, i32 3
  store %struct.netmap_mem_d* %101, %struct.netmap_mem_d** %104, align 8
  br label %105

105:                                              ; preds = %92, %85, %79, %71, %68
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %62, %55
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @NM_NA_VALID(%struct.ifnet*) #1

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i64 @NETMAP_OWNED_BY_ANY(%struct.netmap_adapter*) #1

declare dso_local i32 @NM_IS_NATIVE(%struct.ifnet*) #1

declare dso_local i32 @generic_netmap_attach(%struct.ifnet*) #1

declare dso_local %struct.netmap_mem_d* @netmap_mem_get(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
