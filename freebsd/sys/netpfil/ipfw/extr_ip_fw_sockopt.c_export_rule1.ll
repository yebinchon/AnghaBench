; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_rule1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_rule1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_fw_bcounter = type { i32 }
%struct.ip_fw_rule = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPFW_TLV_RULE_ENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw*, i64, i32, i32)* @export_rule1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_rule1(%struct.ip_fw* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ip_fw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_fw_bcounter*, align 8
  %10 = alloca %struct.ip_fw_rule*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store %struct.ip_fw* %0, %struct.ip_fw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %11, align 8
  %14 = load i32, i32* @IPFW_TLV_RULE_ENT, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = bitcast %struct.TYPE_2__* %24 to %struct.ip_fw_bcounter*
  store %struct.ip_fw_bcounter* %25, %struct.ip_fw_bcounter** %9, align 8
  %26 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %9, align 8
  %27 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %26, i64 1
  %28 = bitcast %struct.ip_fw_bcounter* %27 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %28, %struct.ip_fw_rule** %10, align 8
  %29 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %30 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %9, align 8
  %31 = call i32 @export_cntr1_base(%struct.ip_fw* %29, %struct.ip_fw_bcounter* %30)
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = bitcast %struct.TYPE_2__* %34 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %35, %struct.ip_fw_rule** %10, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %38 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %41 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %43 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %46 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %48 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %51 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %53 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %56 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %58 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %61 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %63 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %66 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %10, align 8
  %68 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %71 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ip_fw*, %struct.ip_fw** %5, align 8
  %74 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32 %69, i32 %72, i32 %78)
  ret void
}

declare dso_local i32 @export_cntr1_base(%struct.ip_fw*, %struct.ip_fw_bcounter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
