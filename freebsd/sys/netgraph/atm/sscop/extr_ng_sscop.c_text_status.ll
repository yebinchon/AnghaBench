; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_text_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_text_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, %struct.TYPE_2__, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"upper hook: %s connected to %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"upper hook: <not connected>\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lower hook: %s connected to %s:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lower hook: <not connected>\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"manage hook: %s connected to %s:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"manage hook: <not connected>\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sscop state: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"<disabled>\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"input packets:  %ju\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"input dropped:  %ju\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"output packets: %ju\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"output dropped: %ju\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"aa signals:     %ju\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"aa dropped:     %ju\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"maa signals:    %ju\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"maa dropped:    %ju\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"errors:         %ju\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"data delivered: %ju\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"window:         %u\0A\00", align 1
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
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @NG_HOOK_NAME(i64 %20)
  %22 = load %struct.priv*, %struct.priv** %6, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @NG_HOOK_PEER(i64 %24)
  %26 = call i32 @NG_HOOK_NODE(i64 %25)
  %27 = call i32 @NG_NODE_NAME(i32 %26)
  %28 = load %struct.priv*, %struct.priv** %6, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 5
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
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.priv*, %struct.priv** %6, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @NG_HOOK_NAME(i64 %44)
  %46 = load %struct.priv*, %struct.priv** %6, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @NG_HOOK_PEER(i64 %48)
  %50 = call i32 @NG_HOOK_NODE(i64 %49)
  %51 = call i32 @NG_NODE_NAME(i32 %50)
  %52 = load %struct.priv*, %struct.priv** %6, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 4
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
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.priv*, %struct.priv** %6, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @NG_HOOK_NAME(i64 %68)
  %70 = load %struct.priv*, %struct.priv** %6, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @NG_HOOK_PEER(i64 %72)
  %74 = call i32 @NG_HOOK_NODE(i64 %73)
  %75 = call i32 @NG_NODE_NAME(i32 %74)
  %76 = load %struct.priv*, %struct.priv** %6, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @NG_HOOK_PEER(i64 %78)
  %80 = call i32 @NG_HOOK_NAME(i64 %79)
  %81 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %75, i32 %80)
  br label %84

82:                                               ; preds = %60
  %83 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %65
  %85 = load %struct.priv*, %struct.priv** %6, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %96

90:                                               ; preds = %84
  %91 = load %struct.priv*, %struct.priv** %6, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sscop_getstate(i32 %93)
  %95 = call i8* @sscop_statename(i32 %94)
  br label %96

96:                                               ; preds = %90, %89
  %97 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %89 ], [ %95, %90 ]
  %98 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = load %struct.priv*, %struct.priv** %6, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = load %struct.priv*, %struct.priv** %6, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %109)
  %111 = load %struct.priv*, %struct.priv** %6, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %115)
  %117 = load %struct.priv*, %struct.priv** %6, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %121)
  %123 = load %struct.priv*, %struct.priv** %6, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %127)
  %129 = load %struct.priv*, %struct.priv** %6, align 8
  %130 = getelementptr inbounds %struct.priv, %struct.priv* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %133)
  %135 = load %struct.priv*, %struct.priv** %6, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %139)
  %141 = load %struct.priv*, %struct.priv** %6, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %145)
  %147 = load %struct.priv*, %struct.priv** %6, align 8
  %148 = getelementptr inbounds %struct.priv, %struct.priv* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %151)
  %153 = load %struct.priv*, %struct.priv** %6, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %157)
  %159 = load %struct.priv*, %struct.priv** %6, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @sscop_window(i32 %161, i32 0)
  %163 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %162)
  %164 = call i32 @sbuf_finish(%struct.sbuf* %9)
  %165 = call i32 @sbuf_len(%struct.sbuf* %9)
  ret i32 %165
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @NG_HOOK_NAME(i64) #1

declare dso_local i32 @NG_NODE_NAME(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i64 @NG_HOOK_PEER(i64) #1

declare dso_local i8* @sscop_statename(i32) #1

declare dso_local i32 @sscop_getstate(i32) #1

declare dso_local i8* @sscop_window(i32, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
