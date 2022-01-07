; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_pdb_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_pdb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@LOOP_FSCAN_DONE = common dso_local global i64 0, align 8
@LOOP_READY = common dso_local global i64 0, align 8
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Chan %d FC PDB sync\00", align 1
@LOOP_SYNCING_PDB = common dso_local global i64 0, align 8
@MAX_FC_TARG = common dso_local global i64 0, align 8
@FC_PORTDB_STATE_NIL = common dso_local global i32 0, align 4
@ISPASYNC_DEV_GONE = common dso_local global i32 0, align 4
@PLOGX_FLG_CMD_LOGO = common dso_local global i32 0, align 4
@PLOGX_FLG_IMPLICIT = common dso_local global i32 0, align 4
@PLOGX_FLG_FREE_NPHDL = common dso_local global i32 0, align 4
@ISPASYNC_DEV_ARRIVED = common dso_local global i32 0, align 4
@ISPASYNC_DEV_CHANGED = common dso_local global i32 0, align 4
@ISPASYNC_DEV_STAYED = common dso_local global i32 0, align 4
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"isp_pdb_sync: state %d for idx %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Chan %d FC PDB sync aborted\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Chan %d FC PDB sync done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isp_pdb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pdb_sync(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_6__* @FCPARAM(i32* %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %168

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LOOP_READY, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %168

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %26, i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @LOOP_SYNCING_PDB, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %146, %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @MAX_FC_TARG, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %149

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FC_PORTDB_STATE_NIL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %146

49:                                               ; preds = %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 128
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 131, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %134 [
    i32 131, label %66
    i32 130, label %96
    i32 132, label %104
    i32 129, label %127
    i32 128, label %133
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @FC_PORTDB_STATE_NIL, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @ISPASYNC_DEV_GONE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = call i32 @isp_async(i32* %70, i32 %71, i32 %72, %struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 16776960
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %66
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PLOGX_FLG_CMD_LOGO, align 4
  %90 = load i32, i32* @PLOGX_FLG_IMPLICIT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PLOGX_FLG_FREE_NPHDL, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @isp_plogx(i32* %81, i32 %82, i32 %85, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %80, %66
  br label %145

96:                                               ; preds = %62
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 129, i32* %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @ISPASYNC_DEV_ARRIVED, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = call i32 @isp_async(i32* %99, i32 %100, i32 %101, %struct.TYPE_5__* %102)
  br label %145

104:                                              ; preds = %62
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 129, i32* %106, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @ISPASYNC_DEV_CHANGED, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = call i32 @isp_async(i32* %107, i32 %108, i32 %109, %struct.TYPE_5__* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %145

127:                                              ; preds = %62
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @ISPASYNC_DEV_STAYED, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = call i32 @isp_async(i32* %128, i32 %129, i32 %130, %struct.TYPE_5__* %131)
  br label %145

133:                                              ; preds = %62
  br label %145

134:                                              ; preds = %62
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @ISP_LOGWARN, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %135, i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %139, i64 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @isp_dump_portdb(i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %134, %133, %127, %104, %96, %95
  br label %146

146:                                              ; preds = %145, %48
  %147 = load i64, i64* %8, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %8, align 8
  br label %33

149:                                              ; preds = %33
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LOOP_SYNCING_PDB, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %156, i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  store i32 1, i32* %3, align 4
  br label %168

160:                                              ; preds = %149
  %161 = load i64, i64* @LOOP_READY, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %164, i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %160, %155, %24, %17
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_6__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @isp_async(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @isp_plogx(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @isp_dump_portdb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
