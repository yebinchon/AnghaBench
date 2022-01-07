; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_login_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_login_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@NPH_MAX_2K = common dso_local global i32 0, align 4
@NPH_MAX = common dso_local global i32 0, align 4
@LOOP_SCANNING_FABRIC = common dso_local global i64 0, align 8
@PLOGX_FLG_CMD_PLOGI = common dso_local global i32 0, align 4
@MBOX_PORT_ID_USED = common dso_local global i32 0, align 4
@PLOGX_FLG_CMD_LOGO = common dso_local global i32 0, align 4
@PLOGX_FLG_IMPLICIT = common dso_local global i32 0, align 4
@PLOGX_FLG_FREE_NPHDL = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"baw... logout of %x failed\00", align 1
@MBOX_LOOP_ID_USED = common dso_local global i32 0, align 4
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Chan %d PLOGI 0x%06x failed\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Chan %d new device 0x%06x@0x%x disappeared\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Chan %d new device 0x%06x@0x%x changed (0x%06x@0x%0x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, %struct.TYPE_5__*, i32*)* @isp_login_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_login_device(i32* %0, i32 %1, i64 %2, %struct.TYPE_5__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @ISP_CAP_2KLOGIN(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NPH_MAX_2K, align 4
  store i32 %20, i32* %12, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @NPH_MAX, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @isp_next_handle(i32* %24, i32* %25)
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %137, %23
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %140

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.TYPE_6__* @FCPARAM(i32* %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %191

40:                                               ; preds = %31
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = call i32 @isp_getpdb(i32* %41, i32 %42, i32 %43, %struct.TYPE_5__* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @isp_next_handle(i32* %55, i32* %56)
  store i32 %57, i32* %15, align 4
  br label %137

58:                                               ; preds = %48
  br label %140

59:                                               ; preds = %40
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.TYPE_6__* @FCPARAM(i32* %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %6, align 4
  br label %191

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* @PLOGX_FLG_CMD_PLOGI, align 4
  %74 = call i32 @isp_plogx(i32* %69, i32 %70, i32 %71, i64 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %140

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = and i32 %79, 65535
  %81 = load i32, i32* @MBOX_PORT_ID_USED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %86, 16
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* @PLOGX_FLG_CMD_LOGO, align 4
  %90 = load i32, i32* @PLOGX_FLG_IMPLICIT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PLOGX_FLG_FREE_NPHDL, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @isp_plogx(i32* %84, i32 %85, i32 %87, i64 %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @ISP_LOGERR, align 4
  %99 = load i32, i32* %14, align 4
  %100 = ashr i32 %99, 16
  %101 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %97, i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %83
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call %struct.TYPE_6__* @FCPARAM(i32* %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 -1, i32* %6, align 4
  br label %191

111:                                              ; preds = %102
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* @PLOGX_FLG_CMD_PLOGI, align 4
  %117 = call i32 @isp_plogx(i32* %112, i32 %113, i32 %114, i64 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %120, %111
  br label %140

123:                                              ; preds = %78
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, 65535
  %126 = load i32, i32* @MBOX_LOOP_ID_USED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @isp_next_handle(i32* %129, i32* %130)
  store i32 %131, i32* %15, align 4
  br label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %13, align 4
  br label %140

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %54
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %27

140:                                              ; preds = %132, %122, %77, %58, %27
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @ISP_LOGWARN, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i64, i64* %9, align 8
  %149 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %145, i32 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %147, i64 %148)
  store i32 -1, i32* %6, align 4
  br label %191

150:                                              ; preds = %140
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %155 = call i32 @isp_getpdb(i32* %151, i32 %152, i32 %153, %struct.TYPE_5__* %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* @ISP_LOGERR, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %9, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %159, i32 %160, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %161, i64 %162, i32 %163)
  store i32 -1, i32* %6, align 4
  br label %191

165:                                              ; preds = %150
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171, %165
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* @ISP_LOGERR, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i64, i64* %9, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %178, i32 %179, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %180, i64 %181, i32 %182, i64 %185, i32 %188)
  store i32 -1, i32* %6, align 4
  br label %191

190:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %190, %177, %158, %144, %110, %67, %39
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i64 @ISP_CAP_2KLOGIN(i32*) #1

declare dso_local i32 @isp_next_handle(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_getpdb(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @isp_plogx(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
