; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32, %struct.bwn_mac*, i32 }
%struct.bwn_mac = type { %struct.bwn_stats }
%struct.bwn_stats = type { i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"linknoise\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Noise level\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RTS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rtsfail\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"RTS failed to send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_softc*)* @bwn_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_sysctl_node(%struct.bwn_softc* %0) #0 {
  %2 = alloca %struct.bwn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_stats*, align 8
  store %struct.bwn_softc* %0, %struct.bwn_softc** %2, align 8
  %6 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %9, i32 0, i32 1
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %10, align 8
  store %struct.bwn_mac* %11, %struct.bwn_mac** %4, align 8
  %12 = icmp eq %struct.bwn_mac* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  store %struct.bwn_stats* %16, %struct.bwn_stats** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_sysctl_ctx(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_sysctl_tree(i32 %19)
  %21 = call i32 @SYSCTL_CHILDREN(i32 %20)
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLFLAG_RW, align 4
  %24 = load %struct.bwn_stats*, %struct.bwn_stats** %5, align 8
  %25 = getelementptr inbounds %struct.bwn_stats, %struct.bwn_stats* %24, i32 0, i32 1
  %26 = call i32 @SYSCTL_ADD_INT(i32 %18, i32 %21, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i32* %25, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_sysctl_ctx(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_get_sysctl_tree(i32 %29)
  %31 = call i32 @SYSCTL_CHILDREN(i32 %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RW, align 4
  %34 = load %struct.bwn_stats*, %struct.bwn_stats** %5, align 8
  %35 = getelementptr inbounds %struct.bwn_stats, %struct.bwn_stats* %34, i32 0, i32 1
  %36 = call i32 @SYSCTL_ADD_INT(i32 %28, i32 %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32* %35, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_get_sysctl_ctx(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_sysctl_tree(i32 %39)
  %41 = call i32 @SYSCTL_CHILDREN(i32 %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RW, align 4
  %44 = load %struct.bwn_stats*, %struct.bwn_stats** %5, align 8
  %45 = getelementptr inbounds %struct.bwn_stats, %struct.bwn_stats* %44, i32 0, i32 0
  %46 = call i32 @SYSCTL_ADD_INT(i32 %38, i32 %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32* %45, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
