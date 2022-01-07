; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_fetch_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_fetch_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngtype = type { i64*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.typelist = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ng_mesg = type { i64*, %struct.TYPE_4__, i64 }

@this_tick = common dso_local global i64 0, align 8
@ngtype_tick = common dso_local global i64 0, align 8
@ngtype_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@snmp_node = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTTYPES = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fetch_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_types() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ngtype*, align 8
  %3 = alloca %struct.typelist*, align 8
  %4 = alloca %struct.ng_mesg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i64, i64* @this_tick, align 8
  %8 = load i64, i64* @ngtype_tick, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %118

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %15, %11
  %13 = call %struct.ngtype* @TAILQ_FIRST(i32* @ngtype_list)
  store %struct.ngtype* %13, %struct.ngtype** %2, align 8
  %14 = icmp ne %struct.ngtype* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* @ngtype_list, %struct.ngtype* %16, i32 %17)
  %19 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %20 = call i32 @free(%struct.ngtype* %19)
  br label %12

21:                                               ; preds = %12
  %22 = load i32, i32* @snmp_node, align 4
  %23 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %24 = load i32, i32* @NGM_LISTTYPES, align 4
  %25 = call %struct.ngtype* @ng_dialog_id(i32 %22, i32 %23, i32 %24, i32* null, i32 0)
  %26 = bitcast %struct.ngtype* %25 to %struct.ng_mesg*
  store %struct.ng_mesg* %26, %struct.ng_mesg** %4, align 8
  %27 = icmp eq %struct.ng_mesg* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %29, i32* %1, align 4
  br label %118

30:                                               ; preds = %21
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.typelist*
  store %struct.typelist* %35, %struct.typelist** %3, align 8
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %110, %30
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.typelist*, %struct.typelist** %3, align 8
  %39 = getelementptr inbounds %struct.typelist, %struct.typelist* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %113

42:                                               ; preds = %36
  %43 = call %struct.ngtype* @malloc(i32 32)
  store %struct.ngtype* %43, %struct.ngtype** %2, align 8
  %44 = icmp eq %struct.ngtype* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %47 = bitcast %struct.ng_mesg* %46 to %struct.ngtype*
  %48 = call i32 @free(%struct.ngtype* %47)
  %49 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %49, i32* %1, align 4
  br label %118

50:                                               ; preds = %42
  %51 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %52 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.typelist*, %struct.typelist** %3, align 8
  %55 = getelementptr inbounds %struct.typelist, %struct.typelist* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i64* %53, i32 %60)
  %62 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %63 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i64 @strlen(i64* %64)
  %66 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %67 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 %65, i64* %70, align 8
  %71 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %72 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %79 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %104, %50
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %84 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %82, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %81
  %91 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %92 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %98 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %96, i64* %103, align 8
  br label %104

104:                                              ; preds = %90
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %81

107:                                              ; preds = %81
  %108 = load %struct.ngtype*, %struct.ngtype** %2, align 8
  %109 = call i32 @INSERT_OBJECT_OID(%struct.ngtype* %108, i32* @ngtype_list)
  br label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %5, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %5, align 8
  br label %36

113:                                              ; preds = %36
  %114 = load i64, i64* @this_tick, align 8
  store i64 %114, i64* @ngtype_tick, align 8
  %115 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %116 = bitcast %struct.ng_mesg* %115 to %struct.ngtype*
  %117 = call i32 @free(%struct.ngtype* %116)
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %113, %45, %28, %10
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

declare dso_local %struct.ngtype* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ngtype*, i32) #1

declare dso_local i32 @free(%struct.ngtype*) #1

declare dso_local %struct.ngtype* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local %struct.ngtype* @malloc(i32) #1

declare dso_local i32 @strcpy(i64*, i32) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @INSERT_OBJECT_OID(%struct.ngtype*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
