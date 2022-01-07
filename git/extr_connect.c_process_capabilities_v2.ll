; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_process_capabilities_v2.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_process_capabilities_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i64, i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@server_capabilities_v2 = common dso_local global i32 0, align 4
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"expected flush after capabilities\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_reader*)* @process_capabilities_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_capabilities_v2(%struct.packet_reader* %0) #0 {
  %2 = alloca %struct.packet_reader*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %5 = call i64 @packet_reader_read(%struct.packet_reader* %4)
  %6 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %10 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @argv_array_push(i32* @server_capabilities_v2, i32 %11)
  br label %3

13:                                               ; preds = %3
  %14 = load %struct.packet_reader*, %struct.packet_reader** %2, align 8
  %15 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @die(i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @argv_array_push(i32*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
