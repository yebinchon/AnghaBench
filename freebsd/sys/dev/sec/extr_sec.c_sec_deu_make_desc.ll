; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_deu_make_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_deu_make_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_session = type { i32 }
%struct.sec_desc = type { %struct.sec_hw_desc* }
%struct.sec_hw_desc = type { i32, i32, i32 }
%struct.cryptop = type { i32 }
%struct.cryptodesc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEC_EU_DEU = common dso_local global i32 0, align 4
@SEC_DEU_MODE_CBC = common dso_local global i32 0, align 4
@SEC_DEU_MODE_TS = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@SEC_DEU_MODE_ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_session*, %struct.sec_desc*, %struct.cryptop*, i32)* @sec_deu_make_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_deu_make_desc(%struct.sec_softc* %0, %struct.sec_session* %1, %struct.sec_desc* %2, %struct.cryptop* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sec_softc*, align 8
  %8 = alloca %struct.sec_session*, align 8
  %9 = alloca %struct.sec_desc*, align 8
  %10 = alloca %struct.cryptop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sec_hw_desc*, align 8
  %13 = alloca %struct.cryptodesc*, align 8
  %14 = alloca %struct.cryptodesc*, align 8
  %15 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %7, align 8
  store %struct.sec_session* %1, %struct.sec_session** %8, align 8
  store %struct.sec_desc* %2, %struct.sec_desc** %9, align 8
  store %struct.cryptop* %3, %struct.cryptop** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %17 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %16, i32 0, i32 0
  %18 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %17, align 8
  store %struct.sec_hw_desc* %18, %struct.sec_hw_desc** %12, align 8
  %19 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %20 = call i32 @sec_split_crp(%struct.cryptop* %19, %struct.cryptodesc** %13, %struct.cryptodesc** %14)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %6, align 4
  br label %89

25:                                               ; preds = %5
  %26 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %27 = icmp ne %struct.cryptodesc* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %89

30:                                               ; preds = %25
  %31 = load i32, i32* @SEC_EU_DEU, align 4
  %32 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %33 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SEC_DEU_MODE_CBC, align 4
  %35 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %36 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %47 [
    i32 129, label %40
    i32 128, label %46
  ]

40:                                               ; preds = %30
  %41 = load i32, i32* @SEC_DEU_MODE_TS, align 4
  %42 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %43 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %49

46:                                               ; preds = %30
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %6, align 4
  br label %89

49:                                               ; preds = %46, %40
  %50 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %51 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @SEC_DEU_MODE_ED, align 4
  %58 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %59 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %63 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %66 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %69 = icmp ne %struct.cryptodesc* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.sec_softc*, %struct.sec_softc** %7, align 8
  %72 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %73 = load %struct.sec_session*, %struct.sec_session** %8, align 8
  %74 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %75 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %76 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @sec_build_common_s_desc(%struct.sec_softc* %71, %struct.sec_desc* %72, %struct.sec_session* %73, %struct.cryptop* %74, %struct.cryptodesc* %75, %struct.cryptodesc* %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %87

79:                                               ; preds = %67
  %80 = load %struct.sec_softc*, %struct.sec_softc** %7, align 8
  %81 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %82 = load %struct.sec_session*, %struct.sec_session** %8, align 8
  %83 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %84 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @sec_build_common_ns_desc(%struct.sec_softc* %80, %struct.sec_desc* %81, %struct.sec_session* %82, %struct.cryptop* %83, %struct.cryptodesc* %84, i32 %85)
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %79, %70
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %47, %28, %23
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @sec_split_crp(%struct.cryptop*, %struct.cryptodesc**, %struct.cryptodesc**) #1

declare dso_local i32 @sec_build_common_s_desc(%struct.sec_softc*, %struct.sec_desc*, %struct.sec_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*, i32) #1

declare dso_local i32 @sec_build_common_ns_desc(%struct.sec_softc*, %struct.sec_desc*, %struct.sec_session*, %struct.cryptop*, %struct.cryptodesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
