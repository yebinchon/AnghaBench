; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_get_controllerinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_get_controllerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32*, i32* }
%struct.mly_command_ioctl = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@MDACIOCTL_GETCONTROLLERINFO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MDACIOCTL_GETCONTROLLERPARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_get_controllerinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_get_controllerinfo(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.mly_command_ioctl, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = call i32 @free(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = call i32 @bzero(%struct.mly_command_ioctl* %4, i32 4)
  %20 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @MDACIOCTL_GETCONTROLLERINFO, align 4
  %23 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %25 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %25, i32 0, i32 1
  %27 = bitcast i32** %26 to i8**
  %28 = call i32 @mly_ioctl(%struct.mly_softc* %24, %struct.mly_command_ioctl* %4, i8** %27, i32 4, i64* %5, i32* null, i32* null)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %68

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %32
  %38 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = call i32 @free(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = call i32 @bzero(%struct.mly_command_ioctl* %4, i32 4)
  %50 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @MDACIOCTL_GETCONTROLLERPARAMETER, align 4
  %53 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %4, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %55 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %55, i32 0, i32 0
  %57 = bitcast i32** %56 to i8**
  %58 = call i32 @mly_ioctl(%struct.mly_softc* %54, %struct.mly_command_ioctl* %4, i8** %57, i32 4, i64* %5, i32* null, i32* null)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %48
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %60, %35, %30
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bzero(%struct.mly_command_ioctl*, i32) #1

declare dso_local i32 @mly_ioctl(%struct.mly_softc*, %struct.mly_command_ioctl*, i8**, i32, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
