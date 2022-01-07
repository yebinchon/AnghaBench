; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, i32, %struct.cryptoini* }
%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_session = type { i32, i32, %struct.xlp_sec_command }
%struct.xlp_sec_command = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XLP_SEC_AES_IV_LENGTH = common dso_local global i32 0, align 4
@XLP_SEC_DES_IV_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @xlp_sec_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_sec_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.cryptoini*, align 8
  %9 = alloca %struct.xlp_sec_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xlp_sec_session*, align 8
  %13 = alloca %struct.xlp_sec_command*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.xlp_sec_softc* @device_get_softc(i32 %14)
  store %struct.xlp_sec_softc* %15, %struct.xlp_sec_softc** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.xlp_sec_command* null, %struct.xlp_sec_command** %13, align 8
  %16 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %17 = icmp eq %struct.cryptoini* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %9, align 8
  %20 = icmp eq %struct.xlp_sec_softc* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %105

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.xlp_sec_session* @crypto_get_driver_session(i32 %24)
  store %struct.xlp_sec_session* %25, %struct.xlp_sec_session** %12, align 8
  %26 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %27 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %26, i32 0, i32 2
  store %struct.xlp_sec_command* %27, %struct.xlp_sec_command** %13, align 8
  %28 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %28, %struct.cryptoini** %8, align 8
  br label %29

29:                                               ; preds = %87, %23
  %30 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %31 = icmp ne %struct.cryptoini* %30, null
  br i1 %31, label %32, label %91

32:                                               ; preds = %29
  %33 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %34 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %84 [
    i32 131, label %36
    i32 129, label %36
    i32 130, label %36
    i32 128, label %36
    i32 132, label %63
    i32 135, label %63
    i32 134, label %63
    i32 133, label %78
  ]

36:                                               ; preds = %32, %32, %32, %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %105

41:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %42 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %43 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %46 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %48 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %53 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %61 [
    i32 131, label %55
    i32 130, label %55
    i32 129, label %58
    i32 128, label %58
  ]

55:                                               ; preds = %51, %51
  %56 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %57 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %56, i32 0, i32 0
  store i32 16, i32* %57, align 4
  br label %61

58:                                               ; preds = %51, %51
  %59 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %60 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %59, i32 0, i32 0
  store i32 20, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %58, %55
  br label %62

62:                                               ; preds = %61, %41
  br label %86

63:                                               ; preds = %32, %32, %32
  %64 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %65 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %68 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 134
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @XLP_SEC_AES_IV_LENGTH, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @XLP_SEC_DES_IV_LENGTH, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 @read_random(i32 %66, i32 %76)
  br label %78

78:                                               ; preds = %32, %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  br label %105

83:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  br label %86

84:                                               ; preds = %32
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %4, align 4
  br label %105

86:                                               ; preds = %83, %62
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %89 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %88, i32 0, i32 2
  %90 = load %struct.cryptoini*, %struct.cryptoini** %89, align 8
  store %struct.cryptoini* %90, %struct.cryptoini** %8, align 8
  br label %29

91:                                               ; preds = %29
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %4, align 4
  br label %105

99:                                               ; preds = %94, %91
  %100 = load %struct.xlp_sec_session*, %struct.xlp_sec_session** %12, align 8
  %101 = getelementptr inbounds %struct.xlp_sec_session, %struct.xlp_sec_session* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %13, align 8
  %104 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %99, %97, %84, %81, %39, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.xlp_sec_softc* @device_get_softc(i32) #1

declare dso_local %struct.xlp_sec_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @read_random(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
