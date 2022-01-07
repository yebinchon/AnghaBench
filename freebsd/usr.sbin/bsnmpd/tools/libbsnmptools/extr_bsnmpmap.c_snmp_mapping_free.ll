; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_mapping_free(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_toolinfo*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  %4 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %5 = icmp eq %struct.snmp_toolinfo* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %8 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 -1, i32* %2, align 4
  br label %53

12:                                               ; preds = %6
  %13 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %14 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %13, i32 0, i32 12
  %15 = call i32 @snmp_mapping_listfree(i32* %14)
  %16 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %17 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %16, i32 0, i32 11
  %18 = call i32 @snmp_mapping_listfree(i32* %17)
  %19 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %20 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %19, i32 0, i32 10
  %21 = call i32 @snmp_mapping_listfree(i32* %20)
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %23 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %22, i32 0, i32 9
  %24 = call i32 @snmp_mapping_listfree(i32* %23)
  %25 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %26 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %25, i32 0, i32 8
  %27 = call i32 @snmp_mapping_listfree(i32* %26)
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %29 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %28, i32 0, i32 7
  %30 = call i32 @snmp_mapping_listfree(i32* %29)
  %31 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %32 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %31, i32 0, i32 6
  %33 = call i32 @snmp_mapping_listfree(i32* %32)
  %34 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %35 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %34, i32 0, i32 5
  %36 = call i32 @snmp_mapping_listfree(i32* %35)
  %37 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %38 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %37, i32 0, i32 4
  %39 = call i32 @snmp_mapping_listfree(i32* %38)
  %40 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %41 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %40, i32 0, i32 3
  %42 = call i32 @snmp_mapping_listfree(i32* %41)
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %44 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %43, i32 0, i32 2
  %45 = call i32 @snmp_mapping_table_listfree(i32* %44)
  %46 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %47 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %46, i32 0, i32 1
  %48 = call i32 @snmp_enumtc_listfree(i32* %47)
  %49 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %50 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @free(i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %12, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @snmp_mapping_listfree(i32*) #1

declare dso_local i32 @snmp_mapping_table_listfree(i32*) #1

declare dso_local i32 @snmp_enumtc_listfree(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
