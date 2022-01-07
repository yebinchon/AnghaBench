; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_index_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i64 }
%struct.asn_oid = type { i64, i32* }
%struct.bridge_if = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bridge_port* (%struct.asn_oid*, i64, i32)* @bridge_port_index_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bridge_port* @bridge_port_index_getnext(%struct.asn_oid* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bridge_port*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bridge_if*, align 8
  %13 = alloca %struct.bridge_port*, align 8
  %14 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call %struct.bridge_port* (...) @bridge_port_first()
  store %struct.bridge_port* %26, %struct.bridge_port** %13, align 8
  br label %103

27:                                               ; preds = %3
  %28 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %34 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %32, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %27
  %43 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %44 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %27
  store %struct.bridge_port* null, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %124

52:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %76, %52
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %56 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %53
  %64 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %65 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %67, %68
  %70 = add nsw i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %18, i64 %74
  store i8 %73, i8* %75, align 1
  br label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %53

79:                                               ; preds = %53
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %18, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %83 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %85, %86
  %88 = add nsw i64 %87, 1
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %9, align 1
  %92 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %18)
  store %struct.bridge_if* %92, %struct.bridge_if** %12, align 8
  %93 = icmp eq %struct.bridge_if* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %79
  %95 = load i8, i8* %9, align 1
  %96 = load %struct.bridge_if*, %struct.bridge_if** %12, align 8
  %97 = call %struct.bridge_port* @bridge_port_find(i8 signext %95, %struct.bridge_if* %96)
  store %struct.bridge_port* %97, %struct.bridge_port** %13, align 8
  %98 = icmp eq %struct.bridge_port* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %79
  store %struct.bridge_port* null, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %124

100:                                              ; preds = %94
  %101 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  %102 = call %struct.bridge_port* @bridge_port_next(%struct.bridge_port* %101)
  store %struct.bridge_port* %102, %struct.bridge_port** %13, align 8
  br label %103

103:                                              ; preds = %100, %25
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  store %struct.bridge_port* %107, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %124

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %119, %108
  %110 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  %111 = icmp ne %struct.bridge_port* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  %114 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RowStatus_active, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %122

119:                                              ; preds = %112
  %120 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  %121 = call %struct.bridge_port* @bridge_port_next(%struct.bridge_port* %120)
  store %struct.bridge_port* %121, %struct.bridge_port** %13, align 8
  br label %109

122:                                              ; preds = %118, %109
  %123 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  store %struct.bridge_port* %123, %struct.bridge_port** %4, align 8
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %122, %106, %99, %51
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  ret %struct.bridge_port* %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_port* @bridge_port_first(...) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i8 signext, %struct.bridge_if*) #2

declare dso_local %struct.bridge_port* @bridge_port_next(%struct.bridge_port*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
