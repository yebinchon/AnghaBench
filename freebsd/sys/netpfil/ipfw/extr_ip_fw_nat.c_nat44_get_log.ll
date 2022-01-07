; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_get_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_get_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64 }
%struct._ipfw_obj_header = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nat44_cfg_nat = type { i64, i32 }
%struct.cfg_nat = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LIBALIAS_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat44_get_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat44_get_log(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_header*, align 8
  %9 = alloca %struct.nat44_cfg_nat*, align 8
  %10 = alloca %struct.cfg_nat*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 20, i64* %12, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %21, i64 %22)
  %24 = inttoptr i64 %23 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %24, %struct._ipfw_obj_header** %8, align 8
  %25 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %26 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %20
  %35 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %36 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %35, i64 1
  %37 = bitcast %struct._ipfw_obj_header* %36 to %struct.nat44_cfg_nat*
  store %struct.nat44_cfg_nat* %37, %struct.nat44_cfg_nat** %9, align 8
  %38 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %39 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strnlen(i32 %40, i32 4)
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %105

46:                                               ; preds = %34
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %48 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %47)
  %49 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %50 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %49, i32 0, i32 0
  %51 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %52 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.cfg_nat* @lookup_nat_name(i32* %50, i32 %53)
  store %struct.cfg_nat* %54, %struct.cfg_nat** %10, align 8
  %55 = load %struct.cfg_nat*, %struct.cfg_nat** %10, align 8
  %56 = icmp eq %struct.cfg_nat* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %59 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %58)
  %60 = load i32, i32* @ESRCH, align 4
  store i32 %60, i32* %4, align 4
  br label %105

61:                                               ; preds = %46
  %62 = load %struct.cfg_nat*, %struct.cfg_nat** %10, align 8
  %63 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %70 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %69)
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %4, align 4
  br label %105

72:                                               ; preds = %61
  %73 = load %struct.cfg_nat*, %struct.cfg_nat** %10, align 8
  %74 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %75 = call i32 @export_nat_cfg(%struct.cfg_nat* %73, %struct.nat44_cfg_nat* %74)
  %76 = load i64, i64* @LIBALIAS_BUF_SIZE, align 8
  %77 = add i64 16, %76
  %78 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %9, align 8
  %79 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %81 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 4
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %88 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %4, align 4
  br label %105

90:                                               ; preds = %72
  %91 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %92 = load i64, i64* @LIBALIAS_BUF_SIZE, align 8
  %93 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %91, i64 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.cfg_nat*, %struct.cfg_nat** %10, align 8
  %97 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @LIBALIAS_BUF_SIZE, align 8
  %102 = call i32 @memcpy(i8* %95, i32* %100, i64 %101)
  %103 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %104 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %90, %86, %68, %57, %44, %32, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.cfg_nat* @lookup_nat_name(i32*, i32) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_nat_cfg(%struct.cfg_nat*, %struct.nat44_cfg_nat*) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
