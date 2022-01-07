; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_kau_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_kau_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_record = type { %struct.au_record*, i64, i64, %struct.au_record*, i32 }
%struct.au_token = type { %struct.au_token*, i64, i64, %struct.au_token*, i32 }

@tokens = common dso_local global i32 0, align 4
@M_AUDITBSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kau_free(%struct.au_record* %0) #0 {
  %2 = alloca %struct.au_record*, align 8
  %3 = alloca %struct.au_token*, align 8
  store %struct.au_record* %0, %struct.au_record** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.au_record*, %struct.au_record** %2, align 8
  %6 = getelementptr inbounds %struct.au_record, %struct.au_record* %5, i32 0, i32 4
  %7 = call %struct.au_token* @TAILQ_FIRST(i32* %6)
  store %struct.au_token* %7, %struct.au_token** %3, align 8
  %8 = icmp ne %struct.au_token* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load %struct.au_record*, %struct.au_record** %2, align 8
  %11 = getelementptr inbounds %struct.au_record, %struct.au_record* %10, i32 0, i32 4
  %12 = load %struct.au_token*, %struct.au_token** %3, align 8
  %13 = load i32, i32* @tokens, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.au_token* %12, i32 %13)
  %15 = load %struct.au_token*, %struct.au_token** %3, align 8
  %16 = getelementptr inbounds %struct.au_token, %struct.au_token* %15, i32 0, i32 3
  %17 = load %struct.au_token*, %struct.au_token** %16, align 8
  %18 = load i32, i32* @M_AUDITBSM, align 4
  %19 = call i32 @free(%struct.au_token* %17, i32 %18)
  %20 = load %struct.au_token*, %struct.au_token** %3, align 8
  %21 = load i32, i32* @M_AUDITBSM, align 4
  %22 = call i32 @free(%struct.au_token* %20, i32 %21)
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.au_record*, %struct.au_record** %2, align 8
  %25 = getelementptr inbounds %struct.au_record, %struct.au_record* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.au_record*, %struct.au_record** %2, align 8
  %27 = getelementptr inbounds %struct.au_record, %struct.au_record* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.au_record*, %struct.au_record** %2, align 8
  %29 = getelementptr inbounds %struct.au_record, %struct.au_record* %28, i32 0, i32 0
  %30 = load %struct.au_record*, %struct.au_record** %29, align 8
  %31 = bitcast %struct.au_record* %30 to %struct.au_token*
  %32 = load i32, i32* @M_AUDITBSM, align 4
  %33 = call i32 @free(%struct.au_token* %31, i32 %32)
  %34 = load %struct.au_record*, %struct.au_record** %2, align 8
  %35 = bitcast %struct.au_record* %34 to %struct.au_token*
  %36 = load i32, i32* @M_AUDITBSM, align 4
  %37 = call i32 @free(%struct.au_token* %35, i32 %36)
  ret void
}

declare dso_local %struct.au_token* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.au_token*, i32) #1

declare dso_local i32 @free(%struct.au_token*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
