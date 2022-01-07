; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_readopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_readopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm_opt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Bad option length %d (out of phase?)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Warning: Truncating option length from %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsm_opt* @fsm_readopt(i32** %0) #0 {
  %2 = alloca %struct.fsm_opt*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca %struct.fsm_opt*, align 8
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.fsm_opt*
  store %struct.fsm_opt* %7, %struct.fsm_opt** %4, align 8
  %8 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %9 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @LogERROR, align 4
  %16 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %17 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.fsm_opt* null, %struct.fsm_opt** %2, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %23 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32**, i32*** %3, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %26, align 8
  %30 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %31 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 4
  br i1 %35, label %36, label %46

36:                                               ; preds = %21
  %37 = load i32, i32* @LogERROR, align 4
  %38 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %39 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 4)
  %43 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %44 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %21
  %47 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  store %struct.fsm_opt* %47, %struct.fsm_opt** %2, align 8
  br label %48

48:                                               ; preds = %46, %14
  %49 = load %struct.fsm_opt*, %struct.fsm_opt** %2, align 8
  ret %struct.fsm_opt* %49
}

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
