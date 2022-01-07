; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid3_softc = type { i64, i32, i32, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"autosync\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"noautosync\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"'%s' and '%s' specified.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"failsync\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"nofailsync\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"round_robin\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"noround_robin\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Nothing has changed.\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"No such device: %s.\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Not all disks connected.\00", align 1
@G_RAID3_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_VERIFY = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_ROUND_ROBIN = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@G_RAID3_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_STALE = common dso_local global i64 0, align 8
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid3_ctl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_ctl_configure(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = call i32* @gctl_get_paraml(%struct.gctl_req* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %413

27:                                               ; preds = %2
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %413

34:                                               ; preds = %27
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32* @gctl_get_paraml(%struct.gctl_req* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %413

42:                                               ; preds = %34
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = call i32* @gctl_get_paraml(%struct.gctl_req* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %49 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %413

50:                                               ; preds = %42
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %60 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %413

61:                                               ; preds = %54, %50
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = call i32* @gctl_get_paraml(%struct.gctl_req* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 4)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %68 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %413

69:                                               ; preds = %61
  %70 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %71 = call i32* @gctl_get_paraml(%struct.gctl_req* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %71, i32** %14, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %413

77:                                               ; preds = %69
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %87 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %413

88:                                               ; preds = %81, %77
  %89 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %90 = call i32* @gctl_get_paraml(%struct.gctl_req* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 4)
  store i32* %90, i32** %15, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %95 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %413

96:                                               ; preds = %88
  %97 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %98 = call i32* @gctl_get_paraml(%struct.gctl_req* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i32* %98, i32** %16, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %103 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %413

104:                                              ; preds = %96
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %114 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %413

115:                                              ; preds = %108, %104
  %116 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %117 = call i32* @gctl_get_paraml(%struct.gctl_req* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 4)
  store i32* %117, i32** %17, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %122 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %413

123:                                              ; preds = %115
  %124 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %125 = call i32* @gctl_get_paraml(%struct.gctl_req* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 4)
  store i32* %125, i32** %18, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %130 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %413

131:                                              ; preds = %123
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32*, i32** %18, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %141 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %413

142:                                              ; preds = %135, %131
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %177, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %177, label %150

150:                                              ; preds = %146
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %150
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %158
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %162
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load i32*, i32** %18, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %176 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %413

177:                                              ; preds = %170, %166, %162, %158, %154, %150, %146, %142
  %178 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %179 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i8* %179, i8** %7, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %184 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 0)
  br label %413

185:                                              ; preds = %177
  %186 = load %struct.g_class*, %struct.g_class** %4, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = call %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class* %186, i8* %187)
  store %struct.g_raid3_softc* %188, %struct.g_raid3_softc** %5, align 8
  %189 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %190 = icmp eq %struct.g_raid3_softc* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %193)
  br label %413

195:                                              ; preds = %185
  %196 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %197 = call i64 @g_raid3_ndisks(%struct.g_raid3_softc* %196, i32 -1)
  %198 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %199 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %204 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %205 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %206 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %205, i32 0, i32 2
  %207 = call i32 @sx_xunlock(i32* %206)
  br label %413

208:                                              ; preds = %195
  %209 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %210 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %208
  %216 = load i32*, i32** %11, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %223 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 8
  store i32 1, i32* %9, align 4
  br label %226

226:                                              ; preds = %219, %215
  br label %238

227:                                              ; preds = %208
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %233 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %234 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %227
  br label %238

238:                                              ; preds = %237, %226
  %239 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %240 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %238
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %253 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %249, %245
  br label %268

257:                                              ; preds = %238
  %258 = load i32*, i32** %14, align 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %257
  %262 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %263 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %264 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  store i32 0, i32* %10, align 4
  br label %267

267:                                              ; preds = %261, %257
  br label %268

268:                                              ; preds = %267, %256
  %269 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %270 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @G_RAID3_DEVICE_FLAG_VERIFY, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %268
  %276 = load i32*, i32** %18, align 8
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i32, i32* @G_RAID3_DEVICE_FLAG_VERIFY, align 4
  %281 = xor i32 %280, -1
  %282 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %283 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = and i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %279, %275
  br label %298

287:                                              ; preds = %268
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = load i32, i32* @G_RAID3_DEVICE_FLAG_VERIFY, align 4
  %293 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %294 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %291, %287
  br label %298

298:                                              ; preds = %297, %286
  %299 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %300 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %298
  %306 = load i32*, i32** %16, align 8
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %313 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = and i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %309, %305
  br label %328

317:                                              ; preds = %298
  %318 = load i32*, i32** %15, align 8
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %323 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %324 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %321, %317
  br label %328

328:                                              ; preds = %327, %316
  %329 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %330 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @G_RAID3_DEVICE_FLAG_VERIFY, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %328
  %336 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %337 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %335
  %343 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %346 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 8
  br label %349

349:                                              ; preds = %342, %335, %328
  store i64 0, i64* %19, align 8
  br label %350

350:                                              ; preds = %406, %349
  %351 = load i64, i64* %19, align 8
  %352 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %353 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp ult i64 %351, %354
  br i1 %355, label %356, label %409

356:                                              ; preds = %350
  %357 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %358 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %357, i32 0, i32 3
  %359 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %358, align 8
  %360 = load i64, i64* %19, align 8
  %361 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %359, i64 %360
  store %struct.g_raid3_disk* %361, %struct.g_raid3_disk** %6, align 8
  %362 = load i32, i32* %9, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %378

364:                                              ; preds = %356
  %365 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %366 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %364
  %371 = load i32, i32* @G_RAID3_DISK_FLAG_FORCE_SYNC, align 4
  %372 = xor i32 %371, -1
  %373 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %374 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = and i32 %375, %372
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %370, %364
  br label %378

378:                                              ; preds = %377, %356
  %379 = load i32, i32* %10, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %383 = xor i32 %382, -1
  %384 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %385 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = and i32 %386, %383
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %381, %378
  %389 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %390 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %389)
  %391 = load i32, i32* %9, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %388
  %394 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %395 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @G_RAID3_DISK_STATE_STALE, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %393
  %400 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %401 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %402 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %403 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %400, i32 %401, i32 %402)
  br label %404

404:                                              ; preds = %399, %393
  br label %405

405:                                              ; preds = %404, %388
  br label %406

406:                                              ; preds = %405
  %407 = load i64, i64* %19, align 8
  %408 = add i64 %407, 1
  store i64 %408, i64* %19, align 8
  br label %350

409:                                              ; preds = %350
  %410 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %411 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %410, i32 0, i32 2
  %412 = call i32 @sx_xunlock(i32* %411)
  br label %413

413:                                              ; preds = %409, %202, %191, %182, %174, %139, %128, %120, %112, %101, %93, %85, %74, %66, %58, %47, %39, %31, %24
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class*, i8*) #1

declare dso_local i64 @g_raid3_ndisks(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
