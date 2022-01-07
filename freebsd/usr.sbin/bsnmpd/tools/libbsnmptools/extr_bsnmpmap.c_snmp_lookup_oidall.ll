; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_oidall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_oidall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snmp_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_lookup_oidall(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %9 = icmp eq %struct.snmp_toolinfo* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %12 = icmp eq %struct.snmp_object* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %99

17:                                               ; preds = %13
  %18 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %19 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %18, i32 0, i32 9
  %20 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @snmp_lookup_oidlist(i32* %19, %struct.snmp_object* %20, i8* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %99

25:                                               ; preds = %17
  %26 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %27 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %26, i32 0, i32 8
  %28 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @snmp_lookup_oidlist(i32* %27, %struct.snmp_object* %28, i8* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %99

33:                                               ; preds = %25
  %34 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %35 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %34, i32 0, i32 7
  %36 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @snmp_lookup_oidlist(i32* %35, %struct.snmp_object* %36, i8* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %99

41:                                               ; preds = %33
  %42 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %43 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %42, i32 0, i32 6
  %44 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @snmp_lookup_oidlist(i32* %43, %struct.snmp_object* %44, i8* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %99

49:                                               ; preds = %41
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %50, i32 0, i32 5
  %52 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @snmp_lookup_oidlist(i32* %51, %struct.snmp_object* %52, i8* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %59 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %58, i32 0, i32 4
  %60 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @snmp_lookup_oidlist(i32* %59, %struct.snmp_object* %60, i8* %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %99

65:                                               ; preds = %57
  %66 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %67 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %66, i32 0, i32 3
  %68 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @snmp_lookup_oidlist(i32* %67, %struct.snmp_object* %68, i8* %69)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %99

73:                                               ; preds = %65
  %74 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %75 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %74, i32 0, i32 2
  %76 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @snmp_lookup_oidlist(i32* %75, %struct.snmp_object* %76, i8* %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %99

81:                                               ; preds = %73
  %82 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %83 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %82, i32 0, i32 1
  %84 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @snmp_lookup_oidlist(i32* %83, %struct.snmp_object* %84, i8* %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %99

89:                                               ; preds = %81
  %90 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %91 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %92 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %91, i32 0, i32 0
  %93 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @snmp_lookup_tablelist(%struct.snmp_toolinfo* %90, i32* %92, %struct.snmp_object* %93, i8* %94)
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %99

98:                                               ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %97, %88, %80, %72, %64, %56, %48, %40, %32, %24, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @snmp_lookup_oidlist(i32*, %struct.snmp_object*, i8*) #1

declare dso_local i64 @snmp_lookup_tablelist(%struct.snmp_toolinfo*, i32*, %struct.snmp_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
