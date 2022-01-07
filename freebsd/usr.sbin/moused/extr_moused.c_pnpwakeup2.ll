; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpwakeup2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpwakeup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"alternate probe...\00", align 1
@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCMSET = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@TIOCFLUSH = common dso_local global i32 0, align 4
@TIOCMBIS = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pnpwakeup2(): valid response.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pnpwakeup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpwakeup2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %7 = load i32, i32* @TIOCMGET, align 4
  %8 = call i32 @ioctl(i32 %6, i32 %7, i32* %4)
  %9 = load i32, i32* @TIOCM_DTR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @TIOCM_RTS, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %17 = load i32, i32* @TIOCMSET, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, i32* %4)
  %19 = call i32 @usleep(i32 240000)
  %20 = load i32, i32* @CS7, align 4
  %21 = load i32, i32* @CREAD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CLOCAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HUPCL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @setmousespeed(i32 1200, i32 1200, i32 %26)
  %28 = load i32, i32* @FREAD, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %30 = load i32, i32* @TIOCFLUSH, align 4
  %31 = call i32 @ioctl(i32 %29, i32 %30, i32* %4)
  %32 = load i32, i32* @TIOCM_DTR, align 4
  %33 = load i32, i32* @TIOCM_RTS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %36 = load i32, i32* @TIOCMBIS, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, i32* %4)
  %38 = call i32 @FD_ZERO(i32* %3)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %40 = call i32 @FD_SET(i32 %39, i32* %3)
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  store i32 240000, i32* %42, align 8
  %43 = load i32, i32* @FD_SETSIZE, align 4
  %44 = call i64 @select(i32 %43, i32* %3, i32* null, i32* null, %struct.timeval* %2)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %0
  %47 = call i32 @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %1, align 4
  br label %51

49:                                               ; preds = %0
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @setmousespeed(i32, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
