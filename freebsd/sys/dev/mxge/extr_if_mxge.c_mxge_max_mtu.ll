; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_max_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_max_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MJUMPAGESIZE = common dso_local global i64 0, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@MXGEFW_MAX_MTU = common dso_local global i64 0, align 8
@MXGEFW_CMD_ALWAYS_USE_N_BIG_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mxge_max_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_max_mtu(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @MJUMPAGESIZE, align 8
  %7 = load i64, i64* @MXGEFW_PAD, align 8
  %8 = sub nsw i64 %6, %7
  %9 = load i64, i64* @MXGEFW_MAX_MTU, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @MXGEFW_MAX_MTU, align 8
  %13 = load i64, i64* @MXGEFW_PAD, align 8
  %14 = sub nsw i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @MXGEFW_CMD_ALWAYS_USE_N_BIG_BUFFERS, align 4
  %20 = call i32 @mxge_send_cmd(i32* %18, i32 %19, %struct.TYPE_3__* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i64, i64* @MXGEFW_MAX_MTU, align 8
  %25 = load i64, i64* @MXGEFW_PAD, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %16
  %29 = load i64, i64* @MJUMPAGESIZE, align 8
  %30 = load i64, i64* @MXGEFW_PAD, align 8
  %31 = sub nsw i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %23, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @mxge_send_cmd(i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
