; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, i32, %struct.cryptoini* }
%struct.hifn_softc = type { i32 }
%struct.hifn_session = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"hifn_newsession: null softc\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HIFN_AES_IV_LENGTH = common dso_local global i32 0, align 4
@HIFN_IV_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @hifn_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.hifn_softc*, align 8
  %9 = alloca %struct.cryptoini*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hifn_session*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hifn_softc* @device_get_softc(i32 %13)
  store %struct.hifn_softc* %14, %struct.hifn_softc** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.hifn_softc*, %struct.hifn_softc** %8, align 8
  %16 = icmp ne %struct.hifn_softc* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %20 = icmp eq %struct.cryptoini* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.hifn_softc*, %struct.hifn_softc** %8, align 8
  %23 = icmp eq %struct.hifn_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %101

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.hifn_session* @crypto_get_driver_session(i32 %27)
  store %struct.hifn_session* %28, %struct.hifn_session** %12, align 8
  %29 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %29, %struct.cryptoini** %9, align 8
  br label %30

30:                                               ; preds = %88, %26
  %31 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %32 = icmp ne %struct.cryptoini* %31, null
  br i1 %32, label %33, label %92

33:                                               ; preds = %30
  %34 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %85 [
    i32 131, label %37
    i32 129, label %37
    i32 130, label %37
    i32 128, label %37
    i32 132, label %64
    i32 135, label %64
    i32 134, label %64
    i32 133, label %79
  ]

37:                                               ; preds = %33, %33, %33, %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  %43 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %44 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hifn_session*, %struct.hifn_session** %12, align 8
  %47 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hifn_session*, %struct.hifn_session** %12, align 8
  %49 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %54 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %62 [
    i32 131, label %56
    i32 130, label %56
    i32 129, label %59
    i32 128, label %59
  ]

56:                                               ; preds = %52, %52
  %57 = load %struct.hifn_session*, %struct.hifn_session** %12, align 8
  %58 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %57, i32 0, i32 0
  store i32 16, i32* %58, align 4
  br label %62

59:                                               ; preds = %52, %52
  %60 = load %struct.hifn_session*, %struct.hifn_session** %12, align 8
  %61 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %60, i32 0, i32 0
  store i32 20, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %59, %56
  br label %63

63:                                               ; preds = %62, %42
  br label %87

64:                                               ; preds = %33, %33, %33
  %65 = load %struct.hifn_session*, %struct.hifn_session** %12, align 8
  %66 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %69 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 134
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @HIFN_AES_IV_LENGTH, align 4
  br label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @HIFN_IV_LENGTH, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = call i32 @read_random(i32 %67, i32 %77)
  br label %79

79:                                               ; preds = %33, %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %4, align 4
  br label %101

84:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %87

85:                                               ; preds = %33
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %4, align 4
  br label %101

87:                                               ; preds = %84, %63
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %90 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %89, i32 0, i32 2
  %91 = load %struct.cryptoini*, %struct.cryptoini** %90, align 8
  store %struct.cryptoini* %91, %struct.cryptoini** %9, align 8
  br label %30

92:                                               ; preds = %30
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %95, %92
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %98, %85, %82, %40, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.hifn_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.hifn_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @read_random(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
