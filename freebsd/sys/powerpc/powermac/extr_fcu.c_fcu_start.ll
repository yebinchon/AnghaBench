; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcu_softc = type { i32, i32, i32 }

@__const.fcu_start.buf = private unnamed_addr constant [1 x i8] c"\FF", align 1
@fcu_rpm_shift = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FCU initialized, RPM shift: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fcu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcu_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.fcu_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast [1 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @__const.fcu_start.buf, i32 0, i32 0), i64 1, i1 false)
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.fcu_softc* @device_get_softc(i32 %9)
  store %struct.fcu_softc* %10, %struct.fcu_softc** %4, align 8
  %11 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %12 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %15 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %18 = call i32 @fcu_write(i32 %13, i32 %16, i32 14, i8* %17, i32 1)
  %19 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %23 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %26 = call i32 @fcu_write(i32 %21, i32 %24, i32 46, i8* %25, i32 1)
  %27 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %28 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %31 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %34 = call i32 @fcu_read_1(i32 %29, i32 %32, i32 0, i8* %33)
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 3
  store i32 %40, i32* @fcu_rpm_shift, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @fcu_rpm_shift, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @fcu_attach_fans(i32 %44)
  %46 = load %struct.fcu_softc*, %struct.fcu_softc** %4, align 8
  %47 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %46, i32 0, i32 0
  %48 = call i32 @config_intrhook_disestablish(i32* %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.fcu_softc* @device_get_softc(i32) #2

declare dso_local i32 @fcu_write(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @fcu_read_1(i32, i32, i32, i8*) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @fcu_attach_fans(i32) #2

declare dso_local i32 @config_intrhook_disestablish(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
