; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_comopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_comopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.com_s* }
%struct.com_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.cdev = type { i32 }

@com_fifo = common dso_local global i32 0, align 4
@FIFO_RCV_RST = common dso_local global i32 0, align 4
@FIFO_XMT_RST = common dso_local global i32 0, align 4
@LSR_RXRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@sio_lock = common dso_local global i32 0, align 4
@IER_ERXRDY = common dso_local global i32 0, align 4
@IER_ERLS = common dso_local global i32 0, align 4
@IER_EMSC = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@MSR_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.cdev*)* @comopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comopen(%struct.tty* %0, %struct.cdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.com_s*, align 8
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.cdev* %1, %struct.cdev** %5, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load %struct.com_s*, %struct.com_s** %9, align 8
  store %struct.com_s* %10, %struct.com_s** %6, align 8
  %11 = load %struct.com_s*, %struct.com_s** %6, align 8
  %12 = getelementptr inbounds %struct.com_s, %struct.com_s* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.com_s*, %struct.com_s** %6, align 8
  %15 = getelementptr inbounds %struct.com_s, %struct.com_s* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load %struct.com_s*, %struct.com_s** %6, align 8
  %17 = getelementptr inbounds %struct.com_s, %struct.com_s* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.com_s*, %struct.com_s** %6, align 8
  %20 = getelementptr inbounds %struct.com_s, %struct.com_s* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load %struct.com_s*, %struct.com_s** %6, align 8
  %22 = getelementptr inbounds %struct.com_s, %struct.com_s* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 500
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.com_s*, %struct.com_s** %6, align 8
  %31 = load i32, i32* @com_fifo, align 4
  %32 = load i32, i32* @FIFO_RCV_RST, align 4
  %33 = load i32, i32* @FIFO_XMT_RST, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.com_s*, %struct.com_s** %6, align 8
  %36 = getelementptr inbounds %struct.com_s, %struct.com_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = call i32 @sio_setreg(%struct.com_s* %30, i32 %31, i32 %38)
  %40 = call i32 @DELAY(i32 50)
  %41 = load %struct.com_s*, %struct.com_s** %6, align 8
  %42 = getelementptr inbounds %struct.com_s, %struct.com_s* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @inb(i32 %43)
  %45 = load i32, i32* @LSR_RXRDY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %29
  br label %61

49:                                               ; preds = %29
  %50 = load %struct.com_s*, %struct.com_s** %6, align 8
  %51 = load i32, i32* @com_fifo, align 4
  %52 = call i32 @sio_setreg(%struct.com_s* %50, i32 %51, i32 0)
  %53 = call i32 @DELAY(i32 50)
  %54 = load %struct.com_s*, %struct.com_s** %6, align 8
  %55 = getelementptr inbounds %struct.com_s, %struct.com_s* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @inb(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %48, %26
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 500
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %3, align 4
  br label %121

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %2
  %68 = call i32 @mtx_lock_spin(i32* @sio_lock)
  %69 = load %struct.com_s*, %struct.com_s** %6, align 8
  %70 = getelementptr inbounds %struct.com_s, %struct.com_s* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @inb(i32 %71)
  %73 = load %struct.com_s*, %struct.com_s** %6, align 8
  %74 = getelementptr inbounds %struct.com_s, %struct.com_s* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @inb(i32 %75)
  %77 = load %struct.com_s*, %struct.com_s** %6, align 8
  %78 = getelementptr inbounds %struct.com_s, %struct.com_s* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @inb(i32 %79)
  %81 = load %struct.com_s*, %struct.com_s** %6, align 8
  %82 = getelementptr inbounds %struct.com_s, %struct.com_s* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.com_s*, %struct.com_s** %6, align 8
  %84 = getelementptr inbounds %struct.com_s, %struct.com_s* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.com_s*, %struct.com_s** %6, align 8
  %86 = getelementptr inbounds %struct.com_s, %struct.com_s* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IER_ERXRDY, align 4
  %89 = load i32, i32* @IER_ERLS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IER_EMSC, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.com_s*, %struct.com_s** %6, align 8
  %94 = getelementptr inbounds %struct.com_s, %struct.com_s* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @COM_IIR_TXRDYBUG(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %67
  br label %101

99:                                               ; preds = %67
  %100 = load i32, i32* @IER_ETXRDY, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ 0, %98 ], [ %100, %99 ]
  %103 = or i32 %92, %102
  %104 = call i32 @outb(i32 %87, i32 %103)
  %105 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  %106 = call i32 (...) @siosettimeout()
  %107 = load %struct.com_s*, %struct.com_s** %6, align 8
  %108 = getelementptr inbounds %struct.com_s, %struct.com_s* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MSR_DCD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %101
  %114 = load %struct.cdev*, %struct.cdev** %5, align 8
  %115 = call i64 @ISCALLOUT(%struct.cdev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %101
  %118 = load %struct.tty*, %struct.tty** %4, align 8
  %119 = call i32 @ttyld_modem(%struct.tty* %118, i32 1)
  br label %120

120:                                              ; preds = %117, %113
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %64
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @sio_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i64 @COM_IIR_TXRDYBUG(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @siosettimeout(...) #1

declare dso_local i64 @ISCALLOUT(%struct.cdev*) #1

declare dso_local i32 @ttyld_modem(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
