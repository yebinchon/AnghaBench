; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_text_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_text_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32, i64, i64 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"upper hook: %s connected to %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"upper hook: <not connected>\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lower hook: %s connected to %s:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lower hook: <not connected>\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sscf state: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"<disabled>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.priv*, i8*, i32)* @text_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_status(i32 %0, %struct.priv* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbuf, align 4
  store i32 %0, i32* %5, align 4
  store %struct.priv* %1, %struct.priv** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @sbuf_new(%struct.sbuf* %9, i8* %10, i32 %11, i32 0)
  %13 = load %struct.priv*, %struct.priv** %6, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @NG_HOOK_NAME(i64 %20)
  %22 = load %struct.priv*, %struct.priv** %6, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @NG_HOOK_PEER(i64 %24)
  %26 = call i32 @NG_HOOK_NODE(i64 %25)
  %27 = call i32 @NG_NODE_NAME(i32 %26)
  %28 = load %struct.priv*, %struct.priv** %6, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @NG_HOOK_PEER(i64 %30)
  %32 = call i32 @NG_HOOK_NAME(i64 %31)
  %33 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %27, i32 %32)
  br label %36

34:                                               ; preds = %4
  %35 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %17
  %37 = load %struct.priv*, %struct.priv** %6, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.priv*, %struct.priv** %6, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @NG_HOOK_NAME(i64 %44)
  %46 = load %struct.priv*, %struct.priv** %6, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @NG_HOOK_PEER(i64 %48)
  %50 = call i32 @NG_HOOK_NODE(i64 %49)
  %51 = call i32 @NG_NODE_NAME(i32 %50)
  %52 = load %struct.priv*, %struct.priv** %6, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @NG_HOOK_PEER(i64 %54)
  %56 = call i32 @NG_HOOK_NAME(i64 %55)
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %51, i32 %56)
  br label %60

58:                                               ; preds = %36
  %59 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %41
  %61 = load %struct.priv*, %struct.priv** %6, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %72

66:                                               ; preds = %60
  %67 = load %struct.priv*, %struct.priv** %6, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sscfu_getstate(i32 %69)
  %71 = call i8* @sscfu_statename(i32 %70)
  br label %72

72:                                               ; preds = %66, %65
  %73 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %65 ], [ %71, %66 ]
  %74 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = call i32 @sbuf_finish(%struct.sbuf* %9)
  %76 = call i32 @sbuf_len(%struct.sbuf* %9)
  ret i32 %76
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @NG_HOOK_NAME(i64) #1

declare dso_local i32 @NG_NODE_NAME(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i64 @NG_HOOK_PEER(i64) #1

declare dso_local i8* @sscfu_statename(i32) #1

declare dso_local i32 @sscfu_getstate(i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
