; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_setprof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_setprof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kvmvars = type { i32 }
%struct.gmonparam = type { i32 }

@nl = common dso_local global %struct.TYPE_2__* null, align 8
@N_GMONPARAM = common dso_local global i64 0, align 8
@kflag = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROF = common dso_local global i32 0, align 4
@GPROF_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"warning: cannot turn profiling %s\00", align 1
@GMON_PROF_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setprof(%struct.kvmvars* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmvars*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmonparam*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.kvmvars* %0, %struct.kvmvars** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %10 = load i64, i64* @N_GMONPARAM, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.gmonparam*
  store %struct.gmonparam* %14, %struct.gmonparam** %5, align 8
  store i64 4, i64* %6, align 8
  %15 = load i32, i32* @kflag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @CTL_KERN, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @KERN_PROF, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @GPROF_STATE, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %25 = call i64 @sysctl(i32* %24, i32 3, i32* %8, i64* %6, i32* null, i64 0)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %60

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %67

33:                                               ; preds = %28
  %34 = call i32 @seteuid(i32 0)
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @sysctl(i32* %35, i32 3, i32* null, i64* null, i32* %4, i64 %36)
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 (...) @getuid()
  %41 = call i32 @seteuid(i32 %40)
  br label %67

42:                                               ; preds = %33
  %43 = call i32 (...) @getuid()
  %44 = call i32 @seteuid(i32 %43)
  br label %59

45:                                               ; preds = %2
  %46 = load %struct.kvmvars*, %struct.kvmvars** %3, align 8
  %47 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gmonparam*, %struct.gmonparam** %5, align 8
  %50 = getelementptr inbounds %struct.gmonparam, %struct.gmonparam* %49, i32 0, i32 0
  %51 = ptrtoint i32* %50 to i32
  %52 = bitcast i32* %4 to i8*
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @kvm_write(i32 %48, i32 %51, i8* %52, i64 %53)
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %67

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GMON_PROF_OFF, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %66 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %60, %57, %39, %32
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32*, i64) #1

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @kvm_write(i32, i32, i8*, i64) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
