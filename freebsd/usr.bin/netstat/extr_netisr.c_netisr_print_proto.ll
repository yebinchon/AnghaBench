; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_print_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_print_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_netisr_proto = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"{[:-6}{k:name/%s}{]:}\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" {:protocol/%5u}\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" {:queue-limit/%6u}\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" {:policy-type/%6s}\00", align 1
@NETISR_POLICY_SOURCE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@NETISR_POLICY_FLOW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@NETISR_POLICY_CPU = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" {:policy/%8s}\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"   {:flags/%s%s%s}\0A\00", align 1
@NETISR_SNP_FLAGS_M2CPUID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@NETISR_SNP_FLAGS_DRAINEDCPU = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@NETISR_SNP_FLAGS_M2FLOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_netisr_proto*)* @netisr_print_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netisr_print_proto(%struct.sysctl_netisr_proto* %0) #0 {
  %2 = alloca %struct.sysctl_netisr_proto*, align 8
  %3 = alloca [20 x i8], align 16
  store %struct.sysctl_netisr_proto* %0, %struct.sysctl_netisr_proto** %2, align 8
  %4 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %5 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %11 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %17 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %23 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETISR_POLICY_SOURCE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %30 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NETISR_POLICY_FLOW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %37 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NETISR_POLICY_CPU, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  br label %43

43:                                               ; preds = %35, %34
  %44 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %34 ], [ %42, %35 ]
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %27 ], [ %44, %43 ]
  %47 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %49 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %52 = call i32 @netisr_dispatch_policy_to_string(i32 %50, i8* %51, i32 20)
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %54 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %53)
  %55 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %56 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NETISR_SNP_FLAGS_M2CPUID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %63 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %64 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NETISR_SNP_FLAGS_DRAINEDCPU, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %71 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %72 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NETISR_SNP_FLAGS_M2FLOW, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %79 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %62, i8* %70, i8* %78)
  ret void
}

declare dso_local i32 @xo_emit(i8*, i8*, ...) #1

declare dso_local i32 @netisr_dispatch_policy_to_string(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
