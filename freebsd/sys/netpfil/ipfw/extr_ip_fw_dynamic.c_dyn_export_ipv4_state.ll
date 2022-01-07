; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_ipv4_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_ipv4_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_ipv4_state = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.ip_fw* }
%struct.ip_fw = type { i32 }
%struct.TYPE_10__ = type { %struct.ip_fw* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@O_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dyn_ipv4_state*, %struct.TYPE_9__*)* @dyn_export_ipv4_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_export_ipv4_state(%struct.dyn_ipv4_state* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.dyn_ipv4_state*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.ip_fw*, align 8
  store %struct.dyn_ipv4_state* %0, %struct.dyn_ipv4_state** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %7 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %26 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %11 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %10, i32 0, i32 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.ip_fw*, %struct.ip_fw** %13, align 8
  store %struct.ip_fw* %14, %struct.ip_fw** %5, align 8
  %15 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %16 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %15, i32 0, i32 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %19 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %22 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @dyn_export_parent(%struct.TYPE_10__* %17, i32 %20, i32 %23, %struct.TYPE_9__* %24)
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %28 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.ip_fw*, %struct.ip_fw** %30, align 8
  store %struct.ip_fw* %31, %struct.ip_fw** %5, align 8
  %32 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %33 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @O_LIMIT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %39 = bitcast %struct.ip_fw* %38 to %struct.dyn_ipv4_state*
  %40 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %39, i32 0, i32 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.ip_fw*, %struct.ip_fw** %42, align 8
  store %struct.ip_fw* %43, %struct.ip_fw** %5, align 8
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %46 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %49 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %52 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %55 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = call i32 @dyn_export_data(%struct.TYPE_11__* %47, i32 %50, i32 %53, i32 %56, %struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %44, %9
  %60 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %61 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 11
  store i32 %62, i32* %65, align 4
  %66 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %67 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 10
  store i32 %68, i32* %71, align 8
  %72 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %73 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 9
  store i32 %74, i32* %77, align 4
  %78 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %79 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 8
  %84 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %85 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 7
  store i32 %88, i32* %91, align 4
  %92 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %3, align 8
  %93 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 4, i32* %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = call i32 @memset(i32* %106, i32 0, i32 4)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = call i32 @memset(i32* %110, i32 0, i32 4)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  ret void
}

declare dso_local i32 @dyn_export_parent(%struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dyn_export_data(%struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
