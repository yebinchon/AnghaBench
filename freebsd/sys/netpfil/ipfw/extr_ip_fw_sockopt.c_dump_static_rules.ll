; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_static_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_static_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { %struct.ip_fw** }
%struct.ip_fw = type { i32 }
%struct.dump_args = type { i32, i32, i32, i32, i64 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPFW_TLV_RULE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.dump_args*, %struct.sockopt_data*)* @dump_static_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_static_rules(%struct.ip_fw_chain* %0, %struct.dump_args* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.ip_fw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.dump_args* %1, %struct.dump_args** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %13, i32 24)
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %89

20:                                               ; preds = %3
  %21 = load i32, i32* @IPFW_TLV_RULE_LIST, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %26 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %33 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %38 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %85, %20
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %43 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %40
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %48 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %47, i32 0, i32 0
  %49 = load %struct.ip_fw**, %struct.ip_fw*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %49, i64 %51
  %53 = load %struct.ip_fw*, %struct.ip_fw** %52, align 8
  store %struct.ip_fw* %53, %struct.ip_fw** %9, align 8
  %54 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %55 = call i32 @RULEUSIZE1(%struct.ip_fw* %54)
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %60 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %63, %46
  %69 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %69, i32 %70)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %4, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %82 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @export_rule1(%struct.ip_fw* %78, i32* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %40

88:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %75, %18
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @RULEUSIZE1(%struct.ip_fw*) #1

declare dso_local i32 @export_rule1(%struct.ip_fw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
