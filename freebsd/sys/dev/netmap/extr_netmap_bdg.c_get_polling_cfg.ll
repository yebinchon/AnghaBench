; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_get_polling_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_get_polling_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_vale_polling = type { i32, i32, i64 }
%struct.netmap_adapter = type { i32 }
%struct.nm_bdg_polling_state = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"req_cpus must be > 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot use all the CPUs in the system\00", align 1
@NETMAP_POLLING_MODE_MULTI_CPU = common dso_local global i64 0, align 8
@NR_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Rings %u-%u not in range (have %d rings)\00", align 1
@NETMAP_POLLING_MODE_SINGLE_CPU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"ncpus must be 1 for NETMAP_POLLING_MODE_SINGLE_CPU (was %d)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid polling mode\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s qfirst %u qlast %u cpu_from %u ncpus %u\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_vale_polling*, %struct.netmap_adapter*, %struct.nm_bdg_polling_state*)* @get_polling_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_polling_cfg(%struct.nmreq_vale_polling* %0, %struct.netmap_adapter* %1, %struct.nm_bdg_polling_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nmreq_vale_polling*, align 8
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca %struct.nm_bdg_polling_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nmreq_vale_polling* %0, %struct.nmreq_vale_polling** %5, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %6, align 8
  store %struct.nm_bdg_polling_state* %2, %struct.nm_bdg_polling_state** %7, align 8
  %14 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %15 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %18 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = call i32 (...) @nm_os_ncpus()
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %116

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %36 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NETMAP_POLLING_MODE_MULTI_CPU, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %45 = load i32, i32* @NR_RX, align 4
  %46 = call i32 @nma_get_nrings(%struct.netmap_adapter* %44, i32 %45)
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %50, %51
  %53 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %54 = load i32, i32* @NR_RX, align 4
  %55 = call i32 @nma_get_nrings(%struct.netmap_adapter* %53, i32 %54)
  %56 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %4, align 4
  br label %116

58:                                               ; preds = %40
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %9, align 4
  br label %86

64:                                               ; preds = %34
  %65 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %66 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NETMAP_POLLING_MODE_SINGLE_CPU, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %4, align 4
  br label %116

77:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %78 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %79 = load i32, i32* @NR_RX, align 4
  %80 = call i32 @nma_get_nrings(%struct.netmap_adapter* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %9, align 4
  br label %85

82:                                               ; preds = %64
  %83 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %4, align 4
  br label %116

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %58
  %87 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %88 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %7, align 8
  %91 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %7, align 8
  %94 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %7, align 8
  %97 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %7, align 8
  %100 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %7, align 8
  %103 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %5, align 8
  %105 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NETMAP_POLLING_MODE_MULTI_CPU, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @nm_prinf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %86, %82, %73, %48, %30, %23
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @nm_os_ncpus(...) #1

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i32 @nma_get_nrings(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @nm_prinf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
