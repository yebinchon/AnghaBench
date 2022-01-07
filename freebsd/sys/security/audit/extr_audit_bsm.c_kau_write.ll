; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_kau_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_kau_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_record = type { i32, i32 }
%struct.au_token = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"kau_write: tok == NULL\00", align 1
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au_record*, %struct.au_token*)* @kau_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kau_write(%struct.au_record* %0, %struct.au_token* %1) #0 {
  %3 = alloca %struct.au_record*, align 8
  %4 = alloca %struct.au_token*, align 8
  store %struct.au_record* %0, %struct.au_record** %3, align 8
  store %struct.au_token* %1, %struct.au_token** %4, align 8
  %5 = load %struct.au_token*, %struct.au_token** %4, align 8
  %6 = icmp ne %struct.au_token* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.au_record*, %struct.au_record** %3, align 8
  %10 = getelementptr inbounds %struct.au_record, %struct.au_record* %9, i32 0, i32 1
  %11 = load %struct.au_token*, %struct.au_token** %4, align 8
  %12 = load i32, i32* @tokens, align 4
  %13 = call i32 @TAILQ_INSERT_TAIL(i32* %10, %struct.au_token* %11, i32 %12)
  %14 = load %struct.au_token*, %struct.au_token** %4, align 8
  %15 = getelementptr inbounds %struct.au_token, %struct.au_token* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.au_record*, %struct.au_record** %3, align 8
  %18 = getelementptr inbounds %struct.au_record, %struct.au_record* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.au_token*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
