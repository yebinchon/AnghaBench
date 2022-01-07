; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_do_event.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_do_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*)* }
%struct.parse_event_data = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32, i64, i64, i32)*, i32 }

@CONFIG_EVENT_WHITESPACE = common dso_local global i32 0, align 4
@cf = common dso_local global %struct.TYPE_5__* null, align 8
@CONFIG_EVENT_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.parse_event_data*)* @do_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_event(i32 %0, %struct.parse_event_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_event_data*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.parse_event_data* %1, %struct.parse_event_data** %5, align 8
  %7 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %8 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %13 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64 (i32, i64, i64, i32)*, i64 (i32, i64, i64, i32)** %15, align 8
  %17 = icmp ne i64 (i32, i64, i64, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %76

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CONFIG_EVENT_WHITESPACE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %25 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %76

30:                                               ; preds = %23, %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_5__*)*, i64 (%struct.TYPE_5__*)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %35 = call i64 %33(%struct.TYPE_5__* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CONFIG_EVENT_EOF, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %44 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CONFIG_EVENT_EOF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %50 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64 (i32, i64, i64, i32)*, i64 (i32, i64, i64, i32)** %52, align 8
  %54 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %55 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %58 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %62 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 %53(i32 %56, i64 %59, i64 %60, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %76

69:                                               ; preds = %48, %42
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %72 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.parse_event_data*, %struct.parse_event_data** %5, align 8
  %75 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %68, %29, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
