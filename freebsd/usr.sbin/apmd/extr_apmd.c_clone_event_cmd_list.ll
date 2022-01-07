; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_clone_event_cmd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_clone_event_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_cmd = type { %struct.event_cmd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_cmd* @clone_event_cmd_list(%struct.event_cmd* %0) #0 {
  %2 = alloca %struct.event_cmd*, align 8
  %3 = alloca %struct.event_cmd, align 8
  %4 = alloca %struct.event_cmd*, align 8
  store %struct.event_cmd* %0, %struct.event_cmd** %2, align 8
  store %struct.event_cmd* %3, %struct.event_cmd** %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %7 = icmp ne %struct.event_cmd* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to %struct.event_cmd* (%struct.event_cmd*)**
  %14 = load %struct.event_cmd* (%struct.event_cmd*)*, %struct.event_cmd* (%struct.event_cmd*)** %13, align 8
  %15 = call i32 @assert(%struct.event_cmd* (%struct.event_cmd*)* %14)
  %16 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to %struct.event_cmd* (%struct.event_cmd*)**
  %21 = load %struct.event_cmd* (%struct.event_cmd*)*, %struct.event_cmd* (%struct.event_cmd*)** %20, align 8
  %22 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %23 = call %struct.event_cmd* %21(%struct.event_cmd* %22)
  %24 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %24, i32 0, i32 0
  store %struct.event_cmd* %23, %struct.event_cmd** %25, align 8
  %26 = icmp eq %struct.event_cmd* %23, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %8
  %30 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %30, i32 0, i32 0
  %32 = load %struct.event_cmd*, %struct.event_cmd** %31, align 8
  store %struct.event_cmd* %32, %struct.event_cmd** %4, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %34, i32 0, i32 0
  %36 = load %struct.event_cmd*, %struct.event_cmd** %35, align 8
  store %struct.event_cmd* %36, %struct.event_cmd** %2, align 8
  br label %5

37:                                               ; preds = %5
  %38 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %38, i32 0, i32 0
  store %struct.event_cmd* null, %struct.event_cmd** %39, align 8
  %40 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %3, i32 0, i32 0
  %41 = load %struct.event_cmd*, %struct.event_cmd** %40, align 8
  ret %struct.event_cmd* %41
}

declare dso_local i32 @assert(%struct.event_cmd* (%struct.event_cmd*)*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
