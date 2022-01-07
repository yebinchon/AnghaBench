; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_set_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_set_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_args = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.ip_fw_chain = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@IPFW_ARGS_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_args*, i32, %struct.ip_fw_chain*)* @set_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_match(%struct.ip_fw_args* %0, i32 %1, %struct.ip_fw_chain* %2) #0 {
  %4 = alloca %struct.ip_fw_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  store %struct.ip_fw_args* %0, %struct.ip_fw_args** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ip_fw_chain* %2, %struct.ip_fw_chain** %6, align 8
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %8 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ip_fw_args*, %struct.ip_fw_args** %4, align 8
  %11 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  %15 = load %struct.ip_fw_args*, %struct.ip_fw_args** %4, align 8
  %16 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %19 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 1, %26
  %28 = load %struct.ip_fw_args*, %struct.ip_fw_args** %4, align 8
  %29 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 %27, i64* %30, align 8
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %32 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ip_fw_args*, %struct.ip_fw_args** %4, align 8
  %41 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @IPFW_ARGS_REF, align 4
  %44 = load %struct.ip_fw_args*, %struct.ip_fw_args** %4, align 8
  %45 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
