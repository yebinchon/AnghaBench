; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_passthru_err_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_passthru_err_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tws_command_header = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_request*, %struct.tws_command_header*)* @tws_passthru_err_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_passthru_err_complete(%struct.tws_request* %0, %struct.tws_command_header* %1) #0 {
  %3 = alloca %struct.tws_request*, align 8
  %4 = alloca %struct.tws_command_header*, align 8
  store %struct.tws_request* %0, %struct.tws_request** %3, align 8
  store %struct.tws_command_header* %1, %struct.tws_command_header** %4, align 8
  %5 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %6 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %9 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %10 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TWS_TRACE_DEBUG(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tws_command_header* %8, i32 %11)
  %13 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %14 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %18 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %20 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %24 = call i32 @memcpy(i32* %22, %struct.tws_command_header* %23, i32 4)
  %25 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %26 = call i32 @tws_passthru_complete(%struct.tws_request* %25)
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(i32, i8*, %struct.tws_command_header*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.tws_command_header*, i32) #1

declare dso_local i32 @tws_passthru_complete(%struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
