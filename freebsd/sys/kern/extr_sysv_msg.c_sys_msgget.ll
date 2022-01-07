; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.msqid_kernel = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__, i32, i64, i64, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.thread = type { i32*, i32, %struct.ucred* }
%struct.ucred = type { i64, i32, i32 }
%struct.msgget_args = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"msgget(0x%x, 0%o)\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@msq_mtx = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"found public key\0A\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"not exclusive\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"requester doesn't have 0%o access\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"need to allocate the msqid_ds\0A\00", align 1
@MSG_LOCKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"no more msqid_ds's available\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"msqid %d is available\0A\00", align 1
@time_second = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"didn't find it and wasn't asked to create it\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RACCT_NMSGQ = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_msgget(%struct.thread* %0, %struct.msgget_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.msgget_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.msqid_kernel*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.msgget_args* %1, %struct.msgget_args** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.msgget_args*, %struct.msgget_args** %5, align 8
  %13 = getelementptr inbounds %struct.msgget_args, %struct.msgget_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.msgget_args*, %struct.msgget_args** %5, align 8
  %16 = getelementptr inbounds %struct.msgget_args, %struct.msgget_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 2
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %10, align 8
  store %struct.msqid_kernel* null, %struct.msqid_kernel** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DPRINTF(i8* %24)
  %26 = load %struct.ucred*, %struct.ucred** %10, align 8
  %27 = call i32* @msg_find_prison(%struct.ucred* %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOSYS, align 4
  store i32 %30, i32* %3, align 4
  br label %278

31:                                               ; preds = %2
  %32 = call i32 @mtx_lock(i32* @msq_mtx)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IPC_PRIVATE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %120

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msginfo, i32 0, i32 0), align 8
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %42, i64 %44
  store %struct.msqid_kernel* %45, %struct.msqid_kernel** %11, align 8
  %46 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %47 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  %52 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %53 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %58 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ucred*, %struct.ucred** %10, align 8
  %63 = getelementptr inbounds %struct.ucred, %struct.ucred* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %68 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66, %56, %51, %41
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %37

79:                                               ; preds = %74, %37
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msginfo, i32 0, i32 0), align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %79
  %84 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @IPC_CREAT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @IPC_EXCL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EEXIST, align 4
  store i32 %96, i32* %7, align 4
  br label %275

97:                                               ; preds = %89, %83
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %100 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = call i32 @IXSEQ_TO_IPCID(i32 %98, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %101)
  %103 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %102)
  %104 = load %struct.thread*, %struct.thread** %4, align 8
  %105 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %106 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 448
  %110 = call i32 @ipcperm(%struct.thread* %104, %struct.TYPE_9__* %107, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 448
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @DPRINTF(i8* %116)
  br label %275

118:                                              ; preds = %97
  br label %265

119:                                              ; preds = %79
  br label %120

120:                                              ; preds = %119, %31
  %121 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @IPC_PRIVATE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IPC_CREAT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %261

130:                                              ; preds = %125, %120
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %156, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msginfo, i32 0, i32 0), align 8
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %136, i64 %138
  store %struct.msqid_kernel* %139, %struct.msqid_kernel** %11, align 8
  %140 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %141 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %135
  %146 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %147 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MSG_LOCKED, align 4
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %159

155:                                              ; preds = %145, %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %131

159:                                              ; preds = %154, %131
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msginfo, i32 0, i32 0), align 8
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* @ENOSPC, align 4
  store i32 %165, i32* %7, align 4
  br label %275

166:                                              ; preds = %159
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @DPRINTF(i8* %169)
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %173 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  %176 = load %struct.ucred*, %struct.ucred** %10, align 8
  %177 = getelementptr inbounds %struct.ucred, %struct.ucred* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %180 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 6
  store i32 %178, i32* %182, align 8
  %183 = load %struct.ucred*, %struct.ucred** %10, align 8
  %184 = getelementptr inbounds %struct.ucred, %struct.ucred* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %187 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  store i32 %185, i32* %189, align 4
  %190 = load %struct.ucred*, %struct.ucred** %10, align 8
  %191 = getelementptr inbounds %struct.ucred, %struct.ucred* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %194 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 4
  store i32 %192, i32* %196, align 8
  %197 = load %struct.ucred*, %struct.ucred** %10, align 8
  %198 = getelementptr inbounds %struct.ucred, %struct.ucred* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %201 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* %9, align 4
  %205 = and i32 %204, 511
  %206 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %207 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i32 %205, i32* %209, align 4
  %210 = load %struct.ucred*, %struct.ucred** %10, align 8
  %211 = call %struct.TYPE_10__* @crhold(%struct.ucred* %210)
  %212 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %213 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %212, i32 0, i32 1
  store %struct.TYPE_10__* %211, %struct.TYPE_10__** %213, align 8
  %214 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %215 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  %220 = and i32 %219, 32767
  %221 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %222 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  store i32 %220, i32* %224, align 8
  %225 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %226 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 10
  store i32* null, i32** %227, align 8
  %228 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %229 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 9
  store i32* null, i32** %230, align 8
  %231 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %232 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 8
  store i64 0, i64* %233, align 8
  %234 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %235 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 7
  store i64 0, i64* %236, align 8
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msginfo, i32 0, i32 1), align 8
  %238 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %239 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  store i64 %237, i64* %240, align 8
  %241 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %242 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 6
  store i64 0, i64* %243, align 8
  %244 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %245 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 5
  store i64 0, i64* %246, align 8
  %247 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %248 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 4
  store i64 0, i64* %249, align 8
  %250 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %251 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 3
  store i64 0, i64* %252, align 8
  %253 = load i32, i32* @time_second, align 4
  %254 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %255 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 4
  %257 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %258 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = call i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_9__* %259)
  br label %264

261:                                              ; preds = %125
  %262 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %263 = load i32, i32* @ENOENT, align 4
  store i32 %263, i32* %7, align 4
  br label %275

264:                                              ; preds = %166
  br label %265

265:                                              ; preds = %264, %118
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.msqid_kernel*, %struct.msqid_kernel** %11, align 8
  %268 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = call i32 @IXSEQ_TO_IPCID(i32 %266, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %269)
  %271 = load %struct.thread*, %struct.thread** %4, align 8
  %272 = getelementptr inbounds %struct.thread, %struct.thread* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 %270, i32* %274, align 4
  br label %275

275:                                              ; preds = %265, %261, %163, %112, %94
  %276 = call i32 @mtx_unlock(i32* @msq_mtx)
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %275, %29
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32* @msg_find_prison(%struct.ucred*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i32 @ipcperm(%struct.thread*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_10__* @crhold(%struct.ucred*) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_PERM(%struct.TYPE_9__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
