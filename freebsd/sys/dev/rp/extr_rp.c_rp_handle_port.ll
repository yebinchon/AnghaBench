; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_handle_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_handle_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_port = type { i32, %struct.tty*, i32 }
%struct.tty = type { i32 }

@RXF_TRIG = common dso_local global i32 0, align 4
@DELTA_CD = common dso_local global i32 0, align 4
@CD_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp_port*)* @rp_handle_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_handle_port(%struct.rp_port* %0) #0 {
  %2 = alloca %struct.rp_port*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rp_port* %0, %struct.rp_port** %2, align 8
  %7 = load %struct.rp_port*, %struct.rp_port** %2, align 8
  %8 = icmp ne %struct.rp_port* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.rp_port*, %struct.rp_port** %2, align 8
  %12 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %11, i32 0, i32 2
  store i32* %12, i32** %3, align 8
  %13 = load %struct.rp_port*, %struct.rp_port** %2, align 8
  %14 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %13, i32 0, i32 1
  %15 = load %struct.tty*, %struct.tty** %14, align 8
  store %struct.tty* %15, %struct.tty** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @sGetChanIntID(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rp_port*, %struct.rp_port** %2, align 8
  %20 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @sGetChanStatus(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RXF_TRIG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %10
  %30 = load %struct.rp_port*, %struct.rp_port** %2, align 8
  %31 = load %struct.tty*, %struct.tty** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rp_do_receive(%struct.rp_port* %30, %struct.tty* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %10
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DELTA_CD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CD_ACT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.tty*, %struct.tty** %4, align 8
  %47 = call i32 @ttydisc_modem(%struct.tty* %46, i32 1)
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.tty*, %struct.tty** %4, align 8
  %50 = call i32 @ttydisc_modem(%struct.tty* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %9, %51, %35
  ret void
}

declare dso_local i32 @sGetChanIntID(i32*) #1

declare dso_local i32 @sGetChanStatus(i32*) #1

declare dso_local i32 @rp_do_receive(%struct.rp_port*, %struct.tty*, i32*, i32) #1

declare dso_local i32 @ttydisc_modem(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
