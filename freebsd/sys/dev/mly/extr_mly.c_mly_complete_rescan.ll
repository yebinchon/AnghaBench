; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete_rescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i64, i32, i64, %struct.TYPE_5__*, %struct.mly_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.mly_softc = type { %struct.mly_btl** }
%struct.mly_btl = type { i64, i64, i64, i32, i32 }
%struct.mly_ioctl_getlogdevinfovalid = type { i64, i64, i32 }
%struct.mly_ioctl_getphysdevinfovalid = type { i32, i32, i64, i32, i32 }
%struct.mly_command_ioctl = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MDACIOCTL_GETLOGDEVINFOVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"WARNING: BTL rescan for %d:%d returned data for %d:%d instead\0A\00", align 1
@MLY_BTL_LOGICAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"BTL rescan for %d returns %s, %s\00", align 1
@mly_table_device_type = common dso_local global i32 0, align 4
@mly_table_device_state = common dso_local global i32 0, align 4
@MLY_BTL_PHYSICAL = common dso_local global i64 0, align 8
@MLY_DEVICE_TYPE_PHYSICAL = common dso_local global i64 0, align 8
@MLY_DEVICE_STATE_UNCONFIGURED = common dso_local global i64 0, align 8
@MLY_BTL_PROTECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"BTL rescan for %d:%d returns %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"BTL rescan result invalid\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"flags changed, rescanning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_command*)* @mly_complete_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_complete_rescan(%struct.mly_command* %0) #0 {
  %2 = alloca %struct.mly_command*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.mly_ioctl_getlogdevinfovalid*, align 8
  %5 = alloca %struct.mly_ioctl_getphysdevinfovalid*, align 8
  %6 = alloca %struct.mly_command_ioctl*, align 8
  %7 = alloca %struct.mly_btl, align 8
  %8 = alloca %struct.mly_btl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mly_command* %0, %struct.mly_command** %2, align 8
  %12 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %13 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %12, i32 0, i32 4
  %14 = load %struct.mly_softc*, %struct.mly_softc** %13, align 8
  store %struct.mly_softc* %14, %struct.mly_softc** %3, align 8
  %15 = call i32 @debug_called(i32 1)
  %16 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %17 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.mly_command_ioctl*
  store %struct.mly_command_ioctl* %20, %struct.mly_command_ioctl** %6, align 8
  %21 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %6, align 8
  %22 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MDACIOCTL_GETLOGDEVINFOVALID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %28 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %6, align 8
  %29 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MLY_LOGDEV_BUS(%struct.mly_softc* %27, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %35 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %6, align 8
  %36 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MLY_LOGDEV_TARGET(%struct.mly_softc* %34, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %52

41:                                               ; preds = %1
  %42 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %6, align 8
  %43 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %6, align 8
  %48 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %41, %26
  %53 = call i32 @bzero(%struct.mly_btl* %7, i32 32)
  %54 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %55 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %208

58:                                               ; preds = %52
  %59 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %60 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 24
  br i1 %63, label %64, label %124

64:                                               ; preds = %58
  %65 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %66 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.mly_ioctl_getlogdevinfovalid*
  store %struct.mly_ioctl_getlogdevinfovalid* %68, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %69 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %70 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %71 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @MLY_LOGDEV_BUS(%struct.mly_softc* %69, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %64
  %77 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %78 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %79 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @MLY_LOGDEV_TARGET(%struct.mly_softc* %77, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %76, %64
  %85 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %89 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %90 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @MLY_LOGDEV_BUS(%struct.mly_softc* %88, i32 %91)
  %93 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %94 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %95 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @MLY_LOGDEV_TARGET(%struct.mly_softc* %93, i32 %96)
  %98 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %85, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %84, %76
  %100 = load i64, i64* @MLY_BTL_LOGICAL, align 8
  %101 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %103 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %107 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 2
  store i64 %108, i64* %109, align 8
  %110 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %111 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @mly_table_device_type, align 4
  %114 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %115 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @mly_describe_code(i32 %113, i64 %116)
  %118 = load i32, i32* @mly_table_device_state, align 4
  %119 = load %struct.mly_ioctl_getlogdevinfovalid*, %struct.mly_ioctl_getlogdevinfovalid** %4, align 8
  %120 = getelementptr inbounds %struct.mly_ioctl_getlogdevinfovalid, %struct.mly_ioctl_getlogdevinfovalid* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @mly_describe_code(i32 %118, i64 %121)
  %123 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %117, i32 %122)
  br label %207

124:                                              ; preds = %58
  %125 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %126 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %128, 24
  br i1 %129, label %130, label %203

130:                                              ; preds = %124
  %131 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %132 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.mly_ioctl_getphysdevinfovalid*
  store %struct.mly_ioctl_getphysdevinfovalid* %134, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %135 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %136 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %130
  %141 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %142 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140, %130
  %147 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %151 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %154 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %147, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %146, %140
  %158 = load i64, i64* @MLY_BTL_PHYSICAL, align 8
  %159 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 0
  store i64 %158, i64* %159, align 8
  %160 = load i64, i64* @MLY_DEVICE_TYPE_PHYSICAL, align 8
  %161 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 1
  store i64 %160, i64* %161, align 8
  %162 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %163 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 2
  store i64 %164, i64* %165, align 8
  %166 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %167 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 4
  store i32 %168, i32* %169, align 4
  %170 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %171 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 3
  store i32 %172, i32* %173, align 8
  %174 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %175 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MLY_DEVICE_STATE_UNCONFIGURED, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %157
  %180 = load i64, i64* @MLY_BTL_PROTECTED, align 8
  %181 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %182 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %181, i32 0, i32 0
  %183 = load %struct.mly_btl**, %struct.mly_btl*** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.mly_btl*, %struct.mly_btl** %183, i64 %185
  %187 = load %struct.mly_btl*, %struct.mly_btl** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %187, i64 %189
  %191 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = or i64 %192, %180
  store i64 %193, i64* %191, align 8
  br label %194

194:                                              ; preds = %179, %157
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @mly_table_device_state, align 4
  %198 = load %struct.mly_ioctl_getphysdevinfovalid*, %struct.mly_ioctl_getphysdevinfovalid** %5, align 8
  %199 = getelementptr inbounds %struct.mly_ioctl_getphysdevinfovalid, %struct.mly_ioctl_getphysdevinfovalid* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @mly_describe_code(i32 %197, i64 %200)
  %202 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196, i32 %201)
  br label %206

203:                                              ; preds = %124
  %204 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %205 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %194
  br label %207

207:                                              ; preds = %206, %99
  br label %208

208:                                              ; preds = %207, %52
  %209 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %210 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @M_DEVBUF, align 4
  %213 = call i32 @free(i64 %211, i32 %212)
  %214 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %215 = call i32 @mly_release_command(%struct.mly_command* %214)
  store i32 0, i32* %11, align 4
  %216 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %217 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %216, i32 0, i32 0
  %218 = load %struct.mly_btl**, %struct.mly_btl*** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.mly_btl*, %struct.mly_btl** %218, i64 %220
  %222 = load %struct.mly_btl*, %struct.mly_btl** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %222, i64 %224
  store %struct.mly_btl* %225, %struct.mly_btl** %8, align 8
  %226 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %7, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.mly_btl*, %struct.mly_btl** %8, align 8
  %229 = getelementptr inbounds %struct.mly_btl, %struct.mly_btl* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %227, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %208
  %233 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %234

234:                                              ; preds = %232, %208
  %235 = load %struct.mly_btl*, %struct.mly_btl** %8, align 8
  %236 = bitcast %struct.mly_btl* %235 to i8*
  %237 = bitcast %struct.mly_btl* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 32, i1 false)
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @mly_cam_rescan_btl(%struct.mly_softc* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %234
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_LOGDEV_BUS(%struct.mly_softc*, i32) #1

declare dso_local i32 @MLY_LOGDEV_TARGET(%struct.mly_softc*, i32) #1

declare dso_local i32 @bzero(%struct.mly_btl*, i32) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*, ...) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @mly_describe_code(i32, i64) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mly_cam_rescan_btl(%struct.mly_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
