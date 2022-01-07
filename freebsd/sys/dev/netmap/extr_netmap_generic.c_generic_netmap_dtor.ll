; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32, i32* }
%struct.netmap_generic_adapter = type { %struct.netmap_adapter* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Native netmap adapter for %s restored\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Emulated netmap adapter for %s destroyed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_adapter*)* @generic_netmap_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_netmap_dtor(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  %3 = alloca %struct.netmap_generic_adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %7 = bitcast %struct.netmap_adapter* %6 to %struct.netmap_generic_adapter*
  store %struct.netmap_generic_adapter* %7, %struct.netmap_generic_adapter** %3, align 8
  %8 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %9 = call %struct.ifnet* @netmap_generic_getifp(%struct.netmap_generic_adapter* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %10, i32 0, i32 0
  %12 = load %struct.netmap_adapter*, %struct.netmap_adapter** %11, align 8
  store %struct.netmap_adapter* %12, %struct.netmap_adapter** %5, align 8
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %14 = icmp ne %struct.netmap_adapter* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %17 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %16)
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %19 = call i64 @nm_iszombie(%struct.netmap_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %23 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nm_prinf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %32 = call i32 @NM_RESTORE_NA(%struct.ifnet* %30, %struct.netmap_adapter* %31)
  %33 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nm_prinf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local %struct.ifnet* @netmap_generic_getifp(%struct.netmap_generic_adapter*) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

declare dso_local i64 @nm_iszombie(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prinf(i8*, i32) #1

declare dso_local i32 @NM_RESTORE_NA(%struct.ifnet*, %struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
