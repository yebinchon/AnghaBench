; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_keep_hot_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_keep_hot_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32 }
%struct.configuration_entry = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configuration*, i8*, i32)* @set_keep_hot_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_keep_hot_count(%struct.configuration* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.configuration*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.configuration_entry*, align 8
  store %struct.configuration* %0, %struct.configuration** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @TRACE_IN(void (%struct.configuration*, i8*, i32)* @set_keep_hot_count)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.configuration*, %struct.configuration** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.configuration_entry* @find_create_entry(%struct.configuration* %17, i8* %18)
  store %struct.configuration_entry* %19, %struct.configuration_entry** %7, align 8
  %20 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %21 = icmp ne %struct.configuration_entry* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %26 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.configuration*, %struct.configuration** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct.configuration_entry* @find_create_entry(%struct.configuration* %28, i8* %29)
  store %struct.configuration_entry* %30, %struct.configuration_entry** %7, align 8
  %31 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %32 = icmp ne %struct.configuration_entry* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %37 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = call i32 @TRACE_OUT(void (%struct.configuration*, i8*, i32)* @set_keep_hot_count)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration*, i8*, i32)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.configuration_entry* @find_create_entry(%struct.configuration*, i8*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration*, i8*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
