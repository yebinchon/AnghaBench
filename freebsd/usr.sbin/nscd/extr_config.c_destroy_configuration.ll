; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_destroy_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_destroy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32, i32, %struct.configuration*, %struct.configuration*, %struct.configuration* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_configuration(%struct.configuration* %0) #0 {
  %2 = alloca %struct.configuration*, align 8
  %3 = alloca i32, align 4
  store %struct.configuration* %0, %struct.configuration** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.configuration*)* @destroy_configuration)
  %5 = load %struct.configuration*, %struct.configuration** %2, align 8
  %6 = icmp ne %struct.configuration* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.configuration*, %struct.configuration** %2, align 8
  %10 = getelementptr inbounds %struct.configuration, %struct.configuration* %9, i32 0, i32 4
  %11 = load %struct.configuration*, %struct.configuration** %10, align 8
  %12 = call i32 @free(%struct.configuration* %11)
  %13 = load %struct.configuration*, %struct.configuration** %2, align 8
  %14 = getelementptr inbounds %struct.configuration, %struct.configuration* %13, i32 0, i32 3
  %15 = load %struct.configuration*, %struct.configuration** %14, align 8
  %16 = call i32 @free(%struct.configuration* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.configuration*, %struct.configuration** %2, align 8
  %20 = getelementptr inbounds %struct.configuration, %struct.configuration* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.configuration*, %struct.configuration** %2, align 8
  %25 = getelementptr inbounds %struct.configuration, %struct.configuration* %24, i32 0, i32 2
  %26 = load %struct.configuration*, %struct.configuration** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.configuration, %struct.configuration* %26, i64 %28
  %30 = call i32 @destroy_configuration_entry(%struct.configuration* byval(%struct.configuration) align 8 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.configuration*, %struct.configuration** %2, align 8
  %36 = getelementptr inbounds %struct.configuration, %struct.configuration* %35, i32 0, i32 2
  %37 = load %struct.configuration*, %struct.configuration** %36, align 8
  %38 = call i32 @free(%struct.configuration* %37)
  %39 = load %struct.configuration*, %struct.configuration** %2, align 8
  %40 = getelementptr inbounds %struct.configuration, %struct.configuration* %39, i32 0, i32 1
  %41 = call i32 @pthread_rwlock_destroy(i32* %40)
  %42 = load %struct.configuration*, %struct.configuration** %2, align 8
  %43 = call i32 @free(%struct.configuration* %42)
  %44 = call i32 @TRACE_OUT(void (%struct.configuration*)* @destroy_configuration)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.configuration*) #1

declare dso_local i32 @destroy_configuration_entry(%struct.configuration* byval(%struct.configuration) align 8) #1

declare dso_local i32 @pthread_rwlock_destroy(i32*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
