; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@stdout = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: Client connection dropped.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_Destroy(%struct.prompt* %0, i32 %1) #0 {
  %3 = alloca %struct.prompt*, align 8
  %4 = alloca i32, align 4
  store %struct.prompt* %0, %struct.prompt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.prompt*, %struct.prompt** %3, align 8
  %6 = icmp ne %struct.prompt* %5, null
  br i1 %6, label %7, label %53

7:                                                ; preds = %2
  %8 = load %struct.prompt*, %struct.prompt** %3, align 8
  %9 = getelementptr inbounds %struct.prompt, %struct.prompt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @stdout, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.prompt*, %struct.prompt** %3, align 8
  %15 = getelementptr inbounds %struct.prompt, %struct.prompt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @fclose(i64 %16)
  %18 = load %struct.prompt*, %struct.prompt** %3, align 8
  %19 = getelementptr inbounds %struct.prompt, %struct.prompt* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @close(i64 %20)
  %22 = load %struct.prompt*, %struct.prompt** %3, align 8
  %23 = getelementptr inbounds %struct.prompt, %struct.prompt* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.prompt*, %struct.prompt** %3, align 8
  %26 = getelementptr inbounds %struct.prompt, %struct.prompt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.prompt*, %struct.prompt** %3, align 8
  %31 = getelementptr inbounds %struct.prompt, %struct.prompt* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @close(i64 %32)
  br label %34

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @LogPHASE, align 4
  %39 = load %struct.prompt*, %struct.prompt** %3, align 8
  %40 = getelementptr inbounds %struct.prompt, %struct.prompt* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @log_Printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37, %34
  br label %48

45:                                               ; preds = %7
  %46 = load %struct.prompt*, %struct.prompt** %3, align 8
  %47 = call i32 @prompt_TtyOldMode(%struct.prompt* %46)
  br label %48

48:                                               ; preds = %45, %44
  %49 = load %struct.prompt*, %struct.prompt** %3, align 8
  %50 = call i32 @log_UnRegisterPrompt(%struct.prompt* %49)
  %51 = load %struct.prompt*, %struct.prompt** %3, align 8
  %52 = call i32 @free(%struct.prompt* %51)
  br label %53

53:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @prompt_TtyOldMode(%struct.prompt*) #1

declare dso_local i32 @log_UnRegisterPrompt(%struct.prompt*) #1

declare dso_local i32 @free(%struct.prompt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
