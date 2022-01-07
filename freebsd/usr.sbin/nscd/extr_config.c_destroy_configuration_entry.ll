; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_destroy_configuration_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_destroy_configuration_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { %struct.configuration_entry*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.configuration_entry*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.configuration_entry* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.configuration_entry* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.configuration_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_configuration_entry(%struct.configuration_entry* %0) #0 {
  %2 = alloca %struct.configuration_entry*, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.configuration_entry*)* @destroy_configuration_entry)
  %4 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %5 = icmp ne %struct.configuration_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %9 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %8, i32 0, i32 7
  %10 = call i32 @pthread_mutex_destroy(i32* %9)
  %11 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %12 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %11, i32 0, i32 6
  %13 = call i32 @pthread_mutex_destroy(i32* %12)
  %14 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %15 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %14, i32 0, i32 5
  %16 = call i32 @pthread_mutex_destroy(i32* %15)
  %17 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %18 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %17, i32 0, i32 4
  %19 = load %struct.configuration_entry*, %struct.configuration_entry** %18, align 8
  %20 = call i32 @free(%struct.configuration_entry* %19)
  %21 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %22 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.configuration_entry*, %struct.configuration_entry** %24, align 8
  %26 = call i32 @free(%struct.configuration_entry* %25)
  %27 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %28 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.configuration_entry*, %struct.configuration_entry** %30, align 8
  %32 = call i32 @free(%struct.configuration_entry* %31)
  %33 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %34 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.configuration_entry*, %struct.configuration_entry** %36, align 8
  %38 = call i32 @free(%struct.configuration_entry* %37)
  %39 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %40 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %39, i32 0, i32 0
  %41 = load %struct.configuration_entry*, %struct.configuration_entry** %40, align 8
  %42 = call i32 @free(%struct.configuration_entry* %41)
  %43 = load %struct.configuration_entry*, %struct.configuration_entry** %2, align 8
  %44 = call i32 @free(%struct.configuration_entry* %43)
  %45 = call i32 @TRACE_OUT(void (%struct.configuration_entry*)* @destroy_configuration_entry)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration_entry*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.configuration_entry*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration_entry*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
