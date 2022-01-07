; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_write_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { %struct.TYPE_11__, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.fw_pkt, i32 }
%struct.fw_pkt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sbp_dev = type { %struct.sbp_target*, %struct.TYPE_12__* }
%struct.sbp_target = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"sbp: no more xfer for this target\0A\00", align 1
@M_SBP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sbp: fw_xfer_alloc_buf failed\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"sbp: alloc %d xfer\0A\00", align 1
@link = common dso_local global i32 0, align 4
@max_speed = common dso_local global i32 0, align 4
@FWTCODE_WREQB = common dso_local global i32 0, align 4
@FWLOCALBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_xfer* (%struct.sbp_dev*, i32, i32)* @sbp_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_xfer* @sbp_write_cmd(%struct.sbp_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_xfer*, align 8
  %5 = alloca %struct.sbp_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_xfer*, align 8
  %9 = alloca %struct.fw_pkt*, align 8
  %10 = alloca %struct.sbp_target*, align 8
  %11 = alloca i32, align 4
  store %struct.sbp_dev* %0, %struct.sbp_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %13 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %12, i32 0, i32 0
  %14 = load %struct.sbp_target*, %struct.sbp_target** %13, align 8
  %15 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = call i32 @SBP_LOCK_ASSERT(%struct.TYPE_16__* %16)
  %18 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %19 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %18, i32 0, i32 0
  %20 = load %struct.sbp_target*, %struct.sbp_target** %19, align 8
  store %struct.sbp_target* %20, %struct.sbp_target** %10, align 8
  %21 = load %struct.sbp_target*, %struct.sbp_target** %10, align 8
  %22 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %21, i32 0, i32 3
  %23 = call %struct.fw_xfer* @STAILQ_FIRST(i32* %22)
  store %struct.fw_xfer* %23, %struct.fw_xfer** %8, align 8
  %24 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %25 = icmp eq %struct.fw_xfer* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %3
  %27 = load %struct.sbp_target*, %struct.sbp_target** %10, align 8
  %28 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 5
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.fw_xfer* null, %struct.fw_xfer** %4, align 8
  br label %155

33:                                               ; preds = %26
  %34 = load i32, i32* @M_SBP, align 4
  %35 = call %struct.fw_xfer* @fw_xfer_alloc_buf(i32 %34, i32 8, i32 0)
  store %struct.fw_xfer* %35, %struct.fw_xfer** %8, align 8
  %36 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %37 = icmp eq %struct.fw_xfer* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fw_xfer* null, %struct.fw_xfer** %4, align 8
  br label %155

40:                                               ; preds = %33
  %41 = load %struct.sbp_target*, %struct.sbp_target** %10, align 8
  %42 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i64, i64* @debug, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.sbp_target*, %struct.sbp_target** %10, align 8
  %49 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  store i32 1, i32* %11, align 4
  br label %58

53:                                               ; preds = %3
  %54 = load %struct.sbp_target*, %struct.sbp_target** %10, align 8
  %55 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %54, i32 0, i32 3
  %56 = load i32, i32* @link, align 4
  %57 = call i32 @STAILQ_REMOVE_HEAD(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %52
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %63 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %66 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %65, i32 0, i32 0
  %67 = load %struct.sbp_target*, %struct.sbp_target** %66, align 8
  %68 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @max_speed, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  %74 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %75 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %78 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %77, i32 0, i32 0
  %79 = load %struct.sbp_target*, %struct.sbp_target** %78, align 8
  %80 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %86 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %61, %58
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @FWTCODE_WREQB, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %93 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 8, i32* %94, align 8
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %97 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %101 = ptrtoint %struct.sbp_dev* %100 to i64
  %102 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %103 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %105 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store %struct.fw_pkt* %106, %struct.fw_pkt** %9, align 8
  %107 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %108 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %113 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  store i32 %111, i32* %115, align 8
  %116 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %117 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %125 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  store i64 %123, i64* %127, align 8
  %128 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %129 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %134 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  %137 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %138 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @FWLOCALBUS, align 4
  %142 = load %struct.sbp_dev*, %struct.sbp_dev** %5, align 8
  %143 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %142, i32 0, i32 0
  %144 = load %struct.sbp_target*, %struct.sbp_target** %143, align 8
  %145 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %144, i32 0, i32 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %141, %148
  %150 = load %struct.fw_pkt*, %struct.fw_pkt** %9, align 8
  %151 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  store %struct.fw_xfer* %154, %struct.fw_xfer** %4, align 8
  br label %155

155:                                              ; preds = %99, %38, %31
  %156 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  ret %struct.fw_xfer* %156
}

declare dso_local i32 @SBP_LOCK_ASSERT(%struct.TYPE_16__*) #1

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.fw_xfer* @fw_xfer_alloc_buf(i32, i32, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
