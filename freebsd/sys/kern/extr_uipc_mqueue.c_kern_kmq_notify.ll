; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.sigevent = type { i64, i32 }
%struct.mqueue = type { i64, i32, i32, %struct.mqueue_notifier* }
%struct.mqueue_notifier = type { %struct.sigevent, %struct.TYPE_3__, %struct.proc* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.file = type { i32 }

@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@SIGEV_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KSI_INS = common dso_local global i32 0, align 4
@KSI_EXT = common dso_local global i32 0, align 4
@SI_MESGQ = common dso_local global i32 0, align 4
@cap_event_rights = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.sigevent*)* @kern_kmq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_kmq_notify(%struct.thread* %0, i32 %1, %struct.sigevent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigevent*, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.mqueue*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.mqueue_notifier*, align 8
  %14 = alloca %struct.mqueue_notifier*, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sigevent* %2, %struct.sigevent** %7, align 8
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @AUDIT_ARG_FD(i32 %16)
  %18 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %19 = icmp ne %struct.sigevent* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %22 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIGEV_SIGNAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %28 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %34 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIGEV_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %217

40:                                               ; preds = %32, %26, %20
  %41 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %42 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SIGEV_SIGNAL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %48 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46, %40
  %53 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %54 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @_SIG_VALID(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %217

60:                                               ; preds = %52, %46
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load %struct.proc*, %struct.proc** %63, align 8
  store %struct.proc* %64, %struct.proc** %9, align 8
  %65 = load %struct.thread*, %struct.thread** %5, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load %struct.proc*, %struct.proc** %66, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load %struct.filedesc*, %struct.filedesc** %68, align 8
  store %struct.filedesc* %69, %struct.filedesc** %8, align 8
  %70 = load %struct.thread*, %struct.thread** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @getmq(%struct.thread* %70, i32 %71, %struct.file** %11, i32* null, %struct.mqueue** %10)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %4, align 4
  br label %217

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %124, %77
  %79 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %80 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %79)
  %81 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.file* @fget_locked(%struct.filedesc* %81, i32 %82)
  store %struct.file* %83, %struct.file** %12, align 8
  %84 = load %struct.file*, %struct.file** %12, align 8
  %85 = icmp eq %struct.file* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %88 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %87)
  %89 = load i32, i32* @EBADF, align 4
  store i32 %89, i32* %15, align 4
  br label %206

90:                                               ; preds = %78
  %91 = load %struct.file*, %struct.file** %12, align 8
  %92 = load %struct.file*, %struct.file** %11, align 8
  %93 = icmp ne %struct.file* %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %96 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %95)
  %97 = load i32, i32* @EBADF, align 4
  store i32 %97, i32* %15, align 4
  br label %206

98:                                               ; preds = %90
  %99 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %100 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %99, i32 0, i32 1
  %101 = call i32 @mtx_lock(i32* %100)
  %102 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %103 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %102)
  %104 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %105 = icmp ne %struct.sigevent* %104, null
  br i1 %105, label %106, label %197

106:                                              ; preds = %98
  %107 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %108 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %107, i32 0, i32 3
  %109 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %108, align 8
  %110 = icmp ne %struct.mqueue_notifier* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @EBUSY, align 4
  store i32 %112, i32* %15, align 4
  br label %196

113:                                              ; preds = %106
  %114 = load %struct.proc*, %struct.proc** %9, align 8
  %115 = call i32 @PROC_LOCK(%struct.proc* %114)
  %116 = load %struct.proc*, %struct.proc** %9, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call %struct.mqueue_notifier* @notifier_search(%struct.proc* %116, i32 %117)
  store %struct.mqueue_notifier* %118, %struct.mqueue_notifier** %13, align 8
  %119 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %120 = icmp eq %struct.mqueue_notifier* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  %123 = icmp eq %struct.mqueue_notifier* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.proc*, %struct.proc** %9, align 8
  %126 = call i32 @PROC_UNLOCK(%struct.proc* %125)
  %127 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %128 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %127, i32 0, i32 1
  %129 = call i32 @mtx_unlock(i32* %128)
  %130 = call %struct.mqueue_notifier* (...) @notifier_alloc()
  store %struct.mqueue_notifier* %130, %struct.mqueue_notifier** %14, align 8
  br label %78

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %134 = icmp ne %struct.mqueue_notifier* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %137 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %136, i32 0, i32 1
  %138 = call i32 @sigqueue_take(%struct.TYPE_3__* %137)
  %139 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  %140 = icmp ne %struct.mqueue_notifier* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  %143 = call i32 @notifier_free(%struct.mqueue_notifier* %142)
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %14, align 8
  br label %144

