; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_rxsync_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_rxsync_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, %struct.netmap_adapter*, %struct.netmap_ring* }
%struct.netmap_adapter = type { i32 }
%struct.netmap_ring = type { %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ouch dangerous reset!!!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bad buffer index %d, ignore ?\00", align 1
@NS_BUF_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @netmap_vp_rxsync_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_vp_rxsync_locked(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.netmap_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netmap_slot*, align 8
  %12 = alloca i8*, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %13, i32 0, i32 3
  %15 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  store %struct.netmap_adapter* %15, %struct.netmap_adapter** %5, align 8
  %16 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %17 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %16, i32 0, i32 4
  %18 = load %struct.netmap_ring*, %struct.netmap_ring** %17, align 8
  store %struct.netmap_ring* %18, %struct.netmap_ring** %6, align 8
  %19 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %20 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  store i64 %22, i64* %8, align 8
  %23 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %32 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %31)
  store i32 %32, i32* %10, align 4
  br label %86

33:                                               ; preds = %2
  %34 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %35 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %78, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %41
  %49 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %50 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %49, i32 0, i32 0
  %51 = load %struct.netmap_slot*, %struct.netmap_slot** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %51, i64 %52
  store %struct.netmap_slot* %53, %struct.netmap_slot** %11, align 8
  %54 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %55 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %56 = call i8* @NMB(%struct.netmap_adapter* %54, %struct.netmap_slot* %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %59 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %58, i32 0, i32 3
  %60 = load %struct.netmap_adapter*, %struct.netmap_adapter** %59, align 8
  %61 = call i8* @NETMAP_BUF_BASE(%struct.netmap_adapter* %60)
  %62 = icmp eq i8* %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %65 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %48
  %69 = load i32, i32* @NS_BUF_CHANGED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %72 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @nm_next(i64 %75, i64 %76)
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %41

81:                                               ; preds = %41
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %84 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %33
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %29
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i32 @netmap_ring_reinit(%struct.netmap_kring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @NMB(%struct.netmap_adapter*, %struct.netmap_slot*) #1

declare dso_local i8* @NETMAP_BUF_BASE(%struct.netmap_adapter*) #1

declare dso_local i64 @nm_next(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
