; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_peers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_init_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.tool_ctx* }

@M_NTB_TOOL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*)* @tool_init_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_init_peers(%struct.tool_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  %5 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ntb_peer_port_count(i32 %7)
  %9 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_NTB_TOOL, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_2__* @malloc(i32 %16, i32 %17, i32 %20)
  %22 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %22, i32 0, i32 1
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp eq %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 8
  %46 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %47 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.tool_ctx* %46, %struct.tool_ctx** %53, align 8
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %31

57:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ntb_peer_port_count(i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
