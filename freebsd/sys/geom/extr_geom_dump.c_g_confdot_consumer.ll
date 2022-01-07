; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_confdot_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_confdot_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_consumer = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"z%p [label=\22r%dw%de%d\22];\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"z%p -> z%p;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.g_consumer*)* @g_confdot_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_confdot_consumer(%struct.sbuf* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %7 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %15 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct.sbuf*, i8*, %struct.g_consumer*, i64, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %6, i64 %10, i32 %13, i32 %16)
  %18 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %19 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %24 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %25 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.sbuf*, i8*, %struct.g_consumer*, i64, ...) @sbuf_printf(%struct.sbuf* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.g_consumer* %24, i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, %struct.g_consumer*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
