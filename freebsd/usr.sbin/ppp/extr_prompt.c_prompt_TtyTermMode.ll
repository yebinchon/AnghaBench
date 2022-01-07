; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyTermMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyTermMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i64, %struct.datalink*, i32, i32 }
%struct.datalink = type { i32 }

@stdout = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_TtyTermMode(%struct.prompt* %0, %struct.datalink* %1) #0 {
  %3 = alloca %struct.prompt*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  store %struct.prompt* %0, %struct.prompt** %3, align 8
  store %struct.datalink* %1, %struct.datalink** %4, align 8
  %6 = load %struct.prompt*, %struct.prompt** %3, align 8
  %7 = getelementptr inbounds %struct.prompt, %struct.prompt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @stdout, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.prompt*, %struct.prompt** %3, align 8
  %13 = getelementptr inbounds %struct.prompt, %struct.prompt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TCSADRAIN, align 4
  %16 = load %struct.prompt*, %struct.prompt** %3, align 8
  %17 = getelementptr inbounds %struct.prompt, %struct.prompt* %16, i32 0, i32 3
  %18 = call i32 @tcsetattr(i32 %14, i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.prompt*, %struct.prompt** %3, align 8
  %21 = getelementptr inbounds %struct.prompt, %struct.prompt* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @F_GETFL, align 4
  %24 = call i32 @fcntl(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.prompt*, %struct.prompt** %3, align 8
  %33 = getelementptr inbounds %struct.prompt, %struct.prompt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @F_SETFL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @fcntl(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %19
  %39 = load %struct.datalink*, %struct.datalink** %4, align 8
  %40 = load %struct.prompt*, %struct.prompt** %3, align 8
  %41 = getelementptr inbounds %struct.prompt, %struct.prompt* %40, i32 0, i32 1
  store %struct.datalink* %39, %struct.datalink** %41, align 8
  ret void
}

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
