; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_basename_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_basename_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }
%struct.bridge_if = type { i64* }
%struct.snmp_value = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@oid_begemotBrigeName = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snmp_value* (%struct.bridge_if*, %struct.snmp_value*)* @bridge_basename_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snmp_value* @bridge_basename_var(%struct.bridge_if* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca %struct.snmp_value*, align 8
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca i64, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %7 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %8 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %7, i32 0, i32 2
  %9 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_6__* @oid_begemotBrigeName to i8*), i64 16, i1 false)
  %10 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %11 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = call i64 @strlen(i64* %12)
  %14 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %15 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i64, i64* %17, i64 %23
  store i64 %13, i64* %24, align 8
  %25 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %26 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call i64 @strlen(i64* %27)
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %32 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* %30, i32** %34, align 8
  %35 = icmp eq i32* %30, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store %struct.snmp_value* null, %struct.snmp_value** %3, align 8
  br label %92

37:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %41 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i64 @strlen(i64* %42)
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %47 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %57 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %55, i64 %61
  store i64 %51, i64* %62, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %68 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i64 @strlen(i64* %69)
  %71 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %72 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %76 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %79 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %84 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = call i64 @strlen(i64* %85)
  %87 = call i32 @bcopy(i64* %77, i32* %82, i64 %86)
  %88 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %89 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %90 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  store %struct.snmp_value* %91, %struct.snmp_value** %3, align 8
  br label %92

92:                                               ; preds = %66, %36
  %93 = load %struct.snmp_value*, %struct.snmp_value** %3, align 8
  ret %struct.snmp_value* %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i64*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @bcopy(i64*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
