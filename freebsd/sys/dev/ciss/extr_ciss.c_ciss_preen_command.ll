; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_preen_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_preen_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, i64, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@CISS_COMMAND_ALLOC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_request*)* @ciss_preen_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_preen_command(%struct.ciss_request* %0) #0 {
  %2 = alloca %struct.ciss_request*, align 8
  %3 = alloca %struct.ciss_command*, align 8
  %4 = alloca i64, align 8
  store %struct.ciss_request* %0, %struct.ciss_request** %2, align 8
  %5 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %6 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %5, i32 0, i32 2
  %7 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  store %struct.ciss_command* %7, %struct.ciss_command** %3, align 8
  %8 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %9 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %12 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %15 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 2
  %18 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %19 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %22 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %25 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i64, i64* @CISS_COMMAND_ALLOC_SIZE, align 8
  %29 = sub i64 %28, 56
  %30 = call i32 @bzero(i32* %27, i64 %29)
  %31 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %32 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 56
  %36 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %37 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* @CISS_COMMAND_ALLOC_SIZE, align 8
  %40 = sub i64 %39, 56
  %41 = load %struct.ciss_command*, %struct.ciss_command** %3, align 8
  %42 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  ret void
}

declare dso_local i32 @bzero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
