; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyOldMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyOldMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i64, i32, i32 }

@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@stdout = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_TtyOldMode(%struct.prompt* %0) #0 {
  %2 = alloca %struct.prompt*, align 8
  %3 = alloca i32, align 4
  store %struct.prompt* %0, %struct.prompt** %2, align 8
  %4 = load %struct.prompt*, %struct.prompt** %2, align 8
  %5 = getelementptr inbounds %struct.prompt, %struct.prompt* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @F_GETFL, align 4
  %8 = call i32 @fcntl(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.prompt*, %struct.prompt** %2, align 8
  %17 = getelementptr inbounds %struct.prompt, %struct.prompt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @F_SETFL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @fcntl(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.prompt*, %struct.prompt** %2, align 8
  %24 = getelementptr inbounds %struct.prompt, %struct.prompt* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @stdout, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.prompt*, %struct.prompt** %2, align 8
  %30 = getelementptr inbounds %struct.prompt, %struct.prompt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TCSADRAIN, align 4
  %33 = load %struct.prompt*, %struct.prompt** %2, align 8
  %34 = getelementptr inbounds %struct.prompt, %struct.prompt* %33, i32 0, i32 1
  %35 = call i32 @tcsetattr(i32 %31, i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
