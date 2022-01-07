; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_negative_time_to_live.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_negative_time_to_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32 }
%struct.configuration_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configuration*, i8*, i32)* @set_negative_time_to_live to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_negative_time_to_live(%struct.configuration* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.configuration*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.configuration_entry*, align 8
  %8 = alloca %struct.timeval, align 4
  store %struct.configuration* %0, %struct.configuration** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @TRACE_IN(void (%struct.configuration*, i8*, i32)* @set_negative_time_to_live)
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 @memset(%struct.timeval* %8, i32 0, i32 4)
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.configuration*, %struct.configuration** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.configuration_entry* @find_create_entry(%struct.configuration* %21, i8* %22)
  store %struct.configuration_entry* %23, %struct.configuration_entry** %7, align 8
  %24 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %25 = icmp ne %struct.configuration_entry* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %29 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @memcpy(i32* %30, %struct.timeval* %8, i32 4)
  %32 = call i32 @TRACE_OUT(void (%struct.configuration*, i8*, i32)* @set_negative_time_to_live)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration*, i8*, i32)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local %struct.configuration_entry* @find_create_entry(%struct.configuration*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration*, i8*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
