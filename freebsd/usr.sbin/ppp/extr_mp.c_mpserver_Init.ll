; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpserver = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@MPSERVER_DESCRIPTOR = common dso_local global i32 0, align 4
@mpserver_UpdateSet = common dso_local global i32 0, align 4
@mpserver_IsSet = common dso_local global i32 0, align 4
@mpserver_Read = common dso_local global i32 0, align 4
@mpserver_Write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpserver_Init(%struct.mpserver* %0) #0 {
  %2 = alloca %struct.mpserver*, align 8
  store %struct.mpserver* %0, %struct.mpserver** %2, align 8
  %3 = load i32, i32* @MPSERVER_DESCRIPTOR, align 4
  %4 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %5 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @mpserver_UpdateSet, align 4
  %8 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %9 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @mpserver_IsSet, align 4
  %12 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %13 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @mpserver_Read, align 4
  %16 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %17 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @mpserver_Write, align 4
  %20 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %21 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %24 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %27 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %29 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %28, i32 0, i32 1
  %30 = call i32 @memset(i32* %29, i8 signext 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
