; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@TF_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_wakeup(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TF_ASYNC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.tty*, %struct.tty** %3, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 6
  %19 = load i32, i32* @SIGIO, align 4
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @pgsigio(i32** %18, i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %16, %11, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FWRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 4
  %34 = call i32 @cv_broadcast(i32* %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 3
  %37 = call i32 @selwakeup(%struct.TYPE_2__* %36)
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @KNOTE_LOCKED(i32* %40, i32 0)
  br label %42

42:                                               ; preds = %31, %26
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FREAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 2
  %50 = call i32 @cv_broadcast(i32* %49)
  %51 = load %struct.tty*, %struct.tty** %3, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 1
  %53 = call i32 @selwakeup(%struct.TYPE_2__* %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @KNOTE_LOCKED(i32* %56, i32 0)
  br label %58

58:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
