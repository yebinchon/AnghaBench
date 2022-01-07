; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_add_protected_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_add_protected_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32, i64, i32 }
%struct.ip_fw = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@RESVD_SET = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_add_protected_rule(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.ip_fw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_fw**, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.ip_fw** @get_map(%struct.ip_fw_chain* %9, i32 1, i32 %10)
  store %struct.ip_fw** %11, %struct.ip_fw*** %8, align 8
  %12 = load %struct.ip_fw**, %struct.ip_fw*** %8, align 8
  %13 = icmp eq %struct.ip_fw** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %18 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %23 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ip_fw**, %struct.ip_fw*** %8, align 8
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %27 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @bcopy(i32 %24, %struct.ip_fw** %25, i32 %31)
  br label %33

33:                                               ; preds = %21, %16
  %34 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %35 = load %struct.ip_fw**, %struct.ip_fw*** %8, align 8
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %37 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %35, i64 %39
  store %struct.ip_fw* %34, %struct.ip_fw** %40, align 8
  %41 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  %42 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %43 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @RESVD_SET, align 4
  %45 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %46 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %48 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %52 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %54 = load %struct.ip_fw**, %struct.ip_fw*** %8, align 8
  %55 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %56 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = call %struct.ip_fw** @swap_map(%struct.ip_fw_chain* %53, %struct.ip_fw** %54, i32 %58)
  store %struct.ip_fw** %59, %struct.ip_fw*** %8, align 8
  %60 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %61 = call i64 @RULEUSIZE0(%struct.ip_fw* %60)
  %62 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %63 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %69 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %68)
  %70 = load %struct.ip_fw**, %struct.ip_fw*** %8, align 8
  %71 = load i32, i32* @M_IPFW, align 4
  %72 = call i32 @free(%struct.ip_fw** %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %33, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.ip_fw** @get_map(%struct.ip_fw_chain*, i32, i32) #1

declare dso_local i32 @bcopy(i32, %struct.ip_fw**, i32) #1

declare dso_local %struct.ip_fw** @swap_map(%struct.ip_fw_chain*, %struct.ip_fw**, i32) #1

declare dso_local i64 @RULEUSIZE0(%struct.ip_fw*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @free(%struct.ip_fw**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
