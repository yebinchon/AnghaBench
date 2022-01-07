; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_get_optics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_get_optics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_link_output = type { i32, i32 }

@QLNX_IFM_100G_SR4 = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@QLNX_IFM_25G_SR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@QLNX_IFM_100G_CR4 = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@QLNX_IFM_25G_CR = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.qlnx_link_output*)* @qlnx_get_optics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_get_optics(i32* %0, %struct.qlnx_link_output* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.qlnx_link_output*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.qlnx_link_output* %1, %struct.qlnx_link_output** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %7 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %85 [
    i32 129, label %9
    i32 128, label %9
    i32 130, label %53
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %11 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 100000
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @QLNX_IFM_100G_SR4, align 4
  store i32 %15, i32* %5, align 4
  br label %52

16:                                               ; preds = %9
  %17 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %18 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 40000
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @IFM_40G_SR4, align 4
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %25 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 25000
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @QLNX_IFM_25G_SR, align 4
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %32 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 10000
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @IFM_10G_LR, align 4
  %37 = load i32, i32* @IFM_10G_SR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %41 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1000
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @IFM_1000_SX, align 4
  %46 = load i32, i32* @IFM_1000_LX, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %21
  br label %52

52:                                               ; preds = %51, %14
  br label %87

53:                                               ; preds = %2
  %54 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %55 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 100000
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @QLNX_IFM_100G_CR4, align 4
  store i32 %59, i32* %5, align 4
  br label %84

60:                                               ; preds = %53
  %61 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %62 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 40000
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @IFM_40G_CR4, align 4
  store i32 %66, i32* %5, align 4
  br label %83

67:                                               ; preds = %60
  %68 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %69 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 25000
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @QLNX_IFM_25G_CR, align 4
  store i32 %73, i32* %5, align 4
  br label %82

74:                                               ; preds = %67
  %75 = load %struct.qlnx_link_output*, %struct.qlnx_link_output** %4, align 8
  %76 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 10000
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @IFM_10G_TWINAX, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %58
  br label %87

85:                                               ; preds = %2
  %86 = load i32, i32* @IFM_UNKNOWN, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %84, %52
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
