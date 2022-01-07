; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_convert_rule_to_8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_convert_rule_to_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_rule0 = type { i32, i32, i32, i32, i64, %struct.ip_fw*, i32, i32, i32, i32, %struct.ip_fw7* }
%struct.ip_fw = type { i32 }
%struct.ip_fw7 = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, %struct.ip_fw7* }

@RULE_MAXSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@O_NAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ipfw: opcode %d size truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_rule0*)* @convert_rule_to_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_rule_to_8(%struct.ip_fw_rule0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_fw_rule0*, align 8
  %4 = alloca %struct.ip_fw7*, align 8
  %5 = alloca %struct.ip_fw7*, align 8
  %6 = alloca %struct.ip_fw7*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_fw7*, align 8
  store %struct.ip_fw_rule0* %0, %struct.ip_fw_rule0** %3, align 8
  %10 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %11 = bitcast %struct.ip_fw_rule0* %10 to %struct.ip_fw7*
  store %struct.ip_fw7* %11, %struct.ip_fw7** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @RULE_MAXSIZE, align 4
  %13 = load i32, i32* @M_TEMP, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.ip_fw7* @malloc(i32 %12, i32 %13, i32 %16)
  store %struct.ip_fw7* %17, %struct.ip_fw7** %9, align 8
  %18 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %19 = icmp eq %struct.ip_fw7* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = load %struct.ip_fw7*, %struct.ip_fw7** %4, align 8
  %23 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %24 = load i32, i32* @RULE_MAXSIZE, align 4
  %25 = call i32 @bcopy(%struct.ip_fw7* %22, %struct.ip_fw7* %23, i32 %24)
  %26 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %27 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %30 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %29, i32 0, i32 10
  %31 = load %struct.ip_fw7*, %struct.ip_fw7** %30, align 8
  store %struct.ip_fw7* %31, %struct.ip_fw7** %5, align 8
  %32 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %33 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %32, i32 0, i32 10
  %34 = load %struct.ip_fw7*, %struct.ip_fw7** %33, align 8
  store %struct.ip_fw7* %34, %struct.ip_fw7** %6, align 8
  br label %35

35:                                               ; preds = %70, %21
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %35
  %39 = load %struct.ip_fw7*, %struct.ip_fw7** %5, align 8
  %40 = call i32 @F_LEN(%struct.ip_fw7* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ip_fw7*, %struct.ip_fw7** %5, align 8
  %42 = load %struct.ip_fw7*, %struct.ip_fw7** %6, align 8
  %43 = load %struct.ip_fw7*, %struct.ip_fw7** %5, align 8
  %44 = call i32 @F_LEN(%struct.ip_fw7* %43)
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @bcopy(%struct.ip_fw7* %41, %struct.ip_fw7* %42, i32 %47)
  %49 = load %struct.ip_fw7*, %struct.ip_fw7** %6, align 8
  %50 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @O_NAT, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.ip_fw7*, %struct.ip_fw7** %6, align 8
  %56 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %54, %38
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.ip_fw7*, %struct.ip_fw7** %5, align 8
  %65 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %2, align 4
  br label %139

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ip_fw7*, %struct.ip_fw7** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %75, i64 %76
  store %struct.ip_fw7* %77, %struct.ip_fw7** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ip_fw7*, %struct.ip_fw7** %6, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %79, i64 %80
  store %struct.ip_fw7* %81, %struct.ip_fw7** %6, align 8
  br label %35

82:                                               ; preds = %35
  %83 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %84 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %87 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %89 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %92 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %94 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %97 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %99 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %102 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %104 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %107 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %109 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.ip_fw*
  %112 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %113 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %112, i32 0, i32 5
  store %struct.ip_fw* %111, %struct.ip_fw** %113, align 8
  %114 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %115 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %118 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %120 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %122 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %125 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %127 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %130 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %132 = getelementptr inbounds %struct.ip_fw7, %struct.ip_fw7* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %3, align 8
  %135 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ip_fw7*, %struct.ip_fw7** %9, align 8
  %137 = load i32, i32* @M_TEMP, align 4
  %138 = call i32 @free(%struct.ip_fw7* %136, i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %82, %63, %20
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.ip_fw7* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ip_fw7*, %struct.ip_fw7*, i32) #1

declare dso_local i32 @F_LEN(%struct.ip_fw7*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @free(%struct.ip_fw7*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
