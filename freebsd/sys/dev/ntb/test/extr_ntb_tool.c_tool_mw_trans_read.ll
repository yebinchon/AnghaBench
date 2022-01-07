; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_mw_trans_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_mw_trans_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_mw = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_req = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"\0AInbound MW     \09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Port           \09%d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Window Address \09%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DMA Address    \090x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Window Size    \090x%016zx[p]\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Alignment      \090x%016zx[p]\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Size Alignment \090x%016zx[p]\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Size Max       \090x%016zx[p]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_mw*, %struct.sysctl_req*)* @tool_mw_trans_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_mw_trans_read(%struct.tool_mw* %0, %struct.sysctl_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tool_mw*, align 8
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.tool_mw* %0, %struct.tool_mw** %4, align 8
  store %struct.sysctl_req* %1, %struct.sysctl_req** %5, align 8
  store i32 512, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %11 = call %struct.sbuf* @sbuf_new_for_sysctl(i32* null, i32* null, i32 %9, %struct.sysctl_req* %10)
  store %struct.sbuf* %11, %struct.sbuf** %7, align 8
  %12 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %13 = icmp eq %struct.sbuf* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %16 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %21 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %22 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %26 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %27 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %26, i32 0, i32 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %32 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntb_peer_port_number(i32 %30, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %37 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %38)
  %40 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %41 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %42 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %46 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %47 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %51 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %52 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %56 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %57 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  %60 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %61 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %62 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  %65 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %66 = load %struct.tool_mw*, %struct.tool_mw** %4, align 8
  %67 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %68)
  %70 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %71 = call i32 @sbuf_finish(%struct.sbuf* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %73 = call i32 @sbuf_delete(%struct.sbuf* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %19, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.sbuf* @sbuf_new_for_sysctl(i32*, i32*, i32, %struct.sysctl_req*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i64, ...) #1

declare dso_local i32 @ntb_peer_port_number(i32, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
