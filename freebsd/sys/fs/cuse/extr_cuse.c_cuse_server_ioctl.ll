; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.cuse_server = type { i32, i32, i32, i32 }
%struct.cuse_client_command = type { i32, i32, %struct.cuse_dev*, %struct.TYPE_8__*, %struct.cuse_server*, %struct.cuse_client*, i32, i32, i32*, %struct.cuse_command, %struct.TYPE_5__ }
%struct.cuse_dev = type { i32 }
%struct.TYPE_8__ = type { %struct.cuse_server_dev* }
%struct.cuse_server_dev = type { i32, i32, %struct.cuse_dev*, %struct.TYPE_8__*, %struct.cuse_server*, %struct.cuse_client*, i32, i32, i32*, %struct.cuse_command, %struct.TYPE_5__ }
%struct.cuse_client = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.cuse_command = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.cuse_alloc_info = type { i32, i32 }
%struct.cuse_create_dev = type { i32, i32*, i32, i32, %struct.cuse_dev* }
%struct.cuse_data_chunk = type { i32 }

@cuse_mtx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@curthread = common dso_local global i32* null, align 8
@CUSE_CMD_SYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CUSE_ID_MASK = common dso_local global i32 0, align 4
@CUSE_ALLOC_UNIT_MAX = common dso_local global i32 0, align 4
@CUSE_ALLOC_PAGES_MAX = common dso_local global i32 0, align 4
@CUSE_CMD_MAX = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_CUSE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@cuse_client_devsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CUSE_BUF_MIN_PTR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CUSE_BUF_MAX_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @cuse_server_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_server_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cuse_server*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cuse_client_command*, align 8
  %15 = alloca %struct.cuse_client*, align 8
  %16 = alloca %struct.cuse_command*, align 8
  %17 = alloca %struct.cuse_alloc_info*, align 8
  %18 = alloca %struct.cuse_create_dev*, align 8
  %19 = alloca %struct.cuse_server_dev*, align 8
  %20 = alloca %struct.cuse_data_chunk*, align 8
  %21 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = call i32 @cuse_server_get(%struct.cuse_server** %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %444

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  switch i64 %28, label %440 [
    i64 134, label %29
    i64 129, label %76
    i64 141, label %100
    i64 140, label %115
    i64 136, label %136
    i64 135, label %147
    i64 142, label %156
    i64 137, label %184
    i64 133, label %201
    i64 130, label %221
    i64 139, label %257
    i64 138, label %345
    i64 128, label %389
    i64 132, label %389
    i64 131, label %435
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.cuse_command*
  store %struct.cuse_command* %32, %struct.cuse_command** %16, align 8
  %33 = call i32 (...) @cuse_lock()
  br label %34

34:                                               ; preds = %56, %29
  %35 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %36 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %35, i32 0, i32 1
  %37 = call %struct.cuse_server_dev* @TAILQ_FIRST(i32* %36)
  %38 = bitcast %struct.cuse_server_dev* %37 to %struct.cuse_client_command*
  store %struct.cuse_client_command* %38, %struct.cuse_client_command** %14, align 8
  %39 = icmp eq %struct.cuse_client_command* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %42 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %41, i32 0, i32 3
  %43 = call i32 @cv_wait_sig(i32* %42, i32* @cuse_mtx)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %45 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 (...) @cuse_unlock()
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %444

56:                                               ; preds = %50
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %59 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %58, i32 0, i32 1
  %60 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %61 = bitcast %struct.cuse_client_command* %60 to %struct.cuse_server_dev*
  %62 = load i32, i32* @entry, align 4
  %63 = call i32 @TAILQ_REMOVE(i32* %59, %struct.cuse_server_dev* %61, i32 %62)
  %64 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %65 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32*, i32** @curthread, align 8
  %68 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %69 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %68, i32 0, i32 8
  store i32* %67, i32** %69, align 8
  %70 = load %struct.cuse_command*, %struct.cuse_command** %16, align 8
  %71 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %72 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %71, i32 0, i32 9
  %73 = bitcast %struct.cuse_command* %70 to i8*
  %74 = bitcast %struct.cuse_command* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 8 %74, i64 4, i1 false)
  %75 = call i32 (...) @cuse_unlock()
  br label %442

76:                                               ; preds = %27
  %77 = call i32 (...) @cuse_lock()
  br label %78

78:                                               ; preds = %84, %76
  %79 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %80 = load i32*, i32** @curthread, align 8
  %81 = call %struct.cuse_server_dev* @cuse_server_find_command(%struct.cuse_server* %79, i32* %80)
  %82 = bitcast %struct.cuse_server_dev* %81 to %struct.cuse_client_command*
  store %struct.cuse_client_command* %82, %struct.cuse_client_command** %14, align 8
  %83 = icmp ne %struct.cuse_client_command* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %86 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %85, i32 0, i32 8
  store i32* null, i32** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %91 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @CUSE_CMD_SYNC, align 4
  %93 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %94 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %96 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %95, i32 0, i32 6
  %97 = call i32 @cv_signal(i32* %96)
  br label %78

98:                                               ; preds = %78
  %99 = call i32 (...) @cuse_unlock()
  br label %442

100:                                              ; preds = %27
  %101 = call i32 (...) @cuse_lock()
  %102 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %103 = call i32 @CUSE_ID_DEFAULT(i32 0)
  %104 = call i32 @cuse_alloc_unit_by_id_locked(%struct.cuse_server* %102, i32 %103)
  store i32 %104, i32* %21, align 4
  %105 = call i32 (...) @cuse_unlock()
  %106 = load i32, i32* %21, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* %13, align 4
  br label %114

110:                                              ; preds = %100
  %111 = load i32, i32* %21, align 4
  %112 = load i64, i64* %9, align 8
  %113 = inttoptr i64 %112 to i32*
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %108
  br label %442

115:                                              ; preds = %27
  %116 = load i64, i64* %9, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @CUSE_ID_MASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %21, align 4
  %122 = call i32 (...) @cuse_lock()
  %123 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %124 = load i32, i32* %21, align 4
  %125 = call i32 @cuse_alloc_unit_by_id_locked(%struct.cuse_server* %123, i32 %124)
  store i32 %125, i32* %21, align 4
  %126 = call i32 (...) @cuse_unlock()
  %127 = load i32, i32* %21, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %13, align 4
  br label %135

131:                                              ; preds = %115
  %132 = load i32, i32* %21, align 4
  %133 = load i64, i64* %9, align 8
  %134 = inttoptr i64 %133 to i32*
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %129
  br label %442

136:                                              ; preds = %27
  %137 = load i64, i64* %9, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @CUSE_ID_DEFAULT(i32 %140)
  store i32 %141, i32* %21, align 4
  %142 = call i32 (...) @cuse_lock()
  %143 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @cuse_free_unit_by_id_locked(%struct.cuse_server* %143, i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = call i32 (...) @cuse_unlock()
  br label %442

147:                                              ; preds = %27
  %148 = load i64, i64* %9, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %21, align 4
  %151 = call i32 (...) @cuse_lock()
  %152 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @cuse_free_unit_by_id_locked(%struct.cuse_server* %152, i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = call i32 (...) @cuse_unlock()
  br label %442

156:                                              ; preds = %27
  %157 = load i64, i64* %9, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = bitcast i8* %158 to %struct.cuse_alloc_info*
  store %struct.cuse_alloc_info* %159, %struct.cuse_alloc_info** %17, align 8
  %160 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %161 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i32, i32* @ENOMEM, align 4
  store i32 %166, i32* %13, align 4
  br label %442

167:                                              ; preds = %156
  %168 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %169 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CUSE_ALLOC_PAGES_MAX, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @ENOMEM, align 4
  store i32 %174, i32* %13, align 4
  br label %442

175:                                              ; preds = %167
  %176 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %177 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %178 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %181 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cuse_server_alloc_memory(%struct.cuse_server* %176, i32 %179, i32 %182)
  store i32 %183, i32* %13, align 4
  br label %442

184:                                              ; preds = %27
  %185 = load i64, i64* %9, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = bitcast i8* %186 to %struct.cuse_alloc_info*
  store %struct.cuse_alloc_info* %187, %struct.cuse_alloc_info** %17, align 8
  %188 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %189 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i32, i32* @ENOMEM, align 4
  store i32 %194, i32* %13, align 4
  br label %442

195:                                              ; preds = %184
  %196 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %197 = load %struct.cuse_alloc_info*, %struct.cuse_alloc_info** %17, align 8
  %198 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @cuse_server_free_memory(%struct.cuse_server* %196, i32 %199)
  store i32 %200, i32* %13, align 4
  br label %442

201:                                              ; preds = %27
  %202 = call i32 (...) @cuse_lock()
  %203 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %204 = load i32*, i32** @curthread, align 8
  %205 = call %struct.cuse_server_dev* @cuse_server_find_command(%struct.cuse_server* %203, i32* %204)
  %206 = bitcast %struct.cuse_server_dev* %205 to %struct.cuse_client_command*
  store %struct.cuse_client_command* %206, %struct.cuse_client_command** %14, align 8
  %207 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %208 = icmp ne %struct.cuse_client_command* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %211 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %21, align 4
  %213 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %214 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %213, i32 0, i32 1
  store i32 0, i32* %214, align 4
  br label %216

215:                                              ; preds = %201
  store i32 0, i32* %21, align 4
  br label %216

216:                                              ; preds = %215, %209
  %217 = call i32 (...) @cuse_unlock()
  %218 = load i32, i32* %21, align 4
  %219 = load i64, i64* %9, align 8
  %220 = inttoptr i64 %219 to i32*
  store i32 %218, i32* %220, align 4
  br label %442

221:                                              ; preds = %27
  %222 = call i32 (...) @cuse_lock()
  %223 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %224 = load i32*, i32** @curthread, align 8
  %225 = call %struct.cuse_server_dev* @cuse_server_find_command(%struct.cuse_server* %223, i32* %224)
  %226 = bitcast %struct.cuse_server_dev* %225 to %struct.cuse_client_command*
  store %struct.cuse_client_command* %226, %struct.cuse_client_command** %14, align 8
  %227 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %228 = icmp ne %struct.cuse_client_command* %227, null
  br i1 %228, label %229, label %253

229:                                              ; preds = %221
  %230 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %231 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %230, i32 0, i32 5
  %232 = load %struct.cuse_client*, %struct.cuse_client** %231, align 8
  store %struct.cuse_client* %232, %struct.cuse_client** %15, align 8
  store i32 0, i32* %21, align 4
  br label %233

233:                                              ; preds = %249, %229
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* @CUSE_CMD_MAX, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %233
  %238 = load i64, i64* %9, align 8
  %239 = inttoptr i64 %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.cuse_client*, %struct.cuse_client** %15, align 8
  %242 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %21, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  store i64 %240, i64* %248, align 8
  br label %249

249:                                              ; preds = %237
  %250 = load i32, i32* %21, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %21, align 4
  br label %233

252:                                              ; preds = %233
  br label %255

253:                                              ; preds = %221
  %254 = load i32, i32* @ENXIO, align 4
  store i32 %254, i32* %13, align 4
  br label %255

255:                                              ; preds = %253, %252
  %256 = call i32 (...) @cuse_unlock()
  br label %442

257:                                              ; preds = %27
  %258 = load i32*, i32** @curthread, align 8
  %259 = load i32, i32* @PRIV_DRIVER, align 4
  %260 = call i32 @priv_check(i32* %258, i32 %259)
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %442

264:                                              ; preds = %257
  %265 = load i64, i64* %9, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = bitcast i8* %266 to %struct.cuse_create_dev*
  store %struct.cuse_create_dev* %267, %struct.cuse_create_dev** %18, align 8
  %268 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %269 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 7
  store i32 0, i32* %271, align 4
  %272 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %273 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %264
  %279 = load i32, i32* @EINVAL, align 4
  store i32 %279, i32* %13, align 4
  br label %442

280:                                              ; preds = %264
  %281 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %282 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @cuse_str_filter(i32* %283)
  %285 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %286 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, 511
  store i32 %288, i32* %286, align 8
  %289 = load i32, i32* @M_CUSE, align 4
  %290 = load i32, i32* @M_WAITOK, align 4
  %291 = load i32, i32* @M_ZERO, align 4
  %292 = or i32 %290, %291
  %293 = call %struct.cuse_server_dev* @malloc(i32 72, i32 %289, i32 %292)
  store %struct.cuse_server_dev* %293, %struct.cuse_server_dev** %19, align 8
  %294 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %295 = icmp eq %struct.cuse_server_dev* %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %280
  %297 = load i32, i32* @ENOMEM, align 4
  store i32 %297, i32* %13, align 4
  br label %442

298:                                              ; preds = %280
  %299 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %300 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %301 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %300, i32 0, i32 4
  store %struct.cuse_server* %299, %struct.cuse_server** %301, align 8
  %302 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %303 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %302, i32 0, i32 4
  %304 = load %struct.cuse_dev*, %struct.cuse_dev** %303, align 8
  %305 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %306 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %305, i32 0, i32 2
  store %struct.cuse_dev* %304, %struct.cuse_dev** %306, align 8
  %307 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %308 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %309 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %312 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %315 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.cuse_create_dev*, %struct.cuse_create_dev** %18, align 8
  %318 = getelementptr inbounds %struct.cuse_create_dev, %struct.cuse_create_dev* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = call %struct.TYPE_8__* @make_dev_credf(i32 %307, i32* @cuse_client_devsw, i32 0, i32* null, i32 %310, i32 %313, i32 %316, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %319)
  %321 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %322 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %321, i32 0, i32 3
  store %struct.TYPE_8__* %320, %struct.TYPE_8__** %322, align 8
  %323 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %324 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %323, i32 0, i32 3
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %324, align 8
  %326 = icmp eq %struct.TYPE_8__* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %298
  %328 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %329 = load i32, i32* @M_CUSE, align 4
  %330 = call i32 @free(%struct.cuse_server_dev* %328, i32 %329)
  %331 = load i32, i32* @ENOMEM, align 4
  store i32 %331, i32* %13, align 4
  br label %442

332:                                              ; preds = %298
  %333 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %334 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %335 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %334, i32 0, i32 3
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  store %struct.cuse_server_dev* %333, %struct.cuse_server_dev** %337, align 8
  %338 = call i32 (...) @cuse_lock()
  %339 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %340 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %339, i32 0, i32 0
  %341 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %342 = load i32, i32* @entry, align 4
  %343 = call i32 @TAILQ_INSERT_TAIL(i32* %340, %struct.cuse_server_dev* %341, i32 %342)
  %344 = call i32 (...) @cuse_unlock()
  br label %442

345:                                              ; preds = %27
  %346 = load i32*, i32** @curthread, align 8
  %347 = load i32, i32* @PRIV_DRIVER, align 4
  %348 = call i32 @priv_check(i32* %346, i32 %347)
  store i32 %348, i32* %13, align 4
  %349 = load i32, i32* %13, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  br label %442

352:                                              ; preds = %345
  %353 = call i32 (...) @cuse_lock()
  %354 = load i32, i32* @EINVAL, align 4
  store i32 %354, i32* %13, align 4
  %355 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %356 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %355, i32 0, i32 0
  %357 = call %struct.cuse_server_dev* @TAILQ_FIRST(i32* %356)
  store %struct.cuse_server_dev* %357, %struct.cuse_server_dev** %19, align 8
  br label %358

358:                                              ; preds = %386, %352
  %359 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %360 = icmp ne %struct.cuse_server_dev* %359, null
  br i1 %360, label %361, label %387

361:                                              ; preds = %358
  %362 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %363 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %362, i32 0, i32 2
  %364 = load %struct.cuse_dev*, %struct.cuse_dev** %363, align 8
  %365 = load i64, i64* %9, align 8
  %366 = inttoptr i64 %365 to %struct.cuse_dev**
  %367 = load %struct.cuse_dev*, %struct.cuse_dev** %366, align 8
  %368 = icmp eq %struct.cuse_dev* %364, %367
  br i1 %368, label %369, label %382

369:                                              ; preds = %361
  %370 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %371 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %370, i32 0, i32 0
  %372 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %373 = load i32, i32* @entry, align 4
  %374 = call i32 @TAILQ_REMOVE(i32* %371, %struct.cuse_server_dev* %372, i32 %373)
  %375 = call i32 (...) @cuse_unlock()
  %376 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %377 = call i32 @cuse_server_free_dev(%struct.cuse_server_dev* %376)
  %378 = call i32 (...) @cuse_lock()
  store i32 0, i32* %13, align 4
  %379 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %380 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %379, i32 0, i32 0
  %381 = call %struct.cuse_server_dev* @TAILQ_FIRST(i32* %380)
  store %struct.cuse_server_dev* %381, %struct.cuse_server_dev** %19, align 8
  br label %386

382:                                              ; preds = %361
  %383 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  %384 = load i32, i32* @entry, align 4
  %385 = call %struct.cuse_server_dev* @TAILQ_NEXT(%struct.cuse_server_dev* %383, i32 %384)
  store %struct.cuse_server_dev* %385, %struct.cuse_server_dev** %19, align 8
  br label %386

386:                                              ; preds = %382, %369
  br label %358

387:                                              ; preds = %358
  %388 = call i32 (...) @cuse_unlock()
  br label %442

389:                                              ; preds = %27, %27
  %390 = call i32 (...) @cuse_lock()
  %391 = load i64, i64* %9, align 8
  %392 = inttoptr i64 %391 to %struct.cuse_data_chunk*
  store %struct.cuse_data_chunk* %392, %struct.cuse_data_chunk** %20, align 8
  %393 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %394 = load i32*, i32** @curthread, align 8
  %395 = call %struct.cuse_server_dev* @cuse_server_find_command(%struct.cuse_server* %393, i32* %394)
  %396 = bitcast %struct.cuse_server_dev* %395 to %struct.cuse_client_command*
  store %struct.cuse_client_command* %396, %struct.cuse_client_command** %14, align 8
  %397 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %398 = icmp eq %struct.cuse_client_command* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %389
  %400 = load i32, i32* @ENXIO, align 4
  store i32 %400, i32* %13, align 4
  br label %433

401:                                              ; preds = %389
  %402 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %20, align 8
  %403 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @CUSE_BUF_MIN_PTR, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %409

407:                                              ; preds = %401
  %408 = load i32, i32* @EFAULT, align 4
  store i32 %408, i32* %13, align 4
  br label %432

409:                                              ; preds = %401
  %410 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %20, align 8
  %411 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @CUSE_BUF_MAX_PTR, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %409
  %416 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %417 = bitcast %struct.cuse_client_command* %416 to %struct.cuse_server_dev*
  %418 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %20, align 8
  %419 = load i64, i64* %8, align 8
  %420 = icmp eq i64 %419, 132
  %421 = zext i1 %420 to i32
  %422 = call i32 @cuse_server_ioctl_copy_locked(%struct.cuse_server_dev* %417, %struct.cuse_data_chunk* %418, i32 %421)
  store i32 %422, i32* %13, align 4
  br label %431

423:                                              ; preds = %409
  %424 = load %struct.cuse_client_command*, %struct.cuse_client_command** %14, align 8
  %425 = bitcast %struct.cuse_client_command* %424 to %struct.cuse_server_dev*
  %426 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %20, align 8
  %427 = load i64, i64* %8, align 8
  %428 = icmp eq i64 %427, 132
  %429 = zext i1 %428 to i32
  %430 = call i32 @cuse_server_data_copy_locked(%struct.cuse_server_dev* %425, %struct.cuse_data_chunk* %426, i32 %429)
  store i32 %430, i32* %13, align 4
  br label %431

431:                                              ; preds = %423, %415
  br label %432

432:                                              ; preds = %431, %407
  br label %433

433:                                              ; preds = %432, %399
  %434 = call i32 (...) @cuse_unlock()
  br label %442

435:                                              ; preds = %27
  %436 = call i32 (...) @cuse_lock()
  %437 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %438 = call i32 @cuse_server_wakeup_all_client_locked(%struct.cuse_server* %437)
  %439 = call i32 (...) @cuse_unlock()
  br label %442

440:                                              ; preds = %27
  %441 = load i32, i32* @ENXIO, align 4
  store i32 %441, i32* %13, align 4
  br label %442

442:                                              ; preds = %440, %435, %433, %387, %351, %332, %327, %296, %278, %263, %255, %216, %195, %193, %175, %173, %165, %147, %136, %135, %114, %98, %57
  %443 = load i32, i32* %13, align 4
  store i32 %443, i32* %6, align 4
  br label %444

444:                                              ; preds = %442, %53, %25
  %445 = load i32, i32* %6, align 4
  ret i32 %445
}

declare dso_local i32 @cuse_server_get(%struct.cuse_server**) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local %struct.cuse_server_dev* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cuse_server_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.cuse_server_dev* @cuse_server_find_command(%struct.cuse_server*, i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cuse_alloc_unit_by_id_locked(%struct.cuse_server*, i32) #1

declare dso_local i32 @CUSE_ID_DEFAULT(i32) #1

declare dso_local i32 @cuse_free_unit_by_id_locked(%struct.cuse_server*, i32) #1

declare dso_local i32 @cuse_server_alloc_memory(%struct.cuse_server*, i32, i32) #1

declare dso_local i32 @cuse_server_free_memory(%struct.cuse_server*, i32) #1

declare dso_local i32 @priv_check(i32*, i32) #1

declare dso_local i32 @cuse_str_filter(i32*) #1

declare dso_local %struct.cuse_server_dev* @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @make_dev_credf(i32, i32*, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.cuse_server_dev*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cuse_server_dev*, i32) #1

declare dso_local i32 @cuse_server_free_dev(%struct.cuse_server_dev*) #1

declare dso_local %struct.cuse_server_dev* @TAILQ_NEXT(%struct.cuse_server_dev*, i32) #1

declare dso_local i32 @cuse_server_ioctl_copy_locked(%struct.cuse_server_dev*, %struct.cuse_data_chunk*, i32) #1

declare dso_local i32 @cuse_server_data_copy_locked(%struct.cuse_server_dev*, %struct.cuse_data_chunk*, i32) #1

declare dso_local i32 @cuse_server_wakeup_all_client_locked(%struct.cuse_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
