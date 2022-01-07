; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_port_logout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_port_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@MBOX_FABRIC_LOGOUT = common dso_local global i32 0, align 4
@MBLOGNONE = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @isp_port_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_port_logout(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MBOX_FABRIC_LOGOUT, align 4
  %9 = load i32, i32* @MBLOGNONE, align 4
  %10 = call i32 @MBSINIT(%struct.TYPE_4__* %7, i32 %8, i32 %9, i32 500000)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ISP_CAP_2KLOGIN(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %15, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 1024, i32* %19, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @isp_mboxcmd(i32* %27, %struct.TYPE_4__* %7)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %36, %35
  %42 = phi i32 [ 0, %35 ], [ %40, %36 ]
  ret i32 %42
}

declare dso_local i32 @MBSINIT(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @ISP_CAP_2KLOGIN(i32*) #1

declare dso_local i32 @isp_mboxcmd(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
