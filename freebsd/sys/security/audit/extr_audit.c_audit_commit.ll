; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_mask = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.kaudit_record = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.au_mask, i32 }

@AU_DEFAUDITID = common dso_local global i64 0, align 8
@audit_nae_mask = common dso_local global %struct.au_mask zeroinitializer, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@ARG_SVIPC_WHICH = common dso_local global i32 0, align 4
@AR_COMMIT_KERNEL = common dso_local global i32 0, align 4
@AR_PRESELECT_TRAIL = common dso_local global i32 0, align 4
@AR_PRESELECT_PIPE = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_TRAIL = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_PIPE = common dso_local global i32 0, align 4
@AR_PRESELECT_DTRACE = common dso_local global i32 0, align 4
@audit_mtx = common dso_local global i32 0, align 4
@audit_pre_q_len = common dso_local global i32 0, align 4
@audit_trail_suspended = common dso_local global i64 0, align 8
@audit_trail_enabled = common dso_local global i32 0, align 4
@audit_q_len = common dso_local global i64 0, align 8
@audit_qctrl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@audit_watermark_cv = common dso_local global i32 0, align 4
@audit_q = common dso_local global i32 0, align 4
@k_q = common dso_local global i32 0, align 4
@audit_worker_cv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_commit(%struct.kaudit_record* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kaudit_record*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.au_mask*, align 8
  store %struct.kaudit_record* %0, %struct.kaudit_record** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %13 = icmp eq %struct.kaudit_record* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %236

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %18 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %22 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %25 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  %27 = call i32 @nanotime(i32* %26)
  %28 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %29 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AU_DEFAUDITID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store %struct.au_mask* @audit_nae_mask, %struct.au_mask** %11, align 8
  br label %39

35:                                               ; preds = %15
  %36 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %37 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 9
  store %struct.au_mask* %38, %struct.au_mask** %11, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @AU_PRS_FAILURE, align 4
  store i32 %43, i32* %10, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @AU_PRS_SUCCESS, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %48 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %138 [
    i32 131, label %51
    i32 132, label %61
    i32 128, label %71
    i32 134, label %84
    i32 133, label %93
    i32 130, label %108
    i32 129, label %123
  ]

51:                                               ; preds = %46
  %52 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %53 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @audit_flags_and_error_to_openevent(i32 %55, i32 %56)
  %58 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %59 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 8
  br label %138

61:                                               ; preds = %46
  %62 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %63 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @audit_flags_and_error_to_openatevent(i32 %65, i32 %66)
  %68 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %69 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  br label %138

71:                                               ; preds = %46
  %72 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %73 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %77 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @audit_ctlname_to_sysctlevent(i32 %75, i32 %79)
  %81 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %82 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  br label %138

84:                                               ; preds = %46
  %85 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %86 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @auditon_command_event(i32 %88)
  %90 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %91 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 8
  br label %138

93:                                               ; preds = %46
  %94 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %95 = load i32, i32* @ARG_SVIPC_WHICH, align 4
  %96 = call i32 @ARG_IS_VALID(%struct.kaudit_record* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %100 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @audit_msgsys_to_event(i32 %102)
  %104 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %105 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %98, %93
  br label %138

108:                                              ; preds = %46
  %109 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %110 = load i32, i32* @ARG_SVIPC_WHICH, align 4
  %111 = call i32 @ARG_IS_VALID(%struct.kaudit_record* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %115 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @audit_semsys_to_event(i32 %117)
  %119 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %120 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %108
  br label %138

123:                                              ; preds = %46
  %124 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %125 = load i32, i32* @ARG_SVIPC_WHICH, align 4
  %126 = call i32 @ARG_IS_VALID(%struct.kaudit_record* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %130 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @audit_shmsys_to_event(i32 %132)
  %134 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %135 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %128, %123
  br label %138

138:                                              ; preds = %46, %137, %122, %107, %84, %71, %61, %51
  %139 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %140 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %9, align 8
  %143 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %144 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @au_event_class(i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @AR_COMMIT_KERNEL, align 4
  %150 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %151 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.au_mask*, %struct.au_mask** %11, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i64 @au_preselect(i32 %154, i32 %155, %struct.au_mask* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %138
  %161 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %162 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %163 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %138
  %167 = load i64, i64* %9, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %172 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %175 = and i32 %173, %174
  %176 = call i64 @audit_pipe_preselect(i64 %167, i32 %168, i32 %169, i32 %170, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %166
  %179 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %180 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %181 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %178, %166
  %185 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %186 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %189 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @AR_PRESELECT_USER_TRAIL, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @AR_PRESELECT_USER_PIPE, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @AR_PRESELECT_DTRACE, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %187, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %184
  %200 = call i32 @mtx_lock(i32* @audit_mtx)
  %201 = load i32, i32* @audit_pre_q_len, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* @audit_pre_q_len, align 4
  %203 = call i32 @mtx_unlock(i32* @audit_mtx)
  %204 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %205 = call i32 @audit_free(%struct.kaudit_record* %204)
  br label %236

206:                                              ; preds = %184
  %207 = call i32 @mtx_lock(i32* @audit_mtx)
  %208 = load i64, i64* @audit_trail_suspended, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* @audit_trail_enabled, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210, %206
  %214 = load i32, i32* @audit_pre_q_len, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* @audit_pre_q_len, align 4
  %216 = call i32 @mtx_unlock(i32* @audit_mtx)
  %217 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %218 = call i32 @audit_free(%struct.kaudit_record* %217)
  br label %236

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %224, %219
  %221 = load i64, i64* @audit_q_len, align 8
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_qctrl, i32 0, i32 0), align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call i32 @cv_wait(i32* @audit_watermark_cv, i32* @audit_mtx)
  br label %220

226:                                              ; preds = %220
  %227 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %228 = load i32, i32* @k_q, align 4
  %229 = call i32 @TAILQ_INSERT_TAIL(i32* @audit_q, %struct.kaudit_record* %227, i32 %228)
  %230 = load i64, i64* @audit_q_len, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* @audit_q_len, align 8
  %232 = load i32, i32* @audit_pre_q_len, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* @audit_pre_q_len, align 4
  %234 = call i32 @cv_signal(i32* @audit_worker_cv)
  %235 = call i32 @mtx_unlock(i32* @audit_mtx)
  br label %236

236:                                              ; preds = %226, %213, %199, %14
  ret void
}

declare dso_local i32 @nanotime(i32*) #1

declare dso_local i32 @audit_flags_and_error_to_openevent(i32, i32) #1

declare dso_local i32 @audit_flags_and_error_to_openatevent(i32, i32) #1

declare dso_local i32 @audit_ctlname_to_sysctlevent(i32, i32) #1

declare dso_local i32 @auditon_command_event(i32) #1

declare dso_local i32 @ARG_IS_VALID(%struct.kaudit_record*, i32) #1

declare dso_local i32 @audit_msgsys_to_event(i32) #1

declare dso_local i32 @audit_semsys_to_event(i32) #1

declare dso_local i32 @audit_shmsys_to_event(i32) #1

declare dso_local i32 @au_event_class(i32) #1

declare dso_local i64 @au_preselect(i32, i32, %struct.au_mask*, i32) #1

declare dso_local i64 @audit_pipe_preselect(i64, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @audit_free(%struct.kaudit_record*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.kaudit_record*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
