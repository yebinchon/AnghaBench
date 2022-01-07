; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, i32, i32, %struct.cryptoini* }
%struct.glxsb_softc = type { i32 }
%struct.glxsb_session = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @glxsb_crypto_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_crypto_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.glxsb_softc*, align 8
  %9 = alloca %struct.glxsb_session*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.glxsb_softc* @device_get_softc(i32 %13)
  store %struct.glxsb_softc* %14, %struct.glxsb_softc** %8, align 8
  %15 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %16 = icmp eq %struct.glxsb_softc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %19 = icmp eq %struct.cryptoini* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %17
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  br label %23

23:                                               ; preds = %47, %22
  %24 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %25 = icmp ne %struct.cryptoini* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %28 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %44 [
    i32 133, label %30
    i32 134, label %30
    i32 131, label %30
    i32 132, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
    i32 135, label %37
  ]

30:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %31 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %110

35:                                               ; preds = %30
  %36 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %36, %struct.cryptoini** %11, align 8
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %39 = icmp ne %struct.cryptoini* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %110

42:                                               ; preds = %37
  %43 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %43, %struct.cryptoini** %10, align 8
  br label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %110

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %49 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %48, i32 0, i32 3
  %50 = load %struct.cryptoini*, %struct.cryptoini** %49, align 8
  store %struct.cryptoini* %50, %struct.cryptoini** %7, align 8
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %53 = icmp eq %struct.cryptoini* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %110

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.glxsb_session* @crypto_get_driver_session(i32 %57)
  store %struct.glxsb_session* %58, %struct.glxsb_session** %9, align 8
  %59 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %60 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 135
  br i1 %62, label %63, label %92

63:                                               ; preds = %56
  %64 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %65 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 128
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %70 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @glxsb_crypto_freesession(i32 %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %4, align 4
  br label %110

75:                                               ; preds = %63
  %76 = load %struct.glxsb_session*, %struct.glxsb_session** %9, align 8
  %77 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @arc4rand(i32 %78, i32 4, i32 0)
  %80 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %81 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.glxsb_session*, %struct.glxsb_session** %9, align 8
  %84 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %86 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.glxsb_session*, %struct.glxsb_session** %9, align 8
  %89 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bcopy(i32 %87, i32 %90, i32 4)
  br label %92

92:                                               ; preds = %75, %56
  %93 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %94 = icmp ne %struct.cryptoini* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.glxsb_session*, %struct.glxsb_session** %9, align 8
  %97 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %98 = call i32 @glxsb_hash_setup(%struct.glxsb_session* %96, %struct.cryptoini* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %103 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @glxsb_crypto_freesession(i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %92
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %101, %68, %54, %44, %40, %33, %20
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.glxsb_softc* @device_get_softc(i32) #1

declare dso_local %struct.glxsb_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @glxsb_crypto_freesession(i32, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @glxsb_hash_setup(%struct.glxsb_session*, %struct.cryptoini*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
