; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_do_unregif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_do_unregif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i32*, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i64, i32, i32, i32, i32 (%struct.netmap_adapter*)*, i32, i32 (%struct.netmap_adapter*, i32)* }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"deleting last instance for %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"BUG: netmap on while going to delete the krings\00", align 1
@NAF_HOST_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_do_unregif(%struct.netmap_priv_d* %0) #0 {
  %2 = alloca %struct.netmap_priv_d*, align 8
  %3 = alloca %struct.netmap_adapter*, align 8
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %2, align 8
  %4 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %5 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %4, i32 0, i32 1
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  store %struct.netmap_adapter* %6, %struct.netmap_adapter** %3, align 8
  %7 = call i32 (...) @NMG_LOCK_ASSERT()
  %8 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %13 = call i32 @netmap_krings_put(%struct.netmap_priv_d* %12)
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %20 = call i64 @nm_kring_pending(%struct.netmap_priv_d* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %1
  %23 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %23, i32 0, i32 6
  %25 = load i32 (%struct.netmap_adapter*, i32)*, i32 (%struct.netmap_adapter*, i32)** %24, align 8
  %26 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %27 = call i32 %25(%struct.netmap_adapter* %26, i32 0)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %30 = call i32 @netmap_mem_rings_delete(%struct.netmap_adapter* %29)
  %31 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %28
  %36 = load i32, i32* @netmap_debug, align 4
  %37 = load i32, i32* @NM_DEBUG_ON, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nm_prinf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %47 = call i64 @nm_netmap_on(%struct.netmap_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @nm_prerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %52, i32 0, i32 4
  %54 = load i32 (%struct.netmap_adapter*)*, i32 (%struct.netmap_adapter*)** %53, align 8
  %55 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %56 = call i32 %54(%struct.netmap_adapter* %55)
  %57 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NAF_HOST_RINGS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  %66 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %66, i32 0, i32 3
  store i32 1, i32* %67, align 8
  br label %73

68:                                               ; preds = %51
  %69 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %71, i32 0, i32 3
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %28
  %75 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %76 = call i32 @netmap_unset_ringid(%struct.netmap_priv_d* %75)
  %77 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %78 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %79 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @netmap_mem_if_delete(%struct.netmap_adapter* %77, i32* %80)
  %82 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %83 = call i32 @netmap_mem_drop(%struct.netmap_adapter* %82)
  %84 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %85 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %84, i32 0, i32 1
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %85, align 8
  %86 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %87 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  ret void
}

declare dso_local i32 @NMG_LOCK_ASSERT(...) #1

declare dso_local i32 @netmap_krings_put(%struct.netmap_priv_d*) #1

declare dso_local i64 @nm_kring_pending(%struct.netmap_priv_d*) #1

declare dso_local i32 @netmap_mem_rings_delete(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prinf(i8*, i32) #1

declare dso_local i64 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i32 @netmap_unset_ringid(%struct.netmap_priv_d*) #1

declare dso_local i32 @netmap_mem_if_delete(%struct.netmap_adapter*, i32*) #1

declare dso_local i32 @netmap_mem_drop(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
