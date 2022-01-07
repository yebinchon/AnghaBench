; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_commit_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_commit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }
%struct.bridge_if = type { i32 }
%struct.bridge_port = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_COMMIT_FAILED = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i32)* @bridge_port_commit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_commit_status(%struct.snmp_value* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bridge_if*, align 8
  %10 = alloca %struct.bridge_port*, align 8
  %11 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @bridge_port_index_decode(i32* %17, i32 %18, i8* %15, i32* %6)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

23:                                               ; preds = %2
  %24 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %15)
  store %struct.bridge_if* %24, %struct.bridge_if** %9, align 8
  %25 = icmp eq %struct.bridge_if* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.bridge_if*, %struct.bridge_if** %9, align 8
  %29 = call %struct.bridge_port* @bridge_port_find(i32 %27, %struct.bridge_if* %28)
  store %struct.bridge_port* %29, %struct.bridge_port** %10, align 8
  %30 = icmp eq %struct.bridge_port* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %23
  %32 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %35 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %54 [
    i32 129, label %37
    i32 128, label %44
  ]

37:                                               ; preds = %33
  %38 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %39 = call i32 @bridge_port_addm(%struct.bridge_port* %38, i8* %15)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SNMP_ERR_COMMIT_FAILED, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

43:                                               ; preds = %37
  br label %54

44:                                               ; preds = %33
  %45 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %46 = call i32 @bridge_port_delm(%struct.bridge_port* %45, i8* %15)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SNMP_ERR_COMMIT_FAILED, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

50:                                               ; preds = %44
  %51 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %52 = load %struct.bridge_if*, %struct.bridge_if** %9, align 8
  %53 = call i32 @bridge_port_remove(%struct.bridge_port* %51, %struct.bridge_if* %52)
  br label %54

54:                                               ; preds = %33, %50, %43
  %55 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %48, %41, %31, %21
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bridge_port_index_decode(i32*, i32, i8*, i32*) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i32, %struct.bridge_if*) #2

declare dso_local i32 @bridge_port_addm(%struct.bridge_port*, i8*) #2

declare dso_local i32 @bridge_port_delm(%struct.bridge_port*, i8*) #2

declare dso_local i32 @bridge_port_remove(%struct.bridge_port*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
