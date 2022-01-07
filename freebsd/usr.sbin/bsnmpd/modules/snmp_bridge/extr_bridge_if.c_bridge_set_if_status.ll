; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_set_if_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_set_if_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_value = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bridge_if = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_BADVALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @bridge_set_if_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_set_if_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bridge_if*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.bridge_if* @bridge_if_index_get(i32* %17, i32 %18)
  store %struct.bridge_if* %19, %struct.bridge_if** %8, align 8
  %20 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %21 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %151 [
    i32 133, label %24
    i32 129, label %55
    i32 128, label %86
    i32 132, label %88
    i32 131, label %112
    i32 130, label %136
  ]

24:                                               ; preds = %3
  %25 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %26 = icmp eq %struct.bridge_if* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

29:                                               ; preds = %24
  %30 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %31 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %34 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %38 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %52 [
    i32 133, label %40
    i32 129, label %42
  ]

40:                                               ; preds = %29
  %41 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

42:                                               ; preds = %29
  %43 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %44 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bridge_set_if_up(i32 %45, i32 1)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

50:                                               ; preds = %42
  %51 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

55:                                               ; preds = %3
  %56 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %57 = icmp eq %struct.bridge_if* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

60:                                               ; preds = %55
  %61 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %62 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %65 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %69 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %83 [
    i32 133, label %71
    i32 129, label %81
  ]

71:                                               ; preds = %60
  %72 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %73 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bridge_set_if_up(i32 %74, i32 1)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

79:                                               ; preds = %71
  %80 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

81:                                               ; preds = %60
  %82 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

86:                                               ; preds = %3
  %87 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

88:                                               ; preds = %3
  %89 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %90 = icmp ne %struct.bridge_if* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

93:                                               ; preds = %88
  %94 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %95 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 130, i32* %97, align 4
  %98 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %99 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32* @bridge_name_index_get(i32* %99, i32 %100, i8* %15)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

105:                                              ; preds = %93
  %106 = call i32 @bridge_if_create(i8* %15, i32 1)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

110:                                              ; preds = %105
  %111 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

112:                                              ; preds = %3
  %113 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %114 = icmp ne %struct.bridge_if* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

117:                                              ; preds = %112
  %118 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %119 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %118, i32 0, i32 0
  %120 = load i32, i32* %7, align 4
  %121 = call i32* @bridge_name_index_get(i32* %119, i32 %120, i8* %15)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %124, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

125:                                              ; preds = %117
  %126 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %127 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 130, i32* %129, align 4
  %130 = call i32 @bridge_if_create(i8* %15, i32 0)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

134:                                              ; preds = %125
  %135 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

136:                                              ; preds = %3
  %137 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %138 = icmp eq %struct.bridge_if* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

141:                                              ; preds = %136
  %142 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %143 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %146 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 4
  %149 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %150 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %149, i32 0, i32 0
  store i32 130, i32* %150, align 4
  br label %151

151:                                              ; preds = %141, %3
  %152 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %153

153:                                              ; preds = %151, %139, %134, %132, %123, %115, %110, %108, %103, %91, %86, %84, %81, %79, %77, %58, %53, %50, %48, %40, %27
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_if* @bridge_if_index_get(i32*, i32) #2

declare dso_local i32 @bridge_set_if_up(i32, i32) #2

declare dso_local i32* @bridge_name_index_get(i32*, i32, i8*) #2

declare dso_local i32 @bridge_if_create(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
