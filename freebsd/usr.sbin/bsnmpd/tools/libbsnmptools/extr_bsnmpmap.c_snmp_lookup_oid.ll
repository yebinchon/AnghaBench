; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unknown syntax - %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_lookup_oid(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_object*, align 8
  %7 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %9 = icmp eq %struct.snmp_toolinfo* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %12 = icmp eq %struct.snmp_object* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 -1, i32* %4, align 4
  br label %80

14:                                               ; preds = %10
  %15 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %16 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %73 [
    i32 133, label %19
    i32 130, label %25
    i32 129, label %31
    i32 132, label %37
    i32 136, label %43
    i32 134, label %49
    i32 128, label %55
    i32 135, label %61
    i32 131, label %67
  ]

19:                                               ; preds = %14
  %20 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %21 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %20, i32 0, i32 8
  %22 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @snmp_lookup_oidlist(i32* %21, %struct.snmp_object* %22, i8* %23)
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %14
  %26 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %27 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %26, i32 0, i32 7
  %28 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @snmp_lookup_oidlist(i32* %27, %struct.snmp_object* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %14
  %32 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %33 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %32, i32 0, i32 6
  %34 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @snmp_lookup_oidlist(i32* %33, %struct.snmp_object* %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %14
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %38, i32 0, i32 5
  %40 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @snmp_lookup_oidlist(i32* %39, %struct.snmp_object* %40, i8* %41)
  store i32 %42, i32* %4, align 4
  br label %80

43:                                               ; preds = %14
  %44 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %45 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %44, i32 0, i32 4
  %46 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @snmp_lookup_oidlist(i32* %45, %struct.snmp_object* %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %14
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %50, i32 0, i32 3
  %52 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @snmp_lookup_oidlist(i32* %51, %struct.snmp_object* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %14
  %56 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %57 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %56, i32 0, i32 2
  %58 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @snmp_lookup_oidlist(i32* %57, %struct.snmp_object* %58, i8* %59)
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %14
  %62 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %63 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %62, i32 0, i32 1
  %64 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @snmp_lookup_oidlist(i32* %63, %struct.snmp_object* %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %14
  %68 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %69 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %68, i32 0, i32 0
  %70 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @snmp_lookup_oidlist(i32* %69, %struct.snmp_object* %70, i8* %71)
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %14
  %74 = load %struct.snmp_object*, %struct.snmp_object** %6, align 8
  %75 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @snmp_lookup_oidlist(i32*, %struct.snmp_object*, i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
