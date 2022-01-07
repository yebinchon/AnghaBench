; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ip.c_resetip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ip.c_resetip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPCTL_STATS = common dso_local global i32 0, align 4
@initstat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"sysctl getting ipstat failed\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@UDPCTL_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"sysctl getting udpstat failed\00", align 1
@oldstat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resetip() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [4 x i32], align 16
  %3 = load i32, i32* @CTL_NET, align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 %3, i32* %4, align 16
  %5 = load i32, i32* @PF_INET, align 4
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @IPPROTO_IP, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @IPCTL_STATS, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 %9, i32* %10, align 4
  store i64 4, i64* %1, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %12 = call i64 @sysctl(i32* %11, i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @initstat, i32 0, i32 1), i64* %1, i32 0, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @IPPROTO_UDP, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @UDPCTL_STATS, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 %19, i32* %20, align 4
  store i64 4, i64* %1, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %22 = call i64 @sysctl(i32* %21, i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @initstat, i32 0, i32 0), i64* %1, i32 0, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_3__* @oldstat to i8*), i8* align 4 bitcast (%struct.TYPE_3__* @initstat to i8*), i64 8, i1 false)
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
