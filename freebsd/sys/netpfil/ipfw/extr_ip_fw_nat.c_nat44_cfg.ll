; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nat44_cfg_nat = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat44_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat44_cfg(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.nat44_cfg_nat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 12
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %22 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %20
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 1
  %37 = bitcast %struct.TYPE_6__* %36 to %struct.nat44_cfg_nat*
  store %struct.nat44_cfg_nat* %37, %struct.nat44_cfg_nat** %9, align 8
  %38 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %39 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strnlen(i32 %40, i32 4)
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %48 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strtol(i32 %49, i8** %12, i32 10)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %46
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %79

60:                                               ; preds = %53
  store i64 12, i64* %11, align 8
  %61 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %62 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %67 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = add i64 %65, %70
  %72 = icmp ult i64 %64, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %60
  %76 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %77 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %78 = call i32 @nat44_config(%struct.ip_fw_chain* %76, %struct.nat44_cfg_nat* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %73, %58, %44, %32, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @nat44_config(%struct.ip_fw_chain*, %struct.nat44_cfg_nat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
