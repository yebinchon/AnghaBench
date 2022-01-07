; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_mroute.c_print_mfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_mroute.c_print_mfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc = type { i64*, %struct.bw_meter*, i32, i32, i32, i32 }
%struct.bw_meter = type { %struct.bw_meter* }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"multicast-forwarding-entry\00", align 1
@.str.1 = private unnamed_addr constant [119 x i8] c"\0A{T:IPv4 Multicast Forwarding Table}\0A {T:Origin}          {T:Group}             {T:Packets In-Vif}  {T:Out-Vifs:Ttls}\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" {:origin-address/%-15.15s}\00", align 1
@numeric_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c" {:group-address/%-15.15s}\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c" {:sent-packets/%9lu}\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  {:parent/%3d}   \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vif-ttl\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" {k:vif/%u}:{:ttl/%u}\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bandwidth-meter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfc*, i32, i32*)* @print_mfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mfc(%struct.mfc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.bw_meter, align 8
  %10 = alloca %struct.bw_meter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mfc* %0, %struct.mfc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 12)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 12, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = call i32 @xo_open_list(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %28 = load %struct.mfc*, %struct.mfc** %4, align 8
  %29 = getelementptr inbounds %struct.mfc, %struct.mfc* %28, i32 0, i32 5
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  %31 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %32 = load i32, i32* @numeric_addr, align 4
  %33 = call i32 @routename(%struct.sockaddr* %31, i32 %32)
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %36 = load %struct.mfc*, %struct.mfc** %4, align 8
  %37 = getelementptr inbounds %struct.mfc, %struct.mfc* %36, i32 0, i32 4
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = load i32, i32* @numeric_addr, align 4
  %41 = call i32 @routename(%struct.sockaddr* %39, i32 %40)
  %42 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.mfc*, %struct.mfc** %4, align 8
  %44 = getelementptr inbounds %struct.mfc, %struct.mfc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.mfc*, %struct.mfc** %4, align 8
  %48 = getelementptr inbounds %struct.mfc, %struct.mfc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = call i32 @xo_open_list(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %78, %26
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.mfc*, %struct.mfc** %4, align 8
  %58 = getelementptr inbounds %struct.mfc, %struct.mfc* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = call i32 @xo_open_instance(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.mfc*, %struct.mfc** %4, align 8
  %69 = getelementptr inbounds %struct.mfc, %struct.mfc* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %67, i64 %74)
  %76 = call i32 @xo_close_instance(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %65, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %52

81:                                               ; preds = %52
  %82 = call i32 @xo_close_list(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %84 = load %struct.mfc*, %struct.mfc** %4, align 8
  %85 = getelementptr inbounds %struct.mfc, %struct.mfc* %84, i32 0, i32 1
  %86 = load %struct.bw_meter*, %struct.bw_meter** %85, align 8
  store %struct.bw_meter* %86, %struct.bw_meter** %10, align 8
  br label %87

87:                                               ; preds = %98, %81
  %88 = load %struct.bw_meter*, %struct.bw_meter** %10, align 8
  %89 = icmp ne %struct.bw_meter* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.bw_meter*, %struct.bw_meter** %10, align 8
  %92 = ptrtoint %struct.bw_meter* %91 to i32
  %93 = bitcast %struct.bw_meter* %9 to i8*
  %94 = call i32 @kread(i32 %92, i8* %93, i32 8)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %102

98:                                               ; preds = %90
  %99 = call i32 @print_bw_meter(%struct.bw_meter* %9, i32* %11)
  %100 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %9, i32 0, i32 0
  %101 = load %struct.bw_meter*, %struct.bw_meter** %100, align 8
  store %struct.bw_meter* %101, %struct.bw_meter** %10, align 8
  br label %87

102:                                              ; preds = %97, %87
  %103 = load i32*, i32** %6, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @xo_close_list(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @routename(%struct.sockaddr*, i32) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @kread(i32, i8*, i32) #1

declare dso_local i32 @print_bw_meter(%struct.bw_meter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
