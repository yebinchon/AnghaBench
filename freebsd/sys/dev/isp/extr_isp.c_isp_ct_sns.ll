; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_ct_sns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_ct_sns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32* }

@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CT SNS request\00", align 1
@SYNC_SFORDEV = common dso_local global i32 0, align 4
@MBOX_SEND_SNS = common dso_local global i32 0, align 4
@MBLOGALL = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@MBOX_INVALID_COMMAND = common dso_local global i32 0, align 4
@SYNC_SFORCPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CT response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i32)* @isp_ct_sns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_ct_sns(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_14__* @FCPARAM(%struct.TYPE_13__* %12, i32 %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @isp_print_bytes(%struct.TYPE_13__* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = load i32, i32* @SYNC_SFORDEV, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @MEMORYBARRIER(%struct.TYPE_13__* %29, i32 %30, i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* @MBOX_SEND_SNS, align 4
  %35 = load i32, i32* @MBLOGALL, align 4
  %36 = call i32 @MBSINIT(%struct.TYPE_12__* %11, i32 %34, i32 %35, i32 10000000)
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DMA_WD1(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DMA_WD0(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DMA_WD3(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DMA_WD2(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = call i32 @isp_mboxcmd(%struct.TYPE_13__* %70, %struct.TYPE_12__* %11)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %28
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MBOX_INVALID_COMMAND, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %107

86:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %107

87:                                               ; preds = %28
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = load i32, i32* @SYNC_SFORCPU, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @MEMORYBARRIER(%struct.TYPE_13__* %88, i32 %89, i32 0, i32 %90, i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @isp_print_bytes(%struct.TYPE_13__* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %99, %87
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %86, %85
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_14__* @FCPARAM(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @isp_print_bytes(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @MEMORYBARRIER(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @DMA_WD1(i32) #1

declare dso_local i32 @DMA_WD0(i32) #1

declare dso_local i32 @DMA_WD3(i32) #1

declare dso_local i32 @DMA_WD2(i32) #1

declare dso_local i32 @isp_mboxcmd(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
