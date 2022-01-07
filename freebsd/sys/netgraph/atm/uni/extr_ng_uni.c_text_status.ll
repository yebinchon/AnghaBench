; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_text_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_text_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32*, i32* }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"lower hook: connected to %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"lower hook: <not connected>\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"upper hook: connected to %s:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"upper hook: <not connected>\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"debugging:\00", align 1
@UNI_MAXFACILITY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" %s=%u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.priv*, i8*, i64)* @text_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_status(i32 %0, %struct.priv* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sbuf, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.priv* %1, %struct.priv** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @sbuf_new(%struct.sbuf* %9, i8* %11, i64 %12, i32 0)
  %14 = load %struct.priv*, %struct.priv** %6, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.priv*, %struct.priv** %6, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @NG_HOOK_PEER(i32* %21)
  %23 = call i32 @NG_HOOK_NODE(i32 %22)
  %24 = call i32 @NG_NODE_NAME(i32 %23)
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @NG_HOOK_PEER(i32* %27)
  %29 = call i32 @NG_HOOK_NAME(i32 %28)
  %30 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  br label %33

31:                                               ; preds = %4
  %32 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %18
  %34 = load %struct.priv*, %struct.priv** %6, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.priv*, %struct.priv** %6, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @NG_HOOK_PEER(i32* %41)
  %43 = call i32 @NG_HOOK_NODE(i32 %42)
  %44 = call i32 @NG_NODE_NAME(i32 %43)
  %45 = load %struct.priv*, %struct.priv** %6, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @NG_HOOK_PEER(i32* %47)
  %49 = call i32 @NG_HOOK_NAME(i32 %48)
  %50 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %49)
  br label %53

51:                                               ; preds = %33
  %52 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %38
  %54 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %76, %53
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @UNI_MAXFACILITY, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load %struct.priv*, %struct.priv** %6, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @uni_get_debug(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @uni_facname(i64 %67)
  %69 = load %struct.priv*, %struct.priv** %6, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @uni_get_debug(i64 %71, i64 %72)
  %74 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %68, i64 %73)
  br label %75

75:                                               ; preds = %66, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %55

79:                                               ; preds = %55
  %80 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.priv*, %struct.priv** %6, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.priv*, %struct.priv** %6, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @uni_status(i64 %88, %struct.sbuf* %9)
  br label %90

90:                                               ; preds = %85, %79
  %91 = call i32 @sbuf_finish(%struct.sbuf* %9)
  %92 = call i32 @sbuf_len(%struct.sbuf* %9)
  ret i32 %92
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i64, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @NG_NODE_NAME(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NG_HOOK_PEER(i32*) #1

declare dso_local i32 @NG_HOOK_NAME(i32) #1

declare dso_local i64 @uni_get_debug(i64, i64) #1

declare dso_local i32 @uni_facname(i64) #1

declare dso_local i32 @uni_status(i64, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
