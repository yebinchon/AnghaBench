; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_init_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_init_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32, i32, i32* }

@INITIAL_ENTRIES_CAPACITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.configuration* @init_configuration() #0 {
  %1 = alloca %struct.configuration*, align 8
  %2 = call i32 @TRACE_IN(%struct.configuration* (...)* bitcast (%struct.configuration* ()* @init_configuration to %struct.configuration* (...)*))
  %3 = call i8* @calloc(i32 1, i32 16)
  %4 = bitcast i8* %3 to %struct.configuration*
  store %struct.configuration* %4, %struct.configuration** %1, align 8
  %5 = load %struct.configuration*, %struct.configuration** %1, align 8
  %6 = icmp ne %struct.configuration* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @INITIAL_ENTRIES_CAPACITY, align 4
  %10 = load %struct.configuration*, %struct.configuration** %1, align 8
  %11 = getelementptr inbounds %struct.configuration, %struct.configuration* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.configuration*, %struct.configuration** %1, align 8
  %13 = getelementptr inbounds %struct.configuration, %struct.configuration* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @calloc(i32 %14, i32 4)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.configuration*, %struct.configuration** %1, align 8
  %18 = getelementptr inbounds %struct.configuration, %struct.configuration* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.configuration*, %struct.configuration** %1, align 8
  %20 = getelementptr inbounds %struct.configuration, %struct.configuration* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.configuration*, %struct.configuration** %1, align 8
  %26 = getelementptr inbounds %struct.configuration, %struct.configuration* %25, i32 0, i32 1
  %27 = call i32 @pthread_rwlock_init(i32* %26, i32* null)
  %28 = call i32 @TRACE_OUT(%struct.configuration* (...)* bitcast (%struct.configuration* ()* @init_configuration to %struct.configuration* (...)*))
  %29 = load %struct.configuration*, %struct.configuration** %1, align 8
  ret %struct.configuration* %29
}

declare dso_local i32 @TRACE_IN(%struct.configuration* (...)*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_rwlock_init(i32*, i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.configuration* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
