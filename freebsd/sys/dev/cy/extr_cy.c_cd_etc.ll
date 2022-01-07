; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cd_etc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cd_etc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32, i32 }

@CD1400_ETC_SENDBREAK = common dso_local global i32 0, align 4
@ETC_BREAK_STARTING = common dso_local global i32 0, align 4
@ETC_BREAK_STARTED = common dso_local global i32 0, align 4
@CD1400_ETC_STOPBREAK = common dso_local global i32 0, align 4
@ETC_BREAK_ENDING = common dso_local global i32 0, align 4
@ETC_BREAK_ENDED = common dso_local global i32 0, align 4
@ETC_NONE = common dso_local global i32 0, align 4
@CD1400_SRER = common dso_local global i32 0, align 4
@CD1400_SRER_TXRDY = common dso_local global i32 0, align 4
@CD1400_SRER_TXMPTY = common dso_local global i32 0, align 4
@TTIPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cyetc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.com_s*, i32)* @cd_etc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cd_etc(%struct.com_s* %0, i32 %1) #0 {
  %3 = alloca %struct.com_s*, align 8
  %4 = alloca i32, align 4
  store %struct.com_s* %0, %struct.com_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @critical_enter()
  %6 = call i32 (...) @COM_LOCK()
  %7 = load %struct.com_s*, %struct.com_s** %3, align 8
  %8 = getelementptr inbounds %struct.com_s, %struct.com_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %71

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CD1400_ETC_SENDBREAK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.com_s*, %struct.com_s** %3, align 8
  %19 = getelementptr inbounds %struct.com_s, %struct.com_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETC_BREAK_STARTING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %51, label %23

23:                                               ; preds = %17
  %24 = load %struct.com_s*, %struct.com_s** %3, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETC_BREAK_STARTED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %51, label %29

29:                                               ; preds = %23, %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CD1400_ETC_STOPBREAK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load %struct.com_s*, %struct.com_s** %3, align 8
  %35 = getelementptr inbounds %struct.com_s, %struct.com_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETC_BREAK_ENDING, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.com_s*, %struct.com_s** %3, align 8
  %41 = getelementptr inbounds %struct.com_s, %struct.com_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ETC_BREAK_ENDED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.com_s*, %struct.com_s** %3, align 8
  %47 = getelementptr inbounds %struct.com_s, %struct.com_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETC_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39, %33, %23, %17
  %52 = call i32 (...) @COM_UNLOCK()
  %53 = call i32 (...) @critical_exit()
  br label %91

54:                                               ; preds = %45, %29
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.com_s*, %struct.com_s** %3, align 8
  %57 = getelementptr inbounds %struct.com_s, %struct.com_s* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.com_s*, %struct.com_s** %3, align 8
  %59 = load i32, i32* @CD1400_SRER, align 4
  %60 = load %struct.com_s*, %struct.com_s** %3, align 8
  %61 = getelementptr inbounds %struct.com_s, %struct.com_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CD1400_SRER_TXRDY, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* @CD1400_SRER_TXMPTY, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.com_s*, %struct.com_s** %3, align 8
  %69 = getelementptr inbounds %struct.com_s, %struct.com_s* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = call i32 @cd_setreg(%struct.com_s* %58, i32 %59, i32 %67)
  br label %71

71:                                               ; preds = %54, %12
  %72 = call i32 (...) @COM_UNLOCK()
  %73 = call i32 (...) @critical_exit()
  br label %74

74:                                               ; preds = %90, %71
  %75 = load %struct.com_s*, %struct.com_s** %3, align 8
  %76 = getelementptr inbounds %struct.com_s, %struct.com_s* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.com_s*, %struct.com_s** %3, align 8
  %82 = getelementptr inbounds %struct.com_s, %struct.com_s* %81, i32 0, i32 0
  %83 = load i32, i32* @TTIPRI, align 4
  %84 = load i32, i32* @PCATCH, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @tsleep(i32* %82, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %80, %74
  %89 = phi i1 [ false, %74 ], [ %87, %80 ]
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  br label %74

91:                                               ; preds = %51, %88
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i64 @tsleep(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
