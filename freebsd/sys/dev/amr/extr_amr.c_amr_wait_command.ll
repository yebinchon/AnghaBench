; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_wait_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_wait_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i32, i32*, %struct.amr_softc* }
%struct.amr_softc = type { i32 }

@AMR_CMD_SLEEP = common dso_local global i32 0, align 4
@AMR_CMD_BUSY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"amrwcmd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_wait_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_wait_command(%struct.amr_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amr_softc*, align 8
  store %struct.amr_command* %0, %struct.amr_command** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %7 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %6, i32 0, i32 2
  %8 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  store %struct.amr_softc* %8, %struct.amr_softc** %5, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %11 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @AMR_CMD_SLEEP, align 4
  %13 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %14 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %18 = call i32 @amr_start(%struct.amr_command* %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %36, %22
  %24 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %25 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AMR_CMD_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EWOULDBLOCK, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %38 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %39 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %38, i32 0, i32 0
  %40 = load i32, i32* @PRIBIO, align 4
  %41 = call i32 @msleep(%struct.amr_command* %37, i32* %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %41, i32* %4, align 4
  br label %23

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @amr_start(%struct.amr_command*) #1

declare dso_local i32 @msleep(%struct.amr_command*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
