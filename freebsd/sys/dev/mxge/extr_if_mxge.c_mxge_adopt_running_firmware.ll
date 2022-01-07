; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_adopt_running_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_adopt_running_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.mcp_gen_header = type { i32 }

@MCP_HEADER_PTR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Running firmware has bad header offset (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not malloc firmware hdr\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Adopting fw %d.%d.%d: working around rx filter bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @mxge_adopt_running_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_adopt_running_firmware(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.mcp_gen_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 4, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MCP_HEADER_PTR_OFFSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = inttoptr i64 %12 to i32*
  %14 = load volatile i32, i32* %13, align 4
  %15 = call i64 @htobe32(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 3
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %19
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call %struct.mcp_gen_header* @malloc(i64 4, i32 %35, i32 %36)
  store %struct.mcp_gen_header* %37, %struct.mcp_gen_header** %4, align 8
  %38 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %39 = icmp eq %struct.mcp_gen_header* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %102

46:                                               ; preds = %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rman_get_bustag(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rman_get_bushandle(i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %57 = bitcast %struct.mcp_gen_header* %56 to i8*
  %58 = call i32 @bus_space_read_region_1(i32 %50, i32 %54, i64 %55, i8* %57, i64 4)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %61 = call i32 @mxge_validate_firmware(%struct.TYPE_4__* %59, %struct.mcp_gen_header* %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.mcp_gen_header* %62, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %100

69:                                               ; preds = %46
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 4
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 11
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %84, %79, %74, %69, %46
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %40, %26
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @htobe32(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.mcp_gen_header* @malloc(i64, i32, i32) #1

declare dso_local i32 @bus_space_read_region_1(i32, i32, i64, i8*, i64) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @mxge_validate_firmware(%struct.TYPE_4__*, %struct.mcp_gen_header*) #1

declare dso_local i32 @free(%struct.mcp_gen_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
