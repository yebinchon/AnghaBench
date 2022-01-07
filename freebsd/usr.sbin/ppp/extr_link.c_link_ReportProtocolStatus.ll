; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_ReportProtocolStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_ReportProtocolStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.link = type { i32*, i32* }
%struct.prompt = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"    Protocol     in        out      Protocol      in       out\0A\00", align 1
@NPROTOSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"   %-9s: %8lu, %8lu\00", align 1
@ProtocolStat = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_ReportProtocolStatus(%struct.link* %0, %struct.prompt* %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store %struct.prompt* %1, %struct.prompt** %4, align 8
  %6 = load %struct.prompt*, %struct.prompt** %4, align 8
  %7 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NPROTOSTAT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.prompt*, %struct.prompt** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ProtocolStat, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.link*, %struct.link** %3, align 8
  %21 = getelementptr inbounds %struct.link, %struct.link* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.link*, %struct.link** %3, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %26, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = srem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %12
  %39 = load %struct.prompt*, %struct.prompt** %4, align 8
  %40 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.prompt*, %struct.prompt** %4, align 8
  %51 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
