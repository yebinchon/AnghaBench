; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_rt_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_rt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_mesh_route = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"route is NULL\00", align 1
@ticks = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_PROXY = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_mesh_route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_mesh_route* %0, %struct.ieee80211_mesh_route** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %10 = icmp ne %struct.ieee80211_mesh_route* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ticks, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %15 = call i32 @MESH_RT_ENTRY_LOCK(%struct.ieee80211_mesh_route* %14)
  %16 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IEEE80211_MESHRT_FLAGS_PROXY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %29 = call i32 @MESH_RT_ENTRY_UNLOCK(%struct.ieee80211_mesh_route* %28)
  %30 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %22, %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @ticks_to_msecs(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %64

55:                                               ; preds = %48
  %56 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %55, %51
  br label %80

65:                                               ; preds = %33
  %66 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @MESH_ROUTE_LIFETIME_MAX(i32 %73, i32 %76)
  %78 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %65, %64
  %81 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %4, align 8
  %85 = call i32 @MESH_RT_ENTRY_UNLOCK(%struct.ieee80211_mesh_route* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %27
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MESH_RT_ENTRY_LOCK(%struct.ieee80211_mesh_route*) #1

declare dso_local i32 @MESH_RT_ENTRY_UNLOCK(%struct.ieee80211_mesh_route*) #1

declare dso_local i32 @ticks_to_msecs(i32) #1

declare dso_local i32 @MESH_ROUTE_LIFETIME_MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
