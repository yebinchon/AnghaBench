; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@M_TTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tty_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_dealloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tty*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tty*
  store %struct.tty* %5, %struct.tty** %3, align 8
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 10
  %8 = call i32 @ttyinq_free(i32* %7)
  %9 = load %struct.tty*, %struct.tty** %3, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 9
  %11 = call i32 @ttyoutq_free(i32* %10)
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 8
  %14 = call i32 @seldrain(%struct.TYPE_2__* %13)
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 7
  %17 = call i32 @seldrain(%struct.TYPE_2__* %16)
  %18 = load %struct.tty*, %struct.tty** %3, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @knlist_destroy(i32* %20)
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @knlist_destroy(i32* %24)
  %26 = load %struct.tty*, %struct.tty** %3, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 6
  %28 = call i32 @cv_destroy(i32* %27)
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 5
  %31 = call i32 @cv_destroy(i32* %30)
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 4
  %34 = call i32 @cv_destroy(i32* %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 3
  %37 = call i32 @cv_destroy(i32* %36)
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 2
  %40 = call i32 @cv_destroy(i32* %39)
  %41 = load %struct.tty*, %struct.tty** %3, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tty*, %struct.tty** %3, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 0
  %46 = icmp eq i32* %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 0
  %50 = call i32 @mtx_destroy(i32* %49)
  br label %51

51:                                               ; preds = %47, %1
  %52 = load %struct.tty*, %struct.tty** %3, align 8
  %53 = call i32 @ttydevsw_free(%struct.tty* %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = load i32, i32* @M_TTY, align 4
  %56 = call i32 @free(%struct.tty* %54, i32 %55)
  ret void
}

declare dso_local i32 @ttyinq_free(i32*) #1

declare dso_local i32 @ttyoutq_free(i32*) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @ttydevsw_free(%struct.tty*) #1

declare dso_local i32 @free(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
