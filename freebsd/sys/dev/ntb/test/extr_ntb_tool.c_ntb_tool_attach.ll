; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_ntb_tool_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_ntb_tool_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"ntb_tool attached failed with err=(%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_tool_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_tool_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tool_ctx*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tool_ctx* @device_get_softc(i32 %6)
  store %struct.tool_ctx* %7, %struct.tool_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %12 = call i32 @tool_check_ntb(%struct.tool_ctx* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %18 = call i32 @tool_init_peers(%struct.tool_ctx* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %51

22:                                               ; preds = %16
  %23 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %24 = call i32 @tool_init_mws(%struct.tool_ctx* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %51

28:                                               ; preds = %22
  %29 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %30 = call i32 @tool_init_spads(%struct.tool_ctx* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %46

34:                                               ; preds = %28
  %35 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %36 = call i32 @tool_init_ntb(%struct.tool_ctx* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %43

40:                                               ; preds = %34
  %41 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %42 = call i32 @tool_setup_sysctl(%struct.tool_ctx* %41)
  store i32 0, i32* %2, align 4
  br label %59

43:                                               ; preds = %39
  %44 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %45 = call i32 @tool_clear_spads(%struct.tool_ctx* %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %48 = call i32 @tool_clear_mws(%struct.tool_ctx* %47)
  %49 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %50 = call i32 @tool_clear_peers(%struct.tool_ctx* %49)
  br label %51

51:                                               ; preds = %46, %27, %21
  %52 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %53 = call i32 @tool_clear_data(%struct.tool_ctx* %52)
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %40
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.tool_ctx* @device_get_softc(i32) #1

declare dso_local i32 @tool_check_ntb(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_peers(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_mws(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_spads(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_ntb(%struct.tool_ctx*) #1

declare dso_local i32 @tool_setup_sysctl(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_spads(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_mws(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_peers(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_data(%struct.tool_ctx*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
