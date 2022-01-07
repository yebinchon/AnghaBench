; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon.c_filemon_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon.c_filemon_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.filemon = type { i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [61 x i8] c"# filemon version %d\0A# Target pid %d\0A# Start %ju.%06ju\0AV %d\0A\00", align 1
@FILEMON_VERSION = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filemon*)* @filemon_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filemon_write_header(%struct.filemon* %0) #0 {
  %2 = alloca %struct.filemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  store %struct.filemon* %0, %struct.filemon** %2, align 8
  %5 = call i32 @getmicrotime(%struct.timeval* %4)
  %6 = load %struct.filemon*, %struct.filemon** %2, align 8
  %7 = getelementptr inbounds %struct.filemon, %struct.filemon* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FILEMON_VERSION, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @FILEMON_VERSION, align 4
  %20 = call i32 @snprintf(i32 %8, i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.filemon*, %struct.filemon** %2, align 8
  %26 = load %struct.filemon*, %struct.filemon** %2, align 8
  %27 = getelementptr inbounds %struct.filemon, %struct.filemon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @filemon_output(%struct.filemon* %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @filemon_output(%struct.filemon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
