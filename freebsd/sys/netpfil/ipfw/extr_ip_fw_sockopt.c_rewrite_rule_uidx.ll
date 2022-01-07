; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_rewrite_rule_uidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_rewrite_rule_uidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.rule_check_info = type { i32, %struct.obj_idx*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.obj_idx = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.tid_info = type { i64, i8*, i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.rule_check_info*)* @rewrite_rule_uidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_rule_uidx(%struct.ip_fw_chain* %0, %struct.rule_check_info* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.rule_check_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.obj_idx*, align 8
  %9 = alloca %struct.obj_idx*, align 8
  %10 = alloca %struct.obj_idx*, align 8
  %11 = alloca %struct.tid_info, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.rule_check_info* %1, %struct.rule_check_info** %4, align 8
  %12 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %13 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ule i64 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %19 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %18, i32 0, i32 1
  %20 = load %struct.obj_idx*, %struct.obj_idx** %19, align 8
  store %struct.obj_idx* %20, %struct.obj_idx** %9, align 8
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %23 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_IPFW, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.obj_idx* @malloc(i32 %27, i32 %28, i32 %31)
  store %struct.obj_idx* %32, %struct.obj_idx** %9, align 8
  br label %33

33:                                               ; preds = %21, %17
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %34 = call i32 @memset(%struct.tid_info* %11, i32 0, i32 24)
  %35 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %36 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %42 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %47 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 1
  %50 = bitcast %struct.TYPE_5__* %49 to i8*
  %51 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %53 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 4
  %59 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %33
  %61 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %62 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %63 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %66 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  %67 = call i32 @ref_rule_objects(%struct.ip_fw_chain* %61, %struct.TYPE_6__* %64, %struct.rule_check_info* %65, %struct.obj_idx* %66, %struct.tid_info* %11)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %104

71:                                               ; preds = %60
  %72 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  store %struct.obj_idx* %72, %struct.obj_idx** %8, align 8
  %73 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  %74 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %75 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %73, i64 %77
  store %struct.obj_idx* %78, %struct.obj_idx** %10, align 8
  %79 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  store %struct.obj_idx* %79, %struct.obj_idx** %8, align 8
  br label %80

80:                                               ; preds = %100, %71
  %81 = load %struct.obj_idx*, %struct.obj_idx** %8, align 8
  %82 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %83 = icmp ult %struct.obj_idx* %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %86 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.obj_idx*, %struct.obj_idx** %8, align 8
  %91 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.obj_idx*, %struct.obj_idx** %8, align 8
  %97 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @update_opcode_kidx(i32* %95, i32 %98)
  br label %100

100:                                              ; preds = %84
  %101 = load %struct.obj_idx*, %struct.obj_idx** %8, align 8
  %102 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %101, i32 1
  store %struct.obj_idx* %102, %struct.obj_idx** %8, align 8
  br label %80

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  %106 = load %struct.rule_check_info*, %struct.rule_check_info** %4, align 8
  %107 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %106, i32 0, i32 1
  %108 = load %struct.obj_idx*, %struct.obj_idx** %107, align 8
  %109 = icmp ne %struct.obj_idx* %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  %112 = load i32, i32* @M_IPFW, align 4
  %113 = call i32 @free(%struct.obj_idx* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.obj_idx* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.tid_info*, i32, i32) #1

declare dso_local i32 @ref_rule_objects(%struct.ip_fw_chain*, %struct.TYPE_6__*, %struct.rule_check_info*, %struct.obj_idx*, %struct.tid_info*) #1

declare dso_local i32 @update_opcode_kidx(i32*, i32) #1

declare dso_local i32 @free(%struct.obj_idx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
