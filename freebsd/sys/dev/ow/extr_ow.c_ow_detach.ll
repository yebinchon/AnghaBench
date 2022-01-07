; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_devinfo = type { i32 }
%struct.ow_softc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@M_OW = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ow_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ow_devinfo, align 4
  %4 = alloca %struct.ow_devinfo*, align 8
  %5 = alloca %struct.ow_devinfo, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ow_devinfo*, align 8
  %9 = alloca %struct.ow_softc*, align 8
  %10 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %3, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ow_softc* @device_get_softc(i32 %12)
  store %struct.ow_softc* %13, %struct.ow_softc** %9, align 8
  %14 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_generic_detach(i32 %15)
  %17 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @device_get_children(i32 %18, %struct.ow_devinfo** %4, i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.ow_devinfo*, %struct.ow_devinfo** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %29, i64 %31
  %33 = bitcast %struct.ow_devinfo* %5 to i8*
  %34 = bitcast %struct.ow_devinfo* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ow_devinfo* @device_get_ivars(i32 %36)
  store %struct.ow_devinfo* %37, %struct.ow_devinfo** %8, align 8
  %38 = load %struct.ow_devinfo*, %struct.ow_devinfo** %8, align 8
  %39 = load i32, i32* @M_OW, align 4
  %40 = call i32 @free(%struct.ow_devinfo* %38, i32 %39)
  %41 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_delete_child(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.ow_devinfo*, %struct.ow_devinfo** %4, align 8
  %51 = load i32, i32* @M_TEMP, align 4
  %52 = call i32 @free(%struct.ow_devinfo* %50, i32 %51)
  %53 = load %struct.ow_softc*, %struct.ow_softc** %9, align 8
  %54 = call i32 @OW_LOCK_DESTROY(%struct.ow_softc* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ow_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i64 @device_get_children(i32, %struct.ow_devinfo**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ow_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @free(%struct.ow_devinfo*, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @OW_LOCK_DESTROY(%struct.ow_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
