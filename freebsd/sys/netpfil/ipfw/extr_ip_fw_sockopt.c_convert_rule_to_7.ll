; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_convert_rule_to_7.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_convert_rule_to_7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_rule0 = type { i32, i64, %struct.ip_fw_rule0*, i32, i32, i32, i64, i32, i32, i32 }
%struct.ip_fw7 = type { i32, %struct.ip_fw_rule0*, i32, i32, i32, %struct.ip_fw7*, i32, i32, i32 }

@RULE_MAXSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@O_NAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ipfw: opcode %d size truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_rule0*)* @convert_rule_to_7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_rule_to_7(%struct.ip_fw_rule0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_fw_rule0*, align 8
  %4 = alloca %struct.ip_fw7*, align 8
  %5 = alloca %struct.ip_fw_rule0*, align 8
  %6 = alloca %struct.ip_fw_rule0*, align 8
  %7 = alloca %struct.ip_fw_rule0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_fw_rule0* %0, %struct.ip_fw_rule0** %3, align 8
  %10 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %11 = bitcast %struct.ip_fw_rule0* %10 to %struct.ip_fw7*
  store %struct.ip_fw7* %11, %struct.ip_fw7** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @RULE_MAXSIZE, align 4
  %13 = load i32, i32* @M_TEMP, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.ip_fw_rule0* @malloc(i32 %12, i32 %13, i32 %16)
  store %struct.ip_fw_rule0* %17, %struct.ip_fw_rule0** %5, align 8
  %18 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %19 = icmp eq %struct.ip_fw_rule0* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %132

21:                                               ; preds = %1
  %22 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %23 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %24 = load i32, i32* @RULE_MAXSIZE, align 4
  %25 = call i32 @bcopy(%struct.ip_fw_rule0* %22, %struct.ip_fw_rule0* %23, i32 %24)
  %26 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %27 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %30 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %32 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %35 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %37 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %40 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %42 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %45 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %47 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ip_fw7*
  %50 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %51 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %50, i32 0, i32 5
  store %struct.ip_fw7* %49, %struct.ip_fw7** %51, align 8
  %52 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %53 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %56 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %58 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %61 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %63 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %66 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %68 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %71 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %73 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %8, align 4
  %75 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %76 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %75, i32 0, i32 2
  %77 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %76, align 8
  store %struct.ip_fw_rule0* %77, %struct.ip_fw_rule0** %6, align 8
  %78 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %79 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %78, i32 0, i32 1
  %80 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %79, align 8
  store %struct.ip_fw_rule0* %80, %struct.ip_fw_rule0** %7, align 8
  br label %81

81:                                               ; preds = %116, %21
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %6, align 8
  %86 = call i32 @F_LEN(%struct.ip_fw_rule0* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %6, align 8
  %88 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %7, align 8
  %89 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %6, align 8
  %90 = call i32 @F_LEN(%struct.ip_fw_rule0* %89)
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @bcopy(%struct.ip_fw_rule0* %87, %struct.ip_fw_rule0* %88, i32 %93)
  %95 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %7, align 8
  %96 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @O_NAT, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %84
  %101 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %7, align 8
  %102 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %100, %84
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %6, align 8
  %111 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %2, align 4
  br label %132

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %6, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %121, i64 %122
  store %struct.ip_fw_rule0* %123, %struct.ip_fw_rule0** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %7, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %125, i64 %126
  store %struct.ip_fw_rule0* %127, %struct.ip_fw_rule0** %7, align 8
  br label %81

128:                                              ; preds = %81
  %129 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %130 = load i32, i32* @M_TEMP, align 4
  %131 = call i32 @free(%struct.ip_fw_rule0* %129, i32 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %109, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.ip_fw_rule0* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ip_fw_rule0*, %struct.ip_fw_rule0*, i32) #1

declare dso_local i32 @F_LEN(%struct.ip_fw_rule0*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @free(%struct.ip_fw_rule0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
