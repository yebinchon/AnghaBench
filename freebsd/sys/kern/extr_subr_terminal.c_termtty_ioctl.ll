; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termtty_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termtty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.terminal = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.terminal*, i32, i64, %struct.thread*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i64, %struct.thread*)* @termtty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @termtty_ioctl(%struct.tty* %0, i32 %1, i64 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.terminal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %16 = load %struct.tty*, %struct.tty** %6, align 8
  %17 = call %struct.terminal* @tty_softc(%struct.tty* %16)
  store %struct.terminal* %17, %struct.terminal** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %76 [
    i32 128, label %19
  ]

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 36
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %92

29:                                               ; preds = %19
  %30 = load %struct.terminal*, %struct.terminal** %10, align 8
  %31 = getelementptr inbounds %struct.terminal, %struct.terminal* %30, i32 0, i32 1
  %32 = call %struct.TYPE_12__* @teken_get_cursor(i32* %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.terminal*, %struct.terminal** %10, align 8
  %44 = getelementptr inbounds %struct.terminal, %struct.terminal* %43, i32 0, i32 1
  %45 = call %struct.TYPE_12__* @teken_get_winsize(i32* %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.terminal*, %struct.terminal** %10, align 8
  %57 = getelementptr inbounds %struct.terminal, %struct.terminal* %56, i32 0, i32 1
  %58 = call i32 @teken_get_defattr_cons25(i32* %57, i32* %14, i32* %15)
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 7
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %4, %29
  %77 = load %struct.tty*, %struct.tty** %6, align 8
  %78 = call i32 @tty_unlock(%struct.tty* %77)
  %79 = load %struct.terminal*, %struct.terminal** %10, align 8
  %80 = getelementptr inbounds %struct.terminal, %struct.terminal* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32 (%struct.terminal*, i32, i64, %struct.thread*)*, i32 (%struct.terminal*, i32, i64, %struct.thread*)** %82, align 8
  %84 = load %struct.terminal*, %struct.terminal** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.thread*, %struct.thread** %9, align 8
  %88 = call i32 %83(%struct.terminal* %84, i32 %85, i64 %86, %struct.thread* %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.tty*, %struct.tty** %6, align 8
  %90 = call i32 @tty_lock(%struct.tty* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %76, %27
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.terminal* @tty_softc(%struct.tty*) #1

declare dso_local %struct.TYPE_12__* @teken_get_cursor(i32*) #1

declare dso_local %struct.TYPE_12__* @teken_get_winsize(i32*) #1

declare dso_local i32 @teken_get_defattr_cons25(i32*, i32*, i32*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