144:                                              ; preds = %141, %135
  br label %172

145:                                              ; preds = %132
  %146 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  store %struct.mqueue_notifier* %146, %struct.mqueue_notifier** %13, align 8
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %14, align 8
  %147 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %148 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %147, i32 0, i32 1
  %149 = call i32 @ksiginfo_init(%struct.TYPE_3__* %148)
  %150 = load i32, i32* @KSI_INS, align 4
  %151 = load i32, i32* @KSI_EXT, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %154 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* @SI_MESGQ, align 4
  %159 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %160 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load %struct.proc*, %struct.proc** %9, align 8
  %163 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %164 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %163, i32 0, i32 2
  store %struct.proc* %162, %struct.proc** %164, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %167 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load %struct.proc*, %struct.proc** %9, align 8
  %170 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %171 = call i32 @notifier_insert(%struct.proc* %169, %struct.mqueue_notifier* %170)
  br label %172

172:                                              ; preds = %145, %144
  %173 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %174 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %173, i32 0, i32 0
  %175 = load %struct.sigevent*, %struct.sigevent** %7, align 8
  %176 = bitcast %struct.sigevent* %174 to i8*
  %177 = bitcast %struct.sigevent* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 16, i1 false)
  %178 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %13, align 8
  %179 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %180 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %179, i32 0, i32 3
  store %struct.mqueue_notifier* %178, %struct.mqueue_notifier** %180, align 8
  %181 = load %struct.proc*, %struct.proc** %9, align 8
  %182 = call i32 @PROC_UNLOCK(%struct.proc* %181)
  %183 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %184 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %172
  %188 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %189 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %188, i32 0, i32 2
  %190 = call i32 @TAILQ_EMPTY(i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %194 = call i32 @mqueue_send_notification(%struct.mqueue* %193)
  br label %195

195:                                              ; preds = %192, %187, %172
  br label %196

196:                                              ; preds = %195, %111
  br label %202

197:                                              ; preds = %98
  %198 = load %struct.proc*, %struct.proc** %9, align 8
  %199 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @notifier_remove(%struct.proc* %198, %struct.mqueue* %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %196
  %203 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  %204 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %203, i32 0, i32 1
  %205 = call i32 @mtx_unlock(i32* %204)
  br label %206

206:                                              ; preds = %202, %94, %86
  %207 = load %struct.file*, %struct.file** %11, align 8
  %208 = load %struct.thread*, %struct.thread** %5, align 8
  %209 = call i32 @fdrop(%struct.file* %207, %struct.thread* %208)
  %210 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  %211 = icmp ne %struct.mqueue_notifier* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %14, align 8
  %214 = call i32 @notifier_free(%struct.mqueue_notifier* %213)
  br label %215

215:                                              ; preds = %212, %206
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %75, %58, %38
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @getmq(%struct.thread*, i32, %struct.file**, i32*, %struct.mqueue**) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local %struct.file* @fget_locked(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.mqueue_notifier* @notifier_search(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.mqueue_notifier* @notifier_alloc(...) #1

declare dso_local i32 @sigqueue_take(%struct.TYPE_3__*) #1

declare dso_local i32 @notifier_free(%struct.mqueue_notifier*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_3__*) #1

declare dso_local i32 @notifier_insert(%struct.proc*, %struct.mqueue_notifier*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mqueue_send_notification(%struct.mqueue*) #1

declare dso_local i32 @notifier_remove(%struct.proc*, %struct.mqueue*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
