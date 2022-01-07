; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_mbuf_destructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_mbuf_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.netmap_adapter = type { i32, %struct.netmap_kring** }
%struct.netmap_kring = type { i32, %struct.mbuf* }

@.str = private unnamed_addr constant [38 x i8] c"Error: no netmap adapter on device %p\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"event %p migrated: ring %u --> %u\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot match event %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @generic_mbuf_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_mbuf_destructor(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca %struct.netmap_kring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = call i32 @GEN_TX_MBUF_IFP(%struct.mbuf* %8)
  %10 = call %struct.netmap_adapter* @NA(i32 %9)
  store %struct.netmap_adapter* %10, %struct.netmap_adapter** %3, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %12 = call i32 @MBUF_TXQ(%struct.mbuf* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = call i32 @nm_netmap_on(%struct.netmap_adapter* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %30 = call i32 @GEN_TX_MBUF_IFP(%struct.mbuf* %29)
  %31 = call i32 @nm_prerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %88

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %83, %32
  store i32 0, i32* %7, align 4
  %34 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %34, i32 0, i32 1
  %36 = load %struct.netmap_kring**, %struct.netmap_kring*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %36, i64 %38
  %40 = load %struct.netmap_kring*, %struct.netmap_kring** %39, align 8
  store %struct.netmap_kring* %40, %struct.netmap_kring** %4, align 8
  %41 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %42 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock_spin(i32* %42)
  %44 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %45 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %44, i32 0, i32 1
  %46 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %48 = icmp eq %struct.mbuf* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %51 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %50, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %51, align 8
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %33
  %53 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %54 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock_spin(i32* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i8*, %struct.mbuf*, ...) @nm_prlim(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.mbuf* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %84

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %82 = call i32 (i32, i8*, %struct.mbuf*, ...) @nm_prlim(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.mbuf* %81)
  br label %88

83:                                               ; preds = %76
  br label %33

84:                                               ; preds = %67
  %85 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @netmap_generic_irq(%struct.netmap_adapter* %85, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %84, %80, %28
  ret void
}

declare dso_local %struct.netmap_adapter* @NA(i32) #1

declare dso_local i32 @GEN_TX_MBUF_IFP(%struct.mbuf*) #1

declare dso_local i32 @MBUF_TXQ(%struct.mbuf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @nm_prlim(i32, i8*, %struct.mbuf*, ...) #1

declare dso_local i32 @netmap_generic_irq(%struct.netmap_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
