; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_record_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_record_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { %struct.statfs }
%struct.statfs = type { i64, i32, i64 }
%struct.ucred = type { i32 }

@audit_record_write.last_lowspace_trigger = internal global %struct.timeval zeroinitializer, align 4
@audit_record_write.last_fail = internal global %struct.timeval zeroinitializer, align 4
@audit_record_write.cur_lowspace_trigger = internal global i32 0, align 4
@audit_record_write.cur_fail = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDIT_HARD_LIMIT_FREE_BLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@audit_qctrl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@AUDIT_TRIGGER_LOW_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Warning: disk space low (< %d%% free) on audit log file-system\0A\00", align 1
@audit_fstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@audit_size = common dso_local global i32 0, align 4
@audit_file_rotate_wait = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_ROTATE_KERNEL = common dso_local global i32 0, align 4
@audit_fail_stop = common dso_local global i64 0, align 8
@audit_q_len = common dso_local global i32 0, align 4
@audit_pre_q_len = common dso_local global i32 0, align 4
@MAX_AUDIT_RECORD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"audit_record_write: free space below size of audit queue, failing stop\0A\00", align 1
@audit_in_failure = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Audit store overflow; record queue drained.\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Audit log space exhausted and fail-stop set.\00", align 1
@AUDIT_TRIGGER_NO_SPACE = common dso_local global i32 0, align 4
@audit_trail_suspended = common dso_local global i32 0, align 4
@audit_panic_on_write_fail = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"audit_worker: write error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.ucred*, i8*, i64)* @audit_record_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_record_write(%struct.vnode* %0, %struct.ucred* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.statfs*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.ucred* %1, %struct.ucred** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call i32 (...) @AUDIT_WORKER_LOCK_ASSERT()
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = icmp eq %struct.vnode* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %197

17:                                               ; preds = %4
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load %struct.mount*, %struct.mount** %19, align 8
  store %struct.mount* %20, %struct.mount** %10, align 8
  %21 = load %struct.mount*, %struct.mount** %10, align 8
  %22 = icmp eq %struct.mount* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %11, align 4
  br label %176

25:                                               ; preds = %17
  %26 = load %struct.mount*, %struct.mount** %10, align 8
  %27 = call i32 @vfs_busy(%struct.mount* %26, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.mount* null, %struct.mount** %10, align 8
  br label %176

31:                                               ; preds = %25
  %32 = load %struct.mount*, %struct.mount** %10, align 8
  %33 = getelementptr inbounds %struct.mount, %struct.mount* %32, i32 0, i32 0
  store %struct.statfs* %33, %struct.statfs** %9, align 8
  %34 = load %struct.mount*, %struct.mount** %10, align 8
  %35 = load %struct.statfs*, %struct.statfs** %9, align 8
  %36 = call i32 @VFS_STATFS(%struct.mount* %34, %struct.statfs* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %176

40:                                               ; preds = %31
  %41 = load %struct.statfs*, %struct.statfs** %9, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AUDIT_HARD_LIMIT_FREE_BLOCKS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOSPC, align 4
  store i32 %47, i32* %11, align 4
  br label %165

48:                                               ; preds = %40
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @audit_qctrl, i32 0, i32 0), align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.statfs*, %struct.statfs** %9, align 8
  %53 = getelementptr inbounds %struct.statfs, %struct.statfs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @audit_qctrl, i32 0, i32 0), align 4
  %56 = sdiv i32 100, %55
  %57 = sdiv i32 %54, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %12, align 8
  %59 = load %struct.statfs*, %struct.statfs** %9, align 8
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_lowspace_trigger, i32* @audit_record_write.cur_lowspace_trigger, i32 1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @AUDIT_TRIGGER_LOW_SPACE, align 4
  %69 = call i32 @audit_send_trigger(i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @audit_qctrl, i32 0, i32 0), align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_fstat, i32 0, i32 0), align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* @audit_size, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_fstat, i32 0, i32 0), align 4
  %80 = load i32, i32* @audit_file_rotate_wait, align 4
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  %83 = icmp sge i32 %78, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = call i32 (...) @AUDIT_WORKER_LOCK_ASSERT()
  %86 = load i32, i32* @audit_file_rotate_wait, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @audit_file_rotate_wait, align 4
  %88 = load i32, i32* @AUDIT_TRIGGER_ROTATE_KERNEL, align 4
  %89 = call i32 @audit_send_trigger(i32 %88)
  br label %90

