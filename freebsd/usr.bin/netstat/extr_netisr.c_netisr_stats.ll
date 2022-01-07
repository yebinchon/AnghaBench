; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_netisr_proto = type { i32 }
%struct.sysctl_netisr_workstream = type { i32 }

@live = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"netisr\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"{T:Configuration}:\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"{T:/%-25s} {T:/%12s} {T:/%12s}\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"{T:/%-25s} {T:/%12u} {T:/%12u}\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Thread count\00", align 1
@numthreads = common dso_local global i32 0, align 4
@maxthreads = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Default queue limit\00", align 1
@defaultqlimit = common dso_local global i32 0, align 4
@maxqlimit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Dispatch policy\00", align 1
@dispatch_policy = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Threads bound to CPUs\00", align 1
@bindthreads = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"{T:Protocols}:\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"{T:/%-6s} {T:/%5s} {T:/%6s} {T:/%-6s} {T:/%-8s} {T:/%-5s}\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Proto\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"QLimit\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Dispatch\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@proto_array_len = common dso_local global i64 0, align 8
@proto_array = common dso_local global %struct.sysctl_netisr_proto* null, align 8
@.str.24 = private unnamed_addr constant [18 x i8] c"{T:Workstreams}:\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"{T:/%4s} {T:/%3s} \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"WSID\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"{P:/%2s}\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [74 x i8] c"{T:/%-6s} {T:/%5s} {T:/%5s} {T:/%8s} {T:/%8s} {T:/%8s} {T:/%8s} {T:/%8s}\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Len\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"WMark\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Disp'd\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"HDisp'd\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"QDrops\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Queued\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Handled\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"workstream\00", align 1
@workstream_array_len = common dso_local global i64 0, align 8
@workstream_array = common dso_local global %struct.sysctl_netisr_workstream* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netisr_stats() #0 {
  %1 = alloca %struct.sysctl_netisr_workstream*, align 8
  %2 = alloca %struct.sysctl_netisr_proto*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @live, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = call i32 (...) @netisr_load_sysctl_config()
  %8 = call i32 (...) @netisr_load_sysctl_proto()
  %9 = call i32 (...) @netisr_load_sysctl_workstream()
  %10 = call i32 (...) @netisr_load_sysctl_work()
  br label %15

11:                                               ; preds = %0
  %12 = call i32 (...) @netisr_load_kvm_config()
  %13 = call i32 (...) @netisr_load_kvm_proto()
  %14 = call i32 (...) @netisr_load_kvm_workstream()
  br label %15

15:                                               ; preds = %11, %6
  %16 = call i32 @xo_open_container(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @numthreads, align 4
  %20 = load i32, i32* @maxthreads, align 4
  %21 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @defaultqlimit, align 4
  %23 = load i32, i32* @maxqlimit, align 4
  %24 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @dispatch_policy, align 4
  %26 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i64, i64* @bindthreads, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %35 = call i32 @xo_open_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %48, %15
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @proto_array_len, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = call i32 @xo_open_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %42 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** @proto_array, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.sysctl_netisr_proto, %struct.sysctl_netisr_proto* %42, i64 %43
  store %struct.sysctl_netisr_proto* %44, %struct.sysctl_netisr_proto** %2, align 8
  %45 = load %struct.sysctl_netisr_proto*, %struct.sysctl_netisr_proto** %2, align 8
  %46 = call i32 @netisr_print_proto(%struct.sysctl_netisr_proto* %45)
  %47 = call i32 @xo_close_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %36

51:                                               ; preds = %36
  %52 = call i32 @xo_close_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  %58 = call i32 @xo_open_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %59

59:                                               ; preds = %71, %51
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @workstream_array_len, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = call i32 @xo_open_instance(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %65 = load %struct.sysctl_netisr_workstream*, %struct.sysctl_netisr_workstream** @workstream_array, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.sysctl_netisr_workstream, %struct.sysctl_netisr_workstream* %65, i64 %66
  store %struct.sysctl_netisr_workstream* %67, %struct.sysctl_netisr_workstream** %1, align 8
  %68 = load %struct.sysctl_netisr_workstream*, %struct.sysctl_netisr_workstream** %1, align 8
  %69 = call i32 @netisr_print_workstream(%struct.sysctl_netisr_workstream* %68)
  %70 = call i32 @xo_close_instance(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  br label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %59

74:                                               ; preds = %59
  %75 = call i32 @xo_close_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %76 = call i32 @xo_close_container(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @netisr_load_sysctl_config(...) #1

declare dso_local i32 @netisr_load_sysctl_proto(...) #1

declare dso_local i32 @netisr_load_sysctl_workstream(...) #1

declare dso_local i32 @netisr_load_sysctl_work(...) #1

declare dso_local i32 @netisr_load_kvm_config(...) #1

declare dso_local i32 @netisr_load_kvm_proto(...) #1

declare dso_local i32 @netisr_load_kvm_workstream(...) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @netisr_print_proto(%struct.sysctl_netisr_proto*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @netisr_print_workstream(%struct.sysctl_netisr_workstream*) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
