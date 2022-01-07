; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apm/extr_apm.c_print_all_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apm/extr_apm.c_print_all_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.apm_bios_arg = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.apm_pwstatus = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.tm = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"off-line\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"on-line\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"backup power\00", align 1
@__const.print_all_info.line_msg = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [20 x i8] c"APM version: %d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"APM Management: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"AC Line status: \00", align 1
@APM_UNKNOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid value (0x%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Number of batteries: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@PMDV_BATT0 = common dso_local global i32 0, align 4
@APMIO_GETPWSTATUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"Battery %d:\0A\00", align 1
@APM_BATT_NOT_PRESENT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"not present\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@APM_BIOS = common dso_local global i32 0, align 4
@APM_RESUMETIMER = common dso_local global i32 0, align 4
@PMDV_APMBIOS = common dso_local global i8* null, align 8
@APMIO_BIOS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"Resume timer: unknown\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Resume timer: disabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"failed to get the resume timer: APM error0x%x\00", align 1
@cmos_wall = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Resume timer: %s\0A\00", align 1
@APM_RESUMEONRING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [35 x i8] c"Resume on ring indicator: %sabled\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"APM Capabilities:\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\09global standby state\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\09global suspend state\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\09resume timer from standby\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"\09resume timer from suspend\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\09RI resume from standby\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"\09RI resume from suspend\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"\09PCMCIA RI resume from standby\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"\09PCMCIA RI resume from suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32)* @print_all_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_all_info(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.apm_bios_arg, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.apm_pwstatus, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([3 x i8*]* @__const.print_all_info.line_msg to i8*), i64 24, i1 false)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @APM_UNKNOWN, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %57

38:                                               ; preds = %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @print_batt_stat(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @print_batt_life(i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @print_batt_time(i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 1
  br i1 %73, label %74, label %132

74:                                               ; preds = %57
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %131

82:                                               ; preds = %74
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %127, %82
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %87
  %94 = call i32 @bzero(%struct.apm_pwstatus* %11, i32 48)
  %95 = load i32, i32* @PMDV_BATT0, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %95, %96
  %98 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %11, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @APMIO_GETPWSTATUS, align 4
  %101 = call i64 @ioctl(i32 %99, i32 %100, %struct.apm_pwstatus* %11)
  %102 = icmp eq i64 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %127

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %11, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @APM_BATT_NOT_PRESENT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %127

114:                                              ; preds = %104
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %116 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %11, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @print_batt_stat(i32 %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %11, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @print_batt_life(i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %124 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %11, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @print_batt_time(i32 %125)
  br label %127

127:                                              ; preds = %114, %112, %103
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %87

130:                                              ; preds = %87
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %57
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %248

135:                                              ; preds = %132
  %136 = bitcast %struct.apm_bios_arg* %7 to %struct.apm_pwstatus*
  %137 = call i32 @bzero(%struct.apm_pwstatus* %136, i32 48)
  %138 = load i32, i32* @APM_BIOS, align 4
  %139 = shl i32 %138, 8
  %140 = load i32, i32* @APM_RESUMETIMER, align 4
  %141 = or i32 %139, %140
  %142 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 2
  store i32 %141, i32* %142, align 8
  %143 = load i8*, i8** @PMDV_APMBIOS, align 8
  %144 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 6
  store i8* %143, i8** %144, align 8
  %145 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 3
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @APMIO_BIOS, align 4
  %148 = bitcast %struct.apm_bios_arg* %7 to %struct.apm_pwstatus*
  %149 = call i64 @ioctl(i32 %146, i32 %147, %struct.apm_pwstatus* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %135
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %224

153:                                              ; preds = %135
  %154 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @APMERR(i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 13
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %160, 134
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %153
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %223

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %168)
  br label %222

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @xh(i32 %172)
  %174 = call i8* @bcd2int(i32 %173)
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 5
  store i8* %174, i8** %175, align 8
  %176 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @xl(i32 %177)
  %179 = call i8* @bcd2int(i32 %178)
  %180 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 4
  store i8* %179, i8** %180, align 8
  %181 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @xh(i32 %182)
  %184 = call i8* @bcd2int(i32 %183)
  %185 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  store i8* %184, i8** %185, align 8
  %186 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @xl(i32 %187)
  %189 = call i8* @bcd2int(i32 %188)
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  %191 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @xh(i32 %192)
  %194 = call i8* @bcd2int(i32 %193)
  %195 = getelementptr i8, i8* %194, i64 -1
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  store i8* %195, i8** %196, align 8
  %197 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @bcd2int(i32 %198)
  %200 = getelementptr i8, i8* %199, i64 -1900
  %201 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  store i8* %200, i8** %201, align 8
  %202 = load i64, i64* @cmos_wall, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %170
  %205 = call i32 @mktime(%struct.tm* %12)
  store i32 %205, i32* %14, align 4
  br label %208

206:                                              ; preds = %170
  %207 = call i32 @timegm(%struct.tm* %12)
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = call %struct.tm* @localtime(i32* %14)
  %213 = bitcast %struct.tm* %12 to i8*
  %214 = bitcast %struct.tm* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 %214, i64 48, i1 false)
  %215 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %216 = call i32 @strftime(i8* %215, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %struct.tm* %12)
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* %217)
  br label %221

219:                                              ; preds = %208
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %211
  br label %222

222:                                              ; preds = %221, %167
  br label %223

223:                                              ; preds = %222, %162
  br label %224

224:                                              ; preds = %223, %151
  %225 = bitcast %struct.apm_bios_arg* %7 to %struct.apm_pwstatus*
  %226 = call i32 @bzero(%struct.apm_pwstatus* %225, i32 48)
  %227 = load i32, i32* @APM_BIOS, align 4
  %228 = shl i32 %227, 8
  %229 = load i32, i32* @APM_RESUMEONRING, align 4
  %230 = or i32 %228, %229
  %231 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 2
  store i32 %230, i32* %231, align 8
  %232 = load i8*, i8** @PMDV_APMBIOS, align 8
  %233 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 6
  store i8* %232, i8** %233, align 8
  %234 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 3
  store i32 2, i32* %234, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @APMIO_BIOS, align 4
  %237 = bitcast %struct.apm_bios_arg* %7 to %struct.apm_pwstatus*
  %238 = call i64 @ioctl(i32 %235, i32 %236, %struct.apm_pwstatus* %237)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %224
  %241 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %240, %224
  br label %248

248:                                              ; preds = %247, %132
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp sge i32 %251, 1
  br i1 %252, label %253, label %325

253:                                              ; preds = %248
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 65280
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %325

259:                                              ; preds = %253
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %259
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 2
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %268
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %276
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %284
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 16
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  br label %300

300:                                              ; preds = %298, %292
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %300
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %300
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 64
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %308
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %308
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, 128
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %316
  br label %325

325:                                              ; preds = %258, %324, %248
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @print_batt_stat(i32) #2

declare dso_local i32 @print_batt_life(i32) #2

declare dso_local i32 @print_batt_time(i32) #2

declare dso_local i32 @bzero(%struct.apm_pwstatus*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.apm_pwstatus*) #2

declare dso_local i32 @APMERR(i32) #2

declare dso_local i32 @warnx(i8*, i32) #2

declare dso_local i8* @bcd2int(i32) #2

declare dso_local i32 @xh(i32) #2

declare dso_local i32 @xl(i32) #2

declare dso_local i32 @mktime(%struct.tm*) #2

declare dso_local i32 @timegm(%struct.tm*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
