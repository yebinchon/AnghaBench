; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_cmd_exec_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_cmd_exec_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_cmd = type { i32 }
%struct.event_cmd_exec = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_cmd* @event_cmd_exec_clone(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event_cmd_exec*, align 8
  %4 = alloca %struct.event_cmd_exec*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @event_cmd_default_clone(i8* %5)
  %7 = inttoptr i64 %6 to %struct.event_cmd_exec*
  store %struct.event_cmd_exec* %7, %struct.event_cmd_exec** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.event_cmd_exec*
  store %struct.event_cmd_exec* %9, %struct.event_cmd_exec** %4, align 8
  %10 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %11 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %4, align 8
  %14 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %18 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %4, align 8
  %21 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %25 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %4, align 8
  %28 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %32 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %4, align 8
  %35 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32* @strdup(i32* %36)
  %38 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %39 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = icmp eq i32* %37, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %1
  %44 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %45 = bitcast %struct.event_cmd_exec* %44 to %struct.event_cmd*
  ret %struct.event_cmd* %45
}

declare dso_local i64 @event_cmd_default_clone(i8*) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
