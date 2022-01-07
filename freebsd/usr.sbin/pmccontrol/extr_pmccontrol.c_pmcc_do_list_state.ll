; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmccontrol/extr_pmccontrol.c_pmcc_do_list_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmccontrol/extr_pmccontrol.c_pmcc_do_list_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_info = type { i8*, i32, i32, i32, i32, i32, i64, i32 }
%struct.pmc_pmcinfo = type { %struct.pmc_info* }
%struct.pmc_cpuinfo = type { i32, i64, i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to determine CPU information\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%d %s CPUs present, with %d PMCs per CPU\0A\00", align 1
@_SC_CPUSET_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot determine which CPUs are logical\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"machdep.logical_cpus_mask\00", align 1
@PMC_CPU_INTEL_PIV = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to get PMC status for CPU %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"#CPU %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"#N  NAME             CLASS  STATE    ROW-DISP\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c" %-2d %-16s %-6s %-8s %-10s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" (pid %d)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" %-32s\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c" (reload count %jd)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pmcc_do_list_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcc_do_list_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmc_info*, align 8
  %10 = alloca %struct.pmc_pmcinfo*, align 8
  %11 = alloca %struct.pmc_cpuinfo*, align 8
  %12 = call i64 @pmc_cpuinfo(%struct.pmc_cpuinfo** %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @EX_OSERR, align 4
  %16 = call i32 (i32, i8*, ...) @err(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %0
  %18 = load %struct.pmc_cpuinfo*, %struct.pmc_cpuinfo** %11, align 8
  %19 = getelementptr inbounds %struct.pmc_cpuinfo, %struct.pmc_cpuinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pmc_cpuinfo*, %struct.pmc_cpuinfo** %11, align 8
  %22 = getelementptr inbounds %struct.pmc_cpuinfo, %struct.pmc_cpuinfo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @pmc_name_of_cputype(i64 %23)
  %25 = load %struct.pmc_cpuinfo*, %struct.pmc_cpuinfo** %11, align 8
  %26 = getelementptr inbounds %struct.pmc_cpuinfo, %struct.pmc_cpuinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %24, i32 %27)
  %29 = load i32, i32* @_SC_CPUSET_SIZE, align 4
  %30 = call i64 @sysconf(i32 %29)
  store i64 %30, i64* %2, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %2, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %17
  %39 = load i32, i32* @EX_OSERR, align 4
  %40 = call i32 (i32, i8*, ...) @err(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i32 @CPU_ZERO(i32* %1)
  %43 = load i64, i64* %2, align 8
  store i64 %43, i64* %3, align 8
  %44 = call i64 @sysctlbyname(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %1, i64* %3, i32* null, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @CPU_ZERO(i32* %1)
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.pmc_cpuinfo*, %struct.pmc_cpuinfo** %11, align 8
  %50 = getelementptr inbounds %struct.pmc_cpuinfo, %struct.pmc_cpuinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %150, %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %153

56:                                               ; preds = %52
  %57 = load %struct.pmc_cpuinfo*, %struct.pmc_cpuinfo** %11, align 8
  %58 = getelementptr inbounds %struct.pmc_cpuinfo, %struct.pmc_cpuinfo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PMC_CPU_INTEL_PIV, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @CPU_ISSET(i32 %63, i32* %1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %150

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @pmc_pmcinfo(i32 %68, %struct.pmc_pmcinfo** %10)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENXIO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %150

76:                                               ; preds = %71
  %77 = load i32, i32* @EX_OSERR, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @err(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %67
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @pmc_npmc(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %144, %80
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %147

91:                                               ; preds = %87
  %92 = load %struct.pmc_pmcinfo*, %struct.pmc_pmcinfo** %10, align 8
  %93 = getelementptr inbounds %struct.pmc_pmcinfo, %struct.pmc_pmcinfo* %92, i32 0, i32 0
  %94 = load %struct.pmc_info*, %struct.pmc_info** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %94, i64 %96
  store %struct.pmc_info* %97, %struct.pmc_info** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %100 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %103 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @pmc_name_of_class(i32 %104)
  %106 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %107 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %112 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %113 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @pmc_name_of_disposition(i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %98, i8* %101, i8* %105, i8* %111, i8* %115)
  %117 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %118 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %142

121:                                              ; preds = %91
  %122 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %123 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  %126 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %127 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @pmc_name_of_event(i32 %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  %131 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %132 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @PMC_IS_SAMPLING_MODE(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.pmc_info*, %struct.pmc_info** %9, align 8
  %138 = getelementptr inbounds %struct.pmc_info, %struct.pmc_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %136, %121
  br label %142

142:                                              ; preds = %141, %91
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %87

147:                                              ; preds = %87
  %148 = load %struct.pmc_pmcinfo*, %struct.pmc_pmcinfo** %10, align 8
  %149 = call i32 @free(%struct.pmc_pmcinfo* %148)
  br label %150

150:                                              ; preds = %147, %75, %66
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %52

153:                                              ; preds = %52
  ret i32 0
}

declare dso_local i64 @pmc_cpuinfo(%struct.pmc_cpuinfo**) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @pmc_name_of_cputype(i64) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i64 @pmc_pmcinfo(i32, %struct.pmc_pmcinfo**) #1

declare dso_local i32 @pmc_npmc(i32) #1

declare dso_local i8* @pmc_name_of_class(i32) #1

declare dso_local i8* @pmc_name_of_disposition(i32) #1

declare dso_local i8* @pmc_name_of_event(i32) #1

declare dso_local i64 @PMC_IS_SAMPLING_MODE(i32) #1

declare dso_local i32 @free(%struct.pmc_pmcinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
