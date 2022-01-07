; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_media_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_media_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_media_type = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i32, i8* }

@MXGE_XFP = common dso_local global i64 0, align 8
@mxge_xfp_media_types = common dso_local global %struct.mxge_media_type* null, align 8
@MXGE_XFP_COMPLIANCE_BYTE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"XFP\00", align 1
@MXGE_SFP = common dso_local global i64 0, align 8
@mxge_sfp_media_types = common dso_local global %struct.mxge_media_type* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"SFP+\00", align 1
@MXGEFW_CMD_I2C_READ = common dso_local global i32 0, align 4
@MXGEFW_CMD_ERROR_I2C_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to read XFP\0A\00", align 1
@MXGEFW_CMD_ERROR_I2C_ABSENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Type R/S with no XFP!?!?\0A\00", align 1
@MXGEFW_CMD_OK = common dso_local global i32 0, align 4
@MXGEFW_CMD_I2C_BYTE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to read %s (%d, %dms)\0A\00", align 1
@mxge_verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s media 0x%x unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @mxge_media_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_media_probe(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mxge_media_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.mxge_media_type* null, %struct.mxge_media_type** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXGE_XFP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mxge_media_type*, %struct.mxge_media_type** @mxge_xfp_media_types, align 8
  store %struct.mxge_media_type* %19, %struct.mxge_media_type** %5, align 8
  %20 = load %struct.mxge_media_type*, %struct.mxge_media_type** @mxge_xfp_media_types, align 8
  %21 = call i32 @nitems(%struct.mxge_media_type* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** @MXGE_XFP_COMPLIANCE_BYTE, align 8
  store i8* %22, i8** %10, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MXGE_SFP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.mxge_media_type*, %struct.mxge_media_type** @mxge_sfp_media_types, align 8
  store %struct.mxge_media_type* %30, %struct.mxge_media_type** %5, align 8
  %31 = load %struct.mxge_media_type*, %struct.mxge_media_type** @mxge_sfp_media_types, align 8
  %32 = call i32 @nitems(%struct.mxge_media_type* %31)
  store i32 %32, i32* %9, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* inttoptr (i64 3 to i8*), i8** %10, align 8
  br label %34

33:                                               ; preds = %23
  br label %213

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %18
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load i32, i32* @MXGEFW_CMD_I2C_READ, align 4
  %41 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %39, i32 %40, %struct.TYPE_9__* %3)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MXGEFW_CMD_ERROR_I2C_FAILURE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MXGEFW_CMD_ERROR_I2C_ABSENT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MXGEFW_CMD_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %213

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = load i32, i32* @MXGEFW_CMD_I2C_BYTE, align 4
  %70 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %68, i32 %69, %struct.TYPE_9__* %3)
  store i32 %70, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %88, %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EBUSY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 50
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i1 [ false, %71 ], [ %77, %75 ]
  br i1 %79, label %80, label %91

80:                                               ; preds = %78
  %81 = call i32 @DELAY(i32 1000)
  %82 = load i8*, i8** %10, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = load i32, i32* @MXGEFW_CMD_I2C_BYTE, align 4
  %87 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %85, i32 %86, %struct.TYPE_9__* %3)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %71

91:                                               ; preds = %78
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MXGEFW_CMD_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %99, i32 %100, i32 %101)
  br label %213

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %107 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %106, i64 0
  %108 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %103
  %112 = load i64, i64* @mxge_verbose, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %120 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %119, i64 0
  %121 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %118, i32 %122)
  br label %124

124:                                              ; preds = %114, %111
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %129 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %128, i64 0
  %130 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %127, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %124
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = call i32 @mxge_media_init(%struct.TYPE_8__* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %137 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %138 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %137, i64 0
  %139 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @mxge_media_set(%struct.TYPE_8__* %136, i64 %140)
  br label %142

142:                                              ; preds = %133, %124
  br label %213

143:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  br label %144

144:                                              ; preds = %198, %143
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %201

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %151, i64 %153
  %155 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %150, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %197

159:                                              ; preds = %148
  %160 = load i64, i64* @mxge_verbose, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %167, i64 %169
  %171 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %166, i32 %172)
  br label %174

174:                                              ; preds = %162, %159
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %178, i64 %180
  %182 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %177, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %174
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = call i32 @mxge_media_init(%struct.TYPE_8__* %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %189 = load %struct.mxge_media_type*, %struct.mxge_media_type** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %189, i64 %191
  %193 = getelementptr inbounds %struct.mxge_media_type, %struct.mxge_media_type* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @mxge_media_set(%struct.TYPE_8__* %188, i64 %194)
  br label %196

196:                                              ; preds = %185, %174
  br label %213

197:                                              ; preds = %148
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %144

201:                                              ; preds = %144
  %202 = load i64, i64* @mxge_verbose, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %208, i32 %210)
  br label %212

212:                                              ; preds = %204, %201
  br label %213

213:                                              ; preds = %212, %196, %142, %95, %63, %33
  ret void
}

declare dso_local i32 @nitems(%struct.mxge_media_type*) #1

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mxge_media_init(%struct.TYPE_8__*) #1

declare dso_local i32 @mxge_media_set(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
