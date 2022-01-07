; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_leafstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_lookup_leafstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.snmp_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unknown syntax - %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_lookup_leafstring(%struct.snmp_toolinfo* %0, %struct.snmp_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store %struct.snmp_object* %1, %struct.snmp_object** %5, align 8
  %6 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %7 = icmp eq %struct.snmp_toolinfo* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %15 = icmp eq %struct.snmp_object* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %8, %2
  store i32 -1, i32* %3, align 4
  br label %73

17:                                               ; preds = %13
  %18 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %19 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %66 [
    i32 134, label %22
    i32 130, label %27
    i32 129, label %32
    i32 133, label %37
    i32 138, label %42
    i32 135, label %47
    i32 128, label %52
    i32 137, label %57
    i32 131, label %62
    i32 132, label %62
    i32 136, label %62
  ]

22:                                               ; preds = %17
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %24 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %23, i32 0, i32 7
  %25 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %26 = call i32 @snmp_lookup_leaf(i32* %24, %struct.snmp_object* %25)
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %17
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %29 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %28, i32 0, i32 6
  %30 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %31 = call i32 @snmp_lookup_leaf(i32* %29, %struct.snmp_object* %30)
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %17
  %33 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %33, i32 0, i32 5
  %35 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %36 = call i32 @snmp_lookup_leaf(i32* %34, %struct.snmp_object* %35)
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %17
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %38, i32 0, i32 4
  %40 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %41 = call i32 @snmp_lookup_leaf(i32* %39, %struct.snmp_object* %40)
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %17
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %44 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %43, i32 0, i32 3
  %45 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %46 = call i32 @snmp_lookup_leaf(i32* %44, %struct.snmp_object* %45)
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %17
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %49 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %48, i32 0, i32 2
  %50 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %51 = call i32 @snmp_lookup_leaf(i32* %49, %struct.snmp_object* %50)
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %17
  %53 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %54 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %53, i32 0, i32 1
  %55 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %56 = call i32 @snmp_lookup_leaf(i32* %54, %struct.snmp_object* %55)
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %17
  %58 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %59 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %58, i32 0, i32 0
  %60 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %61 = call i32 @snmp_lookup_leaf(i32* %59, %struct.snmp_object* %60)
  store i32 %61, i32* %3, align 4
  br label %73

62:                                               ; preds = %17, %17, %17
  %63 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %64 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %65 = call i32 @snmp_lookup_allstring(%struct.snmp_toolinfo* %63, %struct.snmp_object* %64)
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %17
  %67 = load %struct.snmp_object*, %struct.snmp_object** %5, align 8
  %68 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %62, %57, %52, %47, %42, %37, %32, %27, %22, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snmp_lookup_leaf(i32*, %struct.snmp_object*) #1

declare dso_local i32 @snmp_lookup_allstring(%struct.snmp_toolinfo*, %struct.snmp_object*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