90:                                               ; preds = %84, %77, %74
  %91 = load i64, i64* @audit_fail_stop, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load i32, i32* @audit_q_len, align 4
  %95 = load i32, i32* @audit_pre_q_len, align 4
  %96 = add nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @MAX_AUDIT_RECORD_SIZE, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load %struct.statfs*, %struct.statfs** %9, align 8
  %102 = getelementptr inbounds %struct.statfs, %struct.statfs* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = udiv i64 %100, %103
  %105 = load %struct.statfs*, %struct.statfs** %9, align 8
  %106 = getelementptr inbounds %struct.statfs, %struct.statfs* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp uge i64 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %93
  %110 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_fail, i32* @audit_record_write.cur_fail, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  store i32 1, i32* @audit_in_failure, align 4
  br label %120

115:                                              ; preds = %93
  %116 = load i32, i32* @audit_in_failure, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %115
  br label %120

120:                                              ; preds = %119, %114
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i32, i32* @UIO_WRITE, align 4
  %123 = load %struct.vnode*, %struct.vnode** %5, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* @UIO_SYSSPACE, align 4
  %127 = load i32, i32* @IO_APPEND, align 4
  %128 = load i32, i32* @IO_UNIT, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.ucred*, %struct.ucred** %6, align 8
  %131 = load i32, i32* @curthread, align 4
  %132 = call i32 @vn_rdwr(i32 %122, %struct.vnode* %123, i8* %124, i64 %125, i32 0, i32 %126, i32 %129, %struct.ucred* %130, i32* null, i32* null, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ENOSPC, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  br label %165

137:                                              ; preds = %121
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %176

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141
  %143 = call i32 (...) @AUDIT_WORKER_LOCK_ASSERT()
  %144 = load i64, i64* %8, align 8
  %145 = load i32, i32* @audit_size, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* @audit_size, align 4
  %149 = load i32, i32* @audit_in_failure, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %142
  %152 = load i32, i32* @audit_q_len, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* @audit_pre_q_len, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.vnode*, %struct.vnode** %5, align 8
  %159 = load %struct.mount*, %struct.mount** %10, align 8
  %160 = call i32 (%struct.vnode*, %struct.mount*, i8*, ...) @audit_worker_sync_vp(%struct.vnode* %158, %struct.mount* %159, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %154, %151
  br label %162

162:                                              ; preds = %161, %142
  %163 = load %struct.mount*, %struct.mount** %10, align 8
  %164 = call i32 @vfs_unbusy(%struct.mount* %163)
  br label %197

165:                                              ; preds = %136, %46
  %166 = load i64, i64* @audit_fail_stop, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.vnode*, %struct.vnode** %5, align 8
  %170 = load %struct.mount*, %struct.mount** %10, align 8
  %171 = call i32 (%struct.vnode*, %struct.mount*, i8*, ...) @audit_worker_sync_vp(%struct.vnode* %169, %struct.mount* %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %168, %165
  %173 = load i32, i32* @AUDIT_TRIGGER_NO_SPACE, align 4
  %174 = call i32 @audit_send_trigger(i32 %173)
  store i32 1, i32* @audit_trail_suspended, align 4
  %175 = call i32 (...) @audit_syscalls_enabled_update()
  br label %176

176:                                              ; preds = %172, %140, %39, %30, %23
  %177 = load i64, i64* @audit_panic_on_write_fail, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.vnode*, %struct.vnode** %5, align 8
  %181 = load %struct.mount*, %struct.mount** %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 (%struct.vnode*, %struct.mount*, i8*, ...) @audit_worker_sync_vp(%struct.vnode* %180, %struct.mount* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  br label %191

184:                                              ; preds = %176
  %185 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_fail, i32* @audit_record_write.cur_fail, i32 1)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %179
  %192 = load %struct.mount*, %struct.mount** %10, align 8
  %193 = icmp ne %struct.mount* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.mount*, %struct.mount** %10, align 8
  %196 = call i32 @vfs_unbusy(%struct.mount* %195)
  br label %197

197:                                              ; preds = %16, %162, %194, %191
  ret void
}

declare dso_local i32 @AUDIT_WORKER_LOCK_ASSERT(...) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @VFS_STATFS(%struct.mount*, %struct.statfs*) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @audit_send_trigger(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i8*, i64, i32, i32, i32, %struct.ucred*, i32*, i32*, i32) #1

declare dso_local i32 @audit_worker_sync_vp(%struct.vnode*, %struct.mount*, i8*, ...) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @audit_syscalls_enabled_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
