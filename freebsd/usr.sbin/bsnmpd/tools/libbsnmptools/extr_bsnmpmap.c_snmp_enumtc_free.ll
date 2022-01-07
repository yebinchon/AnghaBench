; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_type = type { i64, %struct.enum_type* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_enumtc_free(%struct.enum_type* %0) #0 {
  %2 = alloca %struct.enum_type*, align 8
  store %struct.enum_type* %0, %struct.enum_type** %2, align 8
  %3 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  %4 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %3, i32 0, i32 1
  %5 = load %struct.enum_type*, %struct.enum_type** %4, align 8
  %6 = icmp ne %struct.enum_type* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  %9 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %8, i32 0, i32 1
  %10 = load %struct.enum_type*, %struct.enum_type** %9, align 8
  %11 = call i32 @free(%struct.enum_type* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  %14 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  %19 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @enum_pairs_free(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  %24 = call i32 @free(%struct.enum_type* %23)
  ret void
}

declare dso_local i32 @free(%struct.enum_type*) #1

declare dso_local i32 @enum_pairs_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
