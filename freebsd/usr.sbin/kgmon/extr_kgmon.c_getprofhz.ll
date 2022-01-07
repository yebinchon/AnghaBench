; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_getprofhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_getprofhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kvmvars = type { i32 }
%struct.clockinfo = type { i32 }

@kflag = common dso_local global i64 0, align 8
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@N_PROFHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"get clockrate: %s\00", align 1
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_CLOCKRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"get clockrate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getprofhz(%struct.kvmvars* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvmvars*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clockinfo, align 4
  store %struct.kvmvars* %0, %struct.kvmvars** %3, align 8
  %8 = load i64, i64* @kflag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %11 = load %struct.kvmvars*, %struct.kvmvars** %3, align 8
  %12 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %15 = load i64, i64* @N_PROFHZ, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvm_read(i32 %13, i32 %18, i32* %6, i32 4)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load %struct.kvmvars*, %struct.kvmvars** %3, align 8
  %24 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kvm_geterr(i32 %25)
  %27 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %1
  %31 = load i32, i32* @CTL_KERN, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @KERN_CLOCKRATE, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %7, i32 0, i32 0
  store i32 1, i32* %35, align 4
  store i64 4, i64* %4, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %37 = call i64 @sysctl(i32* %36, i32 2, %struct.clockinfo* %7, i64* %4, i32* null, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %30
  %42 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @kvm_read(i32, i32, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @kvm_geterr(i32) #1

declare dso_local i64 @sysctl(i32*, i32, %struct.clockinfo*, i64*, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
