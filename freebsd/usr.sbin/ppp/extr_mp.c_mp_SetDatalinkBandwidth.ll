; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_SetDatalinkBandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_SetDatalinkBandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"The link bandwidth must be greater than zero\0A\00", align 1
@DATALINK_OPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_SetDatalinkBandwidth(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @atoi(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @LogWARN, align 4
  %29 = call i32 @log_Printf(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %50

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 8
  %37 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DATALINK_OPEN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bundle_CalculateBandwidth(i32 %47)
  br label %49

49:                                               ; preds = %44, %30
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %27, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @bundle_CalculateBandwidth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
