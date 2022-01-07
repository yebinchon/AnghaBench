; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_link_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_link_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"link_event successful for link val=0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tool_link_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_link_event_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tool_ctx*
  store %struct.tool_ctx* %6, %struct.tool_ctx** %3, align 8
  %7 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntb_link_is_up(i32 %9, i32* null, i32* null)
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %33, i32 0, i32 2
  %35 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %36 = call i32 @callout_reset(i32* %34, i32 1, void (i8*)* @tool_link_event_handler, %struct.tool_ctx* %35)
  br label %37

37:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @ntb_link_is_up(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tool_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
