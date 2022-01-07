; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_free_event_cmd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_free_event_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_cmd = type { %struct.TYPE_2__*, %struct.event_cmd* }
%struct.TYPE_2__ = type { i32 (%struct.event_cmd*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_event_cmd_list(%struct.event_cmd* %0) #0 {
  %2 = alloca %struct.event_cmd*, align 8
  %3 = alloca %struct.event_cmd*, align 8
  store %struct.event_cmd* %0, %struct.event_cmd** %2, align 8
  br label %4

4:                                                ; preds = %28, %1
  %5 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %6 = icmp ne %struct.event_cmd* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %8, i32 0, i32 1
  %10 = load %struct.event_cmd*, %struct.event_cmd** %9, align 8
  store %struct.event_cmd* %10, %struct.event_cmd** %3, align 8
  %11 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.event_cmd*)*, i32 (%struct.event_cmd*)** %14, align 8
  %16 = icmp ne i32 (%struct.event_cmd*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %7
  %18 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.event_cmd*)*, i32 (%struct.event_cmd*)** %21, align 8
  %23 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %24 = call i32 %22(%struct.event_cmd* %23)
  br label %25

25:                                               ; preds = %17, %7
  %26 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %27 = call i32 @free(%struct.event_cmd* %26)
  br label %28

28:                                               ; preds = %25
  %29 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  store %struct.event_cmd* %29, %struct.event_cmd** %2, align 8
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.event_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
