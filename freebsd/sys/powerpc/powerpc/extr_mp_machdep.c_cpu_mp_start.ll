; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i64, i32, i32, i32 }
%struct.cpuref = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Don't know BSP\00", align 1
@MAXCPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SMP: cpu%d: skipped -- ID out of range\0A\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"SMP: cpu%d: skipped - duplicate ID\0A\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@__pcpu = common dso_local global %struct.pcpu* null, align 8
@DPCPU_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pcpup = common dso_local global %struct.pcpu* null, align 8
@cpuset_domain = common dso_local global i32* null, align 8
@MAXMEMDOM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"bad domain value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = alloca %struct.cpuref, align 4
  %2 = alloca %struct.cpuref, align 4
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = call i32 @platform_smp_get_bsp(%struct.cpuref* %1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @platform_smp_first_cpu(%struct.cpuref* %2)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %116, %0
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %118

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAXCPU, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %116

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CPU_ISSET(i32 %28, i32* @all_cpus)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %116

35:                                               ; preds = %26
  %36 = load i32, i32* @vm_ndomains, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %50 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %49, i64 %52
  store %struct.pcpu* %53, %struct.pcpu** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DOMAINSET_PREF(i32 %54)
  %56 = load i32, i32* @DPCPU_SIZE, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @kmem_malloc_domainset(i32 %55, i32 %56, i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %6, align 8
  %62 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %63 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @pcpu_init(%struct.pcpu* %62, i64 %65, i32 24)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @dpcpu_init(i8* %67, i64 %70)
  br label %81

72:                                               ; preds = %42
  %73 = load %struct.pcpu*, %struct.pcpu** @pcpup, align 8
  store %struct.pcpu* %73, %struct.pcpu** %3, align 8
  %74 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %1, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %78 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %80 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %48
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %84 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.cpuref, %struct.cpuref* %2, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %88 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %90 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** @cpuset_domain, align 8
  %93 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %94 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = call i32 @CPU_SET(i64 %91, i32* %97)
  %99 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %100 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @MAXMEMDOM, align 8
  %104 = icmp ult i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %107 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @KASSERT(i32 %105, i8* %110)
  %112 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %113 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @CPU_SET(i64 %114, i32* @all_cpus)
  br label %116

116:                                              ; preds = %81, %31, %22
  %117 = call i32 @platform_smp_next_cpu(%struct.cpuref* %2)
  store i32 %117, i32* %5, align 4
  br label %13

118:                                              ; preds = %13
  ret void
}

declare dso_local i32 @platform_smp_get_bsp(%struct.cpuref*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @platform_smp_first_cpu(%struct.cpuref*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i64 @kmem_malloc_domainset(i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @pcpu_init(%struct.pcpu*, i64, i32) #1

declare dso_local i32 @dpcpu_init(i8*, i64) #1

declare dso_local i32 @CPU_SET(i64, i32*) #1

declare dso_local i32 @platform_smp_next_cpu(%struct.cpuref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
