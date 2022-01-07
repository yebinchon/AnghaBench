; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_if_index_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_if_index_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.asn_oid = type { i64, i32* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bridge_if* (%struct.asn_oid*, i64)* @bridge_if_index_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bridge_if* @bridge_if_index_getnext(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bridge_if*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call %struct.bridge_if* (...) @bridge_first_bif()
  store %struct.bridge_if* %22, %struct.bridge_if** %3, align 8
  store i32 1, i32* %10, align 4
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %28, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %23
  %39 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %40 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %23
  store %struct.bridge_if* null, %struct.bridge_if** %3, align 8
  store i32 1, i32* %10, align 4
  br label %84

48:                                               ; preds = %38
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %52 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %50, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %61 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i8, i8* %14, i64 %70
  store i8 %69, i8* %71, align 1
  br label %72

72:                                               ; preds = %59
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %49

75:                                               ; preds = %49
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i8, i8* %14, i64 %76
  store i8 0, i8* %77, align 1
  %78 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %14)
  store %struct.bridge_if* %78, %struct.bridge_if** %9, align 8
  %79 = icmp eq %struct.bridge_if* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store %struct.bridge_if* null, %struct.bridge_if** %3, align 8
  store i32 1, i32* %10, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.bridge_if*, %struct.bridge_if** %9, align 8
  %83 = call %struct.bridge_if* @bridge_next_bif(%struct.bridge_if* %82)
  store %struct.bridge_if* %83, %struct.bridge_if** %3, align 8
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %80, %47, %21
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  ret %struct.bridge_if* %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bridge_if* @bridge_first_bif(...) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_if* @bridge_next_bif(%struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
