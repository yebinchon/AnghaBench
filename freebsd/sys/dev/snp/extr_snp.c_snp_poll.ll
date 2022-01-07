; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.snp_softc = type { i32, i32, %struct.tty* }
%struct.tty = type { i32 }

@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @snp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snp_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.snp_softc*, align 8
  %9 = alloca %struct.tty*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = bitcast %struct.snp_softc** %8 to i8**
  %12 = call i64 @devfs_get_cdevpriv(i8** %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @POLLHUP, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @POLLRDNORM, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @POLLOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @POLLWRNORM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %15, %24
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = load %struct.snp_softc*, %struct.snp_softc** %8, align 8
  %35 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %34, i32 0, i32 2
  %36 = load %struct.tty*, %struct.tty** %35, align 8
  store %struct.tty* %36, %struct.tty** %9, align 8
  %37 = load %struct.tty*, %struct.tty** %9, align 8
  %38 = icmp ne %struct.tty* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.tty*, %struct.tty** %9, align 8
  %41 = call i32 @tty_lock(%struct.tty* %40)
  %42 = load %struct.snp_softc*, %struct.snp_softc** %8, align 8
  %43 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %42, i32 0, i32 1
  %44 = call i64 @ttyoutq_bytesused(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @POLLIN, align 4
  %49 = load i32, i32* @POLLRDNORM, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.tty*, %struct.tty** %9, align 8
  %56 = call i32 @tty_unlock(%struct.tty* %55)
  br label %57

57:                                               ; preds = %54, %33
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.thread*, %struct.thread** %7, align 8
  %63 = load %struct.snp_softc*, %struct.snp_softc** %8, align 8
  %64 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %63, i32 0, i32 0
  %65 = call i32 @selrecord(%struct.thread* %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i64 @ttyoutq_bytesused(i32*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
