; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_worker_process_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_worker_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.au_record = type { i32, i32 }

@AR_COMMIT_USER = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_TRAIL = common dso_local global i32 0, align 4
@AR_PRESELECT_TRAIL = common dso_local global i32 0, align 4
@audit_vp = common dso_local global i32 0, align 4
@audit_cred = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_PIPE = common dso_local global i32 0, align 4
@AR_COMMIT_KERNEL = common dso_local global i32 0, align 4
@AR_PRESELECT_PIPE = common dso_local global i32 0, align 4
@AR_PRESELECT_DTRACE = common dso_local global i32 0, align 4
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"audit_worker_process_record: BSM_FAILURE\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"kaudit_to_bsm returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaudit_record*)* @audit_worker_process_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_worker_process_record(%struct.kaudit_record* %0) #0 {
  %2 = alloca %struct.kaudit_record*, align 8
  %3 = alloca %struct.au_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kaudit_record* %0, %struct.kaudit_record** %2, align 8
  %10 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %11 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AR_COMMIT_USER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %18 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR_PRESELECT_USER_TRAIL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %25 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %16
  %31 = call i32 (...) @AUDIT_WORKER_LOCK()
  store i32 1, i32* %9, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %35 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AR_COMMIT_USER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %42 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AR_PRESELECT_USER_TRAIL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = call i32 (...) @AUDIT_WORKER_LOCK_ASSERT()
  %49 = load i32, i32* @audit_vp, align 4
  %50 = load i32, i32* @audit_cred, align 4
  %51 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %52 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %55 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @audit_record_write(i32 %49, i32 %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %40, %33
  %59 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %60 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AR_COMMIT_USER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %67 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AR_PRESELECT_USER_PIPE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %74 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %77 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @audit_pipe_submit_user(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %65, %58
  %81 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %82 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AR_COMMIT_KERNEL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %89 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %87
  %95 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %96 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %103 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @AR_PRESELECT_DTRACE, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101, %80
  br label %185

109:                                              ; preds = %101, %94, %87
  %110 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %111 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  %114 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %115 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @au_event_class(i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %121 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = load i32, i32* @AU_PRS_SUCCESS, align 4
  store i32 %126, i32* %8, align 4
  br label %129

127:                                              ; preds = %109
  %128 = load i32, i32* @AU_PRS_FAILURE, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %131 = call i32 @kaudit_to_bsm(%struct.kaudit_record* %130, %struct.au_record** %3)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %137 [
    i32 129, label %133
    i32 130, label %134
    i32 128, label %136
  ]

133:                                              ; preds = %129
  br label %185

134:                                              ; preds = %129
  %135 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %185

136:                                              ; preds = %129
  br label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %136
  %141 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %142 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %140
  %148 = call i32 (...) @AUDIT_WORKER_LOCK_ASSERT()
  %149 = load i32, i32* @audit_vp, align 4
  %150 = load i32, i32* @audit_cred, align 4
  %151 = load %struct.au_record*, %struct.au_record** %3, align 8
  %152 = getelementptr inbounds %struct.au_record, %struct.au_record* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.au_record*, %struct.au_record** %3, align 8
  %155 = getelementptr inbounds %struct.au_record, %struct.au_record* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @audit_record_write(i32 %149, i32 %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %147, %140
  %159 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %160 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %158
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %171 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %174 = and i32 %172, %173
  %175 = load %struct.au_record*, %struct.au_record** %3, align 8
  %176 = getelementptr inbounds %struct.au_record, %struct.au_record* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.au_record*, %struct.au_record** %3, align 8
  %179 = getelementptr inbounds %struct.au_record, %struct.au_record* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @audit_pipe_submit(i32 %166, i32 %167, i32 %168, i32 %169, i32 %174, i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %165, %158
  %183 = load %struct.au_record*, %struct.au_record** %3, align 8
  %184 = call i32 @kau_free(%struct.au_record* %183)
  br label %185

185:                                              ; preds = %182, %134, %133, %108
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 (...) @AUDIT_WORKER_UNLOCK()
  br label %190

190:                                              ; preds = %188, %185
  ret void
}

declare dso_local i32 @AUDIT_WORKER_LOCK(...) #1

declare dso_local i32 @AUDIT_WORKER_LOCK_ASSERT(...) #1

declare dso_local i32 @audit_record_write(i32, i32, i32, i32) #1

declare dso_local i32 @audit_pipe_submit_user(i32, i32) #1

declare dso_local i32 @au_event_class(i32) #1

declare dso_local i32 @kaudit_to_bsm(%struct.kaudit_record*, %struct.au_record**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @audit_pipe_submit(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kau_free(%struct.au_record*) #1

declare dso_local i32 @AUDIT_WORKER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
