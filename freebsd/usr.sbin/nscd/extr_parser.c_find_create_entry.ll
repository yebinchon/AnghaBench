; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_find_create_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_find_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32 }
%struct.configuration = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.configuration_entry* (%struct.configuration*, i8*)* @find_create_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.configuration_entry* @find_create_entry(%struct.configuration* %0, i8* %1) #0 {
  %3 = alloca %struct.configuration*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.configuration_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.configuration* %0, %struct.configuration** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.configuration_entry* null, %struct.configuration_entry** %5, align 8
  %7 = call i32 @TRACE_IN(%struct.configuration_entry* (%struct.configuration*, i8*)* @find_create_entry)
  %8 = load %struct.configuration*, %struct.configuration** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.configuration_entry* @configuration_find_entry(%struct.configuration* %8, i8* %9)
  store %struct.configuration_entry* %10, %struct.configuration_entry** %5, align 8
  %11 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %12 = icmp eq %struct.configuration_entry* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.configuration_entry* @create_def_configuration_entry(i8* %14)
  store %struct.configuration_entry* %15, %struct.configuration_entry** %5, align 8
  %16 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %17 = icmp ne %struct.configuration_entry* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.configuration*, %struct.configuration** %3, align 8
  %21 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %22 = call i32 @add_configuration_entry(%struct.configuration* %20, %struct.configuration_entry* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %13, %2
  %28 = call i32 @TRACE_OUT(%struct.configuration_entry* (%struct.configuration*, i8*)* @find_create_entry)
  %29 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  ret %struct.configuration_entry* %29
}

declare dso_local i32 @TRACE_IN(%struct.configuration_entry* (%struct.configuration*, i8*)*) #1

declare dso_local %struct.configuration_entry* @configuration_find_entry(%struct.configuration*, i8*) #1

declare dso_local %struct.configuration_entry* @create_def_configuration_entry(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_configuration_entry(%struct.configuration*, %struct.configuration_entry*) #1

declare dso_local i32 @TRACE_OUT(%struct.configuration_entry* (%struct.configuration*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
