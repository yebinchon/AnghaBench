; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_attachcommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_attachcommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.rp_port* }
%struct.rp_port = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.tty* }
%struct.tty = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"RocketPort%d (Version %s) %d ports.\0A\00", align 1
@RocketPortVersion = common dso_local global i8* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"rp_attachcommon: Could not malloc rp_ports structures.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rp_tty_class = common dso_local global i32 0, align 4
@RXF_TRIG = common dso_local global i32 0, align 4
@TXFIFO_MT = common dso_local global i32 0, align 4
@SRC_INT = common dso_local global i32 0, align 4
@DELTA_CD = common dso_local global i32 0, align 4
@DELTA_CTS = common dso_local global i32 0, align 4
@DELTA_DSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"RocketPort sInitChan(%d, %d, %d) failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CTS_ACT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"R%r%r\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rp_hwmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rp_attachcommon(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rp_port*, align 8
  %16 = alloca %struct.tty*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_get_unit(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** @RocketPortVersion, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 56, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @malloc(i32 %31, i32 %32, i32 %35)
  %37 = inttoptr i64 %36 to %struct.rp_port*
  store %struct.rp_port* %37, %struct.rp_port** %15, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store %struct.rp_port* %37, %struct.rp_port** %39, align 8
  %40 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %41 = icmp eq %struct.rp_port* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %14, align 4
  br label %148

48:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %138, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %141

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sGetAiopNumChan(%struct.TYPE_6__* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %130, %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %137

61:                                               ; preds = %57
  %62 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %63 = call %struct.tty* @tty_alloc(i32* @rp_tty_class, %struct.rp_port* %62)
  store %struct.tty* %63, %struct.tty** %16, align 8
  %64 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %65 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %64, i32 0, i32 9
  store %struct.tty* %63, %struct.tty** %65, align 8
  %66 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %67 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %66, i32 0, i32 8
  %68 = load %struct.tty*, %struct.tty** %16, align 8
  %69 = call i32 @tty_getlock(%struct.tty* %68)
  %70 = call i32 @callout_init_mtx(i32* %67, i32 %69, i32 0)
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %73 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %76 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %75, i32 0, i32 7
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %79 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %82 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %85 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @RXF_TRIG, align 4
  %87 = load i32, i32* @TXFIFO_MT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SRC_INT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @DELTA_CD, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @DELTA_CTS, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @DELTA_DSR, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %98 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %101 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %100, i32 0, i32 6
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @sInitChan(%struct.TYPE_6__* %99, i32* %101, i32 %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %61
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %14, align 4
  br label %148

115:                                              ; preds = %61
  %116 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %117 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %116, i32 0, i32 6
  %118 = call i32 @sGetChanStatus(i32* %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @CTS_ACT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %125 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tty*, %struct.tty** %16, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @tty_makedev(%struct.tty* %126, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load %struct.rp_port*, %struct.rp_port** %15, align 8
  %136 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %135, i32 1
  store %struct.rp_port* %136, %struct.rp_port** %15, align 8
  br label %57

137:                                              ; preds = %57
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %49

141:                                              ; preds = %49
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* @MTX_DEF, align 4
  %145 = call i32 @mtx_init(i32* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  store i32 0, i32* %4, align 4
  br label %152

148:                                              ; preds = %106, %42
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = call i32 @rp_releaseresource(%struct.TYPE_6__* %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %141
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @sGetAiopNumChan(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.rp_port*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32, i32) #1

declare dso_local i32 @tty_getlock(%struct.tty*) #1

declare dso_local i64 @sInitChan(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @sGetChanStatus(i32*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rp_releaseresource(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
