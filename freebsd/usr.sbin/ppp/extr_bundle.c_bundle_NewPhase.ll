; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_NewPhase.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_NewPhase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bundle: %s\0A\00", align 1
@PhaseNames = common dso_local global i32* null, align 8
@MPPE_MasterKeyValid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bundle: All NCPs are disabled\0A\00", align 1
@CLOSE_STAYDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_NewPhase(%struct.bundle* %0, i64 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i64, align 8
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bundle*, %struct.bundle** %3, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %64

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ule i64 %12, 128
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* @LogPHASE, align 4
  %16 = load i32*, i32** @PhaseNames, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @log_Printf(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i64, i64* %4, align 8
  switch i64 %22, label %64 [
    i64 131, label %23
    i64 130, label %28
    i64 132, label %32
    i64 129, label %37
    i64 128, label %55
  ]

23:                                               ; preds = %21
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.bundle*, %struct.bundle** %3, align 8
  %26 = getelementptr inbounds %struct.bundle, %struct.bundle* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store i32 0, i32* @MPPE_MasterKeyValid, align 4
  %27 = call i32 (...) @log_DisplayPrompts()
  br label %64

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.bundle*, %struct.bundle** %3, align 8
  %31 = getelementptr inbounds %struct.bundle, %struct.bundle* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %64

32:                                               ; preds = %21
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.bundle*, %struct.bundle** %3, align 8
  %35 = getelementptr inbounds %struct.bundle, %struct.bundle* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = call i32 (...) @log_DisplayPrompts()
  br label %64

37:                                               ; preds = %21
  %38 = load %struct.bundle*, %struct.bundle** %3, align 8
  %39 = getelementptr inbounds %struct.bundle, %struct.bundle* %38, i32 0, i32 1
  %40 = load %struct.bundle*, %struct.bundle** %3, align 8
  %41 = call i32 @ncp_fsmStart(%struct.TYPE_2__* %39, %struct.bundle* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.bundle*, %struct.bundle** %3, align 8
  %46 = getelementptr inbounds %struct.bundle, %struct.bundle* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = call i32 (...) @log_DisplayPrompts()
  br label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @LogPHASE, align 4
  %50 = call i32 (i32, i8*, ...) @log_Printf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.bundle*, %struct.bundle** %3, align 8
  %52 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %53 = call i32 @bundle_Close(%struct.bundle* %51, i32* null, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %64

55:                                               ; preds = %21
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.bundle*, %struct.bundle** %3, align 8
  %58 = getelementptr inbounds %struct.bundle, %struct.bundle* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.bundle*, %struct.bundle** %3, align 8
  %60 = getelementptr inbounds %struct.bundle, %struct.bundle* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mp_Down(i32* %61)
  %63 = call i32 (...) @log_DisplayPrompts()
  br label %64

64:                                               ; preds = %10, %21, %55, %54, %32, %28, %23
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @log_DisplayPrompts(...) #1

declare dso_local i32 @ncp_fsmStart(%struct.TYPE_2__*, %struct.bundle*) #1

declare dso_local i32 @bundle_Close(%struct.bundle*, i32*, i32) #1

declare dso_local i32 @mp_Down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
