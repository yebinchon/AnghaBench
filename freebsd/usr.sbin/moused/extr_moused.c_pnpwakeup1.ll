; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpwakeup1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpwakeup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"PnP COM device rev 1.0 probe...\00", align 1
@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCMSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"modem status 0%o\00", align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TIOCMBIC = common dso_local global i32 0, align 4
@TIOCMBIS = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@TIOCFLUSH = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"pnpwakeup1(): valid response in first phase.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"pnpwakeup1(): valid response in second phase.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pnpwakeup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpwakeup1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
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
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %21 = load i32, i32* @TIOCMGET, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TIOCM_DSR, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %0
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %1, align 4
  br label %102

31:                                               ; preds = %0
  %32 = load i32, i32* @CS7, align 4
  %33 = load i32, i32* @CREAD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CLOCAL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HUPCL, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @setmousespeed(i32 1200, i32 1200, i32 %38)
  %40 = load i32, i32* @TIOCM_DTR, align 4
  %41 = load i32, i32* @TIOCM_RTS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %44 = load i32, i32* @TIOCMBIC, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, i32* %4)
  %46 = call i32 @usleep(i32 240000)
  %47 = load i32, i32* @TIOCM_DTR, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %49 = load i32, i32* @TIOCMBIS, align 4
  %50 = call i32 @ioctl(i32 %48, i32 %49, i32* %4)
  %51 = call i32 @usleep(i32 240000)
  %52 = load i32, i32* @FREAD, align 4
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %54 = load i32, i32* @TIOCFLUSH, align 4
  %55 = call i32 @ioctl(i32 %53, i32 %54, i32* %4)
  %56 = load i32, i32* @TIOCM_RTS, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %58 = load i32, i32* @TIOCMBIS, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, i32* %4)
  %60 = call i32 @FD_ZERO(i32* %3)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %62 = call i32 @FD_SET(i32 %61, i32* %3)
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  store i32 240000, i32* %64, align 8
  %65 = load i32, i32* @FD_SETSIZE, align 4
  %66 = call i64 @select(i32 %65, i32* %3, i32* null, i32* null, %struct.timeval* %2)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %31
  %69 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %1, align 4
  br label %102

71:                                               ; preds = %31
  %72 = load i32, i32* @TIOCM_DTR, align 4
  %73 = load i32, i32* @TIOCM_RTS, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %76 = load i32, i32* @TIOCMBIC, align 4
  %77 = call i32 @ioctl(i32 %75, i32 %76, i32* %4)
  %78 = call i32 @usleep(i32 240000)
  %79 = load i32, i32* @FREAD, align 4
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %81 = load i32, i32* @TIOCFLUSH, align 4
  %82 = call i32 @ioctl(i32 %80, i32 %81, i32* %4)
  %83 = load i32, i32* @TIOCM_DTR, align 4
  %84 = load i32, i32* @TIOCM_RTS, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %87 = load i32, i32* @TIOCMBIS, align 4
  %88 = call i32 @ioctl(i32 %86, i32 %87, i32* %4)
  %89 = call i32 @FD_ZERO(i32* %3)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %91 = call i32 @FD_SET(i32 %90, i32* %3)
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  store i32 240000, i32* %93, align 8
  %94 = load i32, i32* @FD_SETSIZE, align 4
  %95 = call i64 @select(i32 %94, i32* %3, i32* null, i32* null, %struct.timeval* %2)
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %71
  %98 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %1, align 4
  br label %102

100:                                              ; preds = %71
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %1, align 4
  br label %102

102:                                              ; preds = %100, %97, %68, %29
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @debug(i8*, ...) #1

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
