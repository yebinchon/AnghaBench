; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_create_empty_oid_set.c_gss_create_empty_oid_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_create_empty_oid_set.c_gss_create_empty_oid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@GSS_C_NO_OID_SET = common dso_local global %struct.TYPE_5__* null, align 8
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_create_empty_oid_set(i64* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %4, align 8
  %6 = load i64*, i64** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_C_NO_OID_SET, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %8, align 8
  %9 = load i32, i32* @M_GSSAPI, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call %struct.TYPE_5__* @malloc(i32 4, i32 %9, i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %17, align 8
  %18 = load i64, i64* @GSS_S_COMPLETE, align 8
  ret i64 %18
}

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
