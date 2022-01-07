; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_print_dyn_rule_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_print_dyn_rule_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32, i32, i32, i32, i32, i32 }
%struct.in_addr = type { i8* }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ipfw: %s type %d %s %d -> %s %d, %d %s\0A\00", align 1
@V_dyn_count = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipfw_flow_id*, i32, i32, i8*, i8*)* @print_dyn_rule_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dyn_rule_flags(%struct.ipfw_flow_id* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ipfw_flow_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.in_addr, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %22 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %6, align 8
  %23 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htonl(i32 %24)
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @AF_INET, align 4
  %28 = trunc i64 %16 to i32
  %29 = call i32 @inet_ntop(i32 %27, %struct.in_addr* %11, i8* %18, i32 %28)
  %30 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %6, align 8
  %31 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @AF_INET, align 4
  %36 = trunc i64 %20 to i32
  %37 = call i32 @inet_ntop(i32 %35, %struct.in_addr* %11, i8* %21, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %6, align 8
  %42 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %6, align 8
  %45 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V_dyn_count, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @log(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40, i8* %18, i32 %43, i8* %21, i32 %46, i32 %47, i8* %48)
  %50 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @htonl(i32) #2

declare dso_local i32 @inet_ntop(i32, %struct.in_addr*, i8*, i32) #2

declare dso_local i32 @log(i32, i8*, i8*, i32, i8*, i32, i8*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
