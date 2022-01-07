; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.snp_softc = type { i32, i32, %struct.tty* }
%struct.tty = type { i32 }

@EIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @snp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snp_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snp_softc*, align 8
  %11 = alloca %struct.tty*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uio*, %struct.uio** %6, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.uio*, %struct.uio** %6, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = bitcast %struct.snp_softc** %10 to i8**
  %22 = call i32 @devfs_get_cdevpriv(i8** %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %85

27:                                               ; preds = %20
  %28 = load %struct.snp_softc*, %struct.snp_softc** %10, align 8
  %29 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %28, i32 0, i32 2
  %30 = load %struct.tty*, %struct.tty** %29, align 8
  store %struct.tty* %30, %struct.tty** %11, align 8
  %31 = load %struct.tty*, %struct.tty** %11, align 8
  %32 = icmp eq %struct.tty* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.tty*, %struct.tty** %11, align 8
  %35 = call i64 @tty_gone(%struct.tty* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %4, align 4
  br label %85

39:                                               ; preds = %33
  %40 = load %struct.tty*, %struct.tty** %11, align 8
  %41 = call i32 @tty_lock(%struct.tty* %40)
  br label %42

42:                                               ; preds = %80, %39
  %43 = load %struct.snp_softc*, %struct.snp_softc** %10, align 8
  %44 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %43, i32 0, i32 1
  %45 = load %struct.tty*, %struct.tty** %11, align 8
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = call i32 @ttyoutq_read_uio(i32* %44, %struct.tty* %45, %struct.uio* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %42
  br label %81

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @O_NONBLOCK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %63, i32* %8, align 4
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.snp_softc*, %struct.snp_softc** %10, align 8
  %66 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %65, i32 0, i32 0
  %67 = load %struct.tty*, %struct.tty** %11, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cv_wait_sig(i32* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.tty*, %struct.tty** %11, align 8
  %76 = call i64 @tty_gone(%struct.tty* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %8, align 4
  br label %81

80:                                               ; preds = %74
  br label %42

81:                                               ; preds = %78, %73, %62, %56
  %82 = load %struct.tty*, %struct.tty** %11, align 8
  %83 = call i32 @tty_unlock(%struct.tty* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %37, %25, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttyoutq_read_uio(i32*, %struct.tty*, %struct.uio*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
