; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_tap.c_tap_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_tap.c_tap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32 }
%struct.iovec = type { i8*, i32 }

@ETHER_ADDR_LEN = common dso_local global i8* null, align 8
@ETHER_TYPE_LEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @tap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_send(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca [4 x %struct.iovec], align 16
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @ETHER_ADDR_LEN, align 8
  %13 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 16
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 1
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @ETHER_ADDR_LEN, align 8
  %21 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 1
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 2
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @ETHER_TYPE_LEN, align 8
  %29 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 2
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 3
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 3
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 16
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 0
  %45 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %5, i64 0, i64 0
  %46 = call i32 @__arraycount(%struct.iovec* %45)
  %47 = call i64 @writev(i32 %43, %struct.iovec* %44, i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sgt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  ret i32 1
}

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @__arraycount(%struct.iovec*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
