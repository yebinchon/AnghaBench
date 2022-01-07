; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_prepare_merge_message.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_prepare_merge_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.fmt_merge_msg_opts = type { i32, i32, i32 }

@have_message = common dso_local global i32 0, align 4
@shortlog_len = common dso_local global i32 0, align 4
@option_edit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*)* @prepare_merge_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_merge_message(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.fmt_merge_msg_opts, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = call i32 @memset(%struct.fmt_merge_msg_opts* %5, i32 0, i32 12)
  %7 = load i32, i32* @have_message, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @shortlog_len, align 4
  %13 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i64, i64* @option_edit, align 8
  %15 = icmp slt i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = call i32 @fmt_merge_msg(%struct.strbuf* %18, %struct.strbuf* %19, %struct.fmt_merge_msg_opts* %5)
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @strbuf_setlen(%struct.strbuf* %26, i64 %30)
  br label %32

32:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @memset(%struct.fmt_merge_msg_opts*, i32, i32) #1

declare dso_local i32 @fmt_merge_msg(%struct.strbuf*, %struct.strbuf*, %struct.fmt_merge_msg_opts*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
