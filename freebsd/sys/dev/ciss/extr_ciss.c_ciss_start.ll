; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"post command %d tag %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_request*)* @ciss_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_start(%struct.ciss_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_command*, align 8
  %5 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %3, align 8
  %6 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %7 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %6, i32 0, i32 1
  %8 = load %struct.ciss_command*, %struct.ciss_command** %7, align 8
  store %struct.ciss_command* %8, %struct.ciss_command** %4, align 8
  %9 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %10 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %13 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %18 = call i32 @ciss_map_request(%struct.ciss_request* %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @ciss_map_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
