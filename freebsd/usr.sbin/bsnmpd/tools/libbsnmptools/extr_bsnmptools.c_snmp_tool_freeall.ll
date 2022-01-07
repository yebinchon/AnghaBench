; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_tool_freeall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_tool_freeall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.snmp_toolinfo = type { i32* }

@snmp_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_tool_freeall(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca %struct.snmp_toolinfo*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %2, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), align 8
  %7 = call i32 @free(i32* %6)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %13 = call i32 @free(i32* %12)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %16 = call i32 @snmp_mapping_free(%struct.snmp_toolinfo* %15)
  %17 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %18 = call i32 @free_filelist(%struct.snmp_toolinfo* %17)
  %19 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %20 = call i32 @snmp_object_freeall(%struct.snmp_toolinfo* %19)
  %21 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %22 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %27 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  %30 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %31 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @snmp_mapping_free(%struct.snmp_toolinfo*) #1

declare dso_local i32 @free_filelist(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_object_freeall(%struct.snmp_toolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
