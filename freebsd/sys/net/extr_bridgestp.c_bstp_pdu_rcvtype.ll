; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_pdu_rcvtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_pdu_rcvtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i32, i32 }
%struct.bstp_config_unit = type { i32, i32, i32, i32, i32, i32 }

@BSTP_PDU_OTHER = common dso_local global i32 0, align 4
@BSTP_PDU_SUPERIOR = common dso_local global i32 0, align 4
@INFO_SAME = common dso_local global i32 0, align 4
@BSTP_PDU_REPEATED = common dso_local global i32 0, align 4
@BSTP_PDU_INFERIOR = common dso_local global i32 0, align 4
@BSTP_PDU_INFERIORALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_port*, %struct.bstp_config_unit*)* @bstp_pdu_rcvtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_pdu_rcvtype(%struct.bstp_port* %0, %struct.bstp_config_unit* %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca %struct.bstp_config_unit*, align 8
  %5 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store %struct.bstp_config_unit* %1, %struct.bstp_config_unit** %4, align 8
  %6 = load i32, i32* @BSTP_PDU_OTHER, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %8 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %79 [
    i32 129, label %10
    i32 128, label %68
    i32 131, label %68
    i32 130, label %68
  ]

10:                                               ; preds = %2
  %11 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %12 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %11, i32 0, i32 0
  %13 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %14 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %13, i32 0, i32 1
  %15 = call i32 @bstp_info_superior(i32* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @BSTP_PDU_SUPERIOR, align 4
  store i32 %18, i32* %5, align 4
  br label %67

19:                                               ; preds = %10
  %20 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %21 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %20, i32 0, i32 0
  %22 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %23 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %22, i32 0, i32 1
  %24 = call i32 @bstp_info_cmp(i32* %21, i32* %23)
  %25 = load i32, i32* @INFO_SAME, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %32 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %27
  %36 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %37 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %40 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %45 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %48 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %56 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51, %43, %35, %27
  %60 = load i32, i32* @BSTP_PDU_SUPERIOR, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @BSTP_PDU_REPEATED, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %66

64:                                               ; preds = %19
  %65 = load i32, i32* @BSTP_PDU_INFERIOR, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66, %17
  br label %79

68:                                               ; preds = %2, %2, %2
  %69 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %70 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %69, i32 0, i32 0
  %71 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %4, align 8
  %72 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %71, i32 0, i32 1
  %73 = call i32 @bstp_info_cmp(i32* %70, i32* %72)
  %74 = load i32, i32* @INFO_SAME, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @BSTP_PDU_INFERIORALT, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %68
  br label %79

79:                                               ; preds = %2, %78, %67
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @bstp_info_superior(i32*, i32*) #1

declare dso_local i32 @bstp_info_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
