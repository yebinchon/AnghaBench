; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_report_tracking.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_report_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.branch_info = type { i32 }
%struct.branch = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@AHEAD_BEHIND_FULL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch_info*)* @report_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_tracking(%struct.branch_info* %0) #0 {
  %2 = alloca %struct.branch_info*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.branch*, align 8
  store %struct.branch_info* %0, %struct.branch_info** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %7 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.branch* @branch_get(i32 %8)
  store %struct.branch* %9, %struct.branch** %4, align 8
  %10 = load %struct.branch*, %struct.branch** %4, align 8
  %11 = load i32, i32* @AHEAD_BEHIND_FULL, align 4
  %12 = call i32 @format_tracking_info(%struct.branch* %10, %struct.strbuf* %3, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fputs(i32 %17, i32 %18)
  %20 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.branch* @branch_get(i32) #2

declare dso_local i32 @format_tracking_info(%struct.branch*, %struct.strbuf*, i32) #2

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
