; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read_raw_interbyte_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read_raw_interbyte_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.uio = type { i64 }

@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.uio*, i32)* @ttydisc_read_raw_interbyte_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_read_raw_interbyte_timer(%struct.tty* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty*, %struct.tty** %5, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @VMIN, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.tty*, %struct.tty** %5, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @VMIN, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.tty*, %struct.tty** %5, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @VTIME, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  br label %41

41:                                               ; preds = %109, %3
  %42 = load %struct.tty*, %struct.tty** %5, align 8
  %43 = load i32, i32* @curthread, align 4
  %44 = load i32, i32* @SIGTTIN, align 4
  %45 = call i32 @tty_wait_background(%struct.tty* %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %116

50:                                               ; preds = %41
  %51 = load %struct.tty*, %struct.tty** %5, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 2
  %53 = load %struct.tty*, %struct.tty** %5, align 8
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = load %struct.uio*, %struct.uio** %6, align 8
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ttyinq_read_uio(i32* %52, %struct.tty* %53, %struct.uio* %54, i64 %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %116

63:                                               ; preds = %50
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.uio*, %struct.uio** %6, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = load i64, i64* %8, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %63
  store i32 0, i32* %4, align 4
  br label %116

77:                                               ; preds = %68
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.uio*, %struct.uio** %6, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %110

84:                                               ; preds = %77
  %85 = load %struct.tty*, %struct.tty** %5, align 8
  %86 = getelementptr inbounds %struct.tty, %struct.tty* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TF_ZOMBIE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %116

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @IO_NDELAY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %98, i32* %4, align 4
  br label %116

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.tty*, %struct.tty** %5, align 8
  %102 = load %struct.tty*, %struct.tty** %5, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 1
  %104 = call i32 @tty_wait(%struct.tty* %101, i32* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %116

109:                                              ; preds = %100
  br label %41

110:                                              ; preds = %83
  %111 = load %struct.tty*, %struct.tty** %5, align 8
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @ttydisc_read_raw_read_timer(%struct.tty* %111, %struct.uio* %112, i32 %113, i64 %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %107, %97, %91, %76, %61, %48
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_wait_background(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttyinq_read_uio(i32*, %struct.tty*, %struct.uio*, i64, i32) #1

declare dso_local i32 @tty_wait(%struct.tty*, i32*) #1

declare dso_local i32 @ttydisc_read_raw_read_timer(%struct.tty*, %struct.uio*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
