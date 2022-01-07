; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_find_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32 }
%struct.configuration = type { i32, i32 }

@configuration_entry_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.configuration_entry* @configuration_find_entry(%struct.configuration* %0, i8* %1) #0 {
  %3 = alloca %struct.configuration*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.configuration_entry**, align 8
  store %struct.configuration* %0, %struct.configuration** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @TRACE_IN(%struct.configuration_entry* (%struct.configuration*, i8*)* @configuration_find_entry)
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.configuration*, %struct.configuration** %3, align 8
  %9 = getelementptr inbounds %struct.configuration, %struct.configuration* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.configuration*, %struct.configuration** %3, align 8
  %12 = getelementptr inbounds %struct.configuration, %struct.configuration* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @configuration_entry_cmp, align 4
  %15 = call %struct.configuration_entry** @bsearch(i8* %7, i32 %10, i32 %13, i32 8, i32 %14)
  store %struct.configuration_entry** %15, %struct.configuration_entry*** %5, align 8
  %16 = call i32 @TRACE_OUT(%struct.configuration_entry* (%struct.configuration*, i8*)* @configuration_find_entry)
  %17 = load %struct.configuration_entry**, %struct.configuration_entry*** %5, align 8
  %18 = icmp ne %struct.configuration_entry** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.configuration_entry**, %struct.configuration_entry*** %5, align 8
  %21 = load %struct.configuration_entry*, %struct.configuration_entry** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.configuration_entry* [ %21, %19 ], [ null, %22 ]
  ret %struct.configuration_entry* %24
}

declare dso_local i32 @TRACE_IN(%struct.configuration_entry* (%struct.configuration*, i8*)*) #1

declare dso_local %struct.configuration_entry** @bsearch(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @TRACE_OUT(%struct.configuration_entry* (%struct.configuration*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
