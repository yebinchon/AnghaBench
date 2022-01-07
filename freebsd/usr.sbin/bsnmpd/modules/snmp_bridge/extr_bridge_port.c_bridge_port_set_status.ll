; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_set_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_value = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bridge_if = type { i32 }
%struct.bridge_port = type { i32, i32 }
%struct.mibif = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @bridge_port_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_set_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bridge_if*, align 8
  %12 = alloca %struct.bridge_port*, align 8
  %13 = alloca %struct.mibif*, align 8
  %14 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %20 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @bridge_port_index_decode(i32* %20, i32 %21, i8* %18, i32* %8)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

26:                                               ; preds = %3
  %27 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %18)
  store %struct.bridge_if* %27, %struct.bridge_if** %11, align 8
  %28 = icmp eq %struct.bridge_if* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.mibif* @mib_find_if(i32 %30)
  store %struct.mibif* %31, %struct.mibif** %13, align 8
  %32 = icmp eq %struct.mibif* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %38 = call %struct.bridge_port* @bridge_port_find(i32 %36, %struct.bridge_if* %37)
  store %struct.bridge_port* %38, %struct.bridge_port** %12, align 8
  %39 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %40 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %126 [
    i32 133, label %43
    i32 129, label %65
    i32 128, label %90
    i32 132, label %90
    i32 131, label %92
    i32 130, label %111
  ]

43:                                               ; preds = %35
  %44 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %45 = icmp eq %struct.bridge_port* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

48:                                               ; preds = %43
  %49 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %50 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

55:                                               ; preds = %48
  %56 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %57 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %60 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %64 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %63, i32 0, i32 0
  store i32 133, i32* %64, align 4
  br label %126

65:                                               ; preds = %35
  %66 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %67 = icmp eq %struct.bridge_port* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %70 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %75 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 133
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %68, %65
  %79 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

80:                                               ; preds = %73
  %81 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %82 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %85 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %89 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %88, i32 0, i32 0
  store i32 129, i32* %89, align 4
  br label %90

90:                                               ; preds = %35, %35, %80
  %91 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

92:                                               ; preds = %35
  %93 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %94 = icmp ne %struct.bridge_port* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

97:                                               ; preds = %92
  %98 = load %struct.mibif*, %struct.mibif** %13, align 8
  %99 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %100 = call %struct.bridge_port* @bridge_new_port(%struct.mibif* %98, %struct.bridge_if* %99)
  store %struct.bridge_port* %100, %struct.bridge_port** %12, align 8
  %101 = icmp eq %struct.bridge_port* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

104:                                              ; preds = %97
  %105 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %106 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 130, i32* %108, align 4
  %109 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %110 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %109, i32 0, i32 0
  store i32 128, i32* %110, align 4
  br label %126

111:                                              ; preds = %35
  %112 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %113 = icmp eq %struct.bridge_port* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

116:                                              ; preds = %111
  %117 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %118 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %121 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %125 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %124, i32 0, i32 0
  store i32 130, i32* %125, align 4
  br label %126

126:                                              ; preds = %35, %116, %104, %55
  %127 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %128

128:                                              ; preds = %126, %114, %102, %95, %90, %78, %53, %46, %33, %24
  %129 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bridge_port_index_decode(i32*, i32, i8*, i32*) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.mibif* @mib_find_if(i32) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i32, %struct.bridge_if*) #2

declare dso_local %struct.bridge_port* @bridge_new_port(%struct.mibif*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
