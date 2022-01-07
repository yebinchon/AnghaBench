; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_discover_version.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_discover_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @discover_version(%struct.packet_reader* %0) #0 {
  %2 = alloca %struct.packet_reader*, align 8
  %3 = alloca i32, align 4
  store %struct.packet_reader* %0, %struct.packet_reader** %2, align 8
  store i32 131, i32* %3, align 4
  %4 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %5 = call i32 @packet_reader_peek(%struct.packet_reader* %4)
  switch i32 %5, label %14 [
    i32 134, label %6
    i32 133, label %8
    i32 135, label %8
    i32 132, label %9
  ]

6:                                                ; preds = %1
  %7 = call i32 @die_initial_contact(i32 0)
  br label %8

8:                                                ; preds = %1, %1, %6
  store i32 130, i32* %3, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %11 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @determine_protocol_version_client(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %1, %9, %8
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %25 [
    i32 128, label %16
    i32 129, label %19
    i32 130, label %22
    i32 131, label %23
  ]

16:                                               ; preds = %14
  %17 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %18 = call i32 @process_capabilities_v2(%struct.packet_reader* %17)
  br label %25

19:                                               ; preds = %14
  %20 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %21 = call i32 @packet_reader_read(%struct.packet_reader* %20)
  br label %25

22:                                               ; preds = %14
  br label %25

23:                                               ; preds = %14
  %24 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14, %22, %19, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @packet_reader_peek(%struct.packet_reader*) #1

declare dso_local i32 @die_initial_contact(i32) #1

declare dso_local i32 @determine_protocol_version_client(i32) #1

declare dso_local i32 @process_capabilities_v2(%struct.packet_reader*) #1

declare dso_local i32 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
