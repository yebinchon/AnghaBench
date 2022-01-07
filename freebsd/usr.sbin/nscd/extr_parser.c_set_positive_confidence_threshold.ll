; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_positive_confidence_threshold.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_parser.c_set_positive_confidence_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32 }
%struct.configuration_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@set_positive_conf_thresh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configuration*, i8*, i32)* @set_positive_confidence_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_positive_confidence_threshold(%struct.configuration* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.configuration*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.configuration_entry*, align 8
  store %struct.configuration* %0, %struct.configuration** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @set_positive_conf_thresh, align 4
  %9 = call i32 @TRACE_IN(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.configuration*, %struct.configuration** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.configuration_entry* @find_create_entry(%struct.configuration* %18, i8* %19)
  store %struct.configuration_entry* %20, %struct.configuration_entry** %7, align 8
  %21 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %22 = icmp ne %struct.configuration_entry* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.configuration_entry*, %struct.configuration_entry** %7, align 8
  %27 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @set_positive_conf_thresh, align 4
  %30 = call i32 @TRACE_OUT(i32 %29)
  ret void
}

declare dso_local i32 @TRACE_IN(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.configuration_entry* @find_create_entry(%struct.configuration*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
