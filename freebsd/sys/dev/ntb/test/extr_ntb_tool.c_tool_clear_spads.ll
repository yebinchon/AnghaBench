; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_clear_spads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_clear_spads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@M_NTB_TOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*)* @tool_clear_spads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_clear_spads(%struct.tool_ctx* %0) #0 {
  %2 = alloca %struct.tool_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %2, align 8
  %4 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @M_NTB_TOOL, align 4
  %8 = call i32 @free(i32 %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @M_NTB_TOOL, align 4
  %25 = call i32 @free(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  ret void
}

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
