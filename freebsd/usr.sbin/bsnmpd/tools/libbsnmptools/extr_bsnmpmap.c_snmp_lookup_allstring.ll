; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_allstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_allstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.snmp_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_lookup_allstring(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %5, align 8
  %6 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %7 = icmp eq %struct.snmp_toolinfo* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %9, i32 0, i32 10
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %85

14:                                               ; preds = %8
  %15 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %16 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %15, i32 0, i32 9
  %17 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %18 = call i64 @snmp_lookup_leaf(i32* %16, %struct.snmp_object* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %85

21:                                               ; preds = %14
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %23 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %22, i32 0, i32 8
  %24 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %25 = call i64 @snmp_lookup_leaf(i32* %23, %struct.snmp_object* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %30 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %29, i32 0, i32 7
  %31 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %32 = call i64 @snmp_lookup_leaf(i32* %30, %struct.snmp_object* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %85

35:                                               ; preds = %28
  %36 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %37 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %36, i32 0, i32 6
  %38 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %39 = call i64 @snmp_lookup_leaf(i32* %37, %struct.snmp_object* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %85

42:                                               ; preds = %35
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %44 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %43, i32 0, i32 5
  %45 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %46 = call i64 @snmp_lookup_leaf(i32* %44, %struct.snmp_object* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %85

49:                                               ; preds = %42
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %51 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %50, i32 0, i32 4
  %52 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %53 = call i64 @snmp_lookup_leaf(i32* %51, %struct.snmp_object* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %85

56:                                               ; preds = %49
  %57 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %58 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %57, i32 0, i32 3
  %59 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %60 = call i64 @snmp_lookup_leaf(i32* %58, %struct.snmp_object* %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %85

63:                                               ; preds = %56
  %64 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %65 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %64, i32 0, i32 2
  %66 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %67 = call i64 @snmp_lookup_leaf(i32* %65, %struct.snmp_object* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %85

70:                                               ; preds = %63
  %71 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %72 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %71, i32 0, i32 1
  %73 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %74 = call i64 @snmp_lookuplist_string(i32* %72, %struct.snmp_object* %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %85

77:                                               ; preds = %70
  %78 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %79 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %78, i32 0, i32 0
  %80 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %81 = call i64 @snmp_lookuplist_string(i32* %79, %struct.snmp_object* %80)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %76, %69, %62, %55, %48, %41, %34, %27, %20, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @snmp_lookup_leaf(i32*, %struct.snmp_object*) #1

declare dso_local i64 @snmp_lookuplist_string(i32*, %struct.snmp_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
