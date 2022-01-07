; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, i32 }
%struct.netmap_vp_adapter = type { i64 }

@NAF_NETMAP_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_vp_reg(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_vp_adapter*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %7 = bitcast %struct.netmap_adapter* %6 to %struct.netmap_vp_adapter*
  store %struct.netmap_vp_adapter* %7, %struct.netmap_vp_adapter** %5, align 8
  %8 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @BDG_WLOCK(i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @netmap_krings_mode_commit(%struct.netmap_adapter* %21, i32 %22)
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @NAF_NETMAP_ON, align 4
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %20
  br label %51

35:                                               ; preds = %17
  %36 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @NAF_NETMAP_ON, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @netmap_krings_mode_commit(%struct.netmap_adapter* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @BDG_WUNLOCK(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  ret i32 0
}

declare dso_local i32 @BDG_WLOCK(i64) #1

declare dso_local i32 @netmap_krings_mode_commit(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @BDG_WUNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
