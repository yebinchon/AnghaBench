; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_data = type { i64, i32 }

@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, %struct.krb5_data*)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_data(i32** %0, i64* %1, %struct.krb5_data* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.krb5_data*, align 8
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.krb5_data* %2, %struct.krb5_data** %6, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = call i64 @get_uint32(i32** %8, i64* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.krb5_data*, %struct.krb5_data** %6, align 8
  %13 = getelementptr inbounds %struct.krb5_data, %struct.krb5_data* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @M_GSSAPI, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i32 @malloc(i64 %14, i32 %15, i32 %16)
  %18 = load %struct.krb5_data*, %struct.krb5_data** %6, align 8
  %19 = getelementptr inbounds %struct.krb5_data, %struct.krb5_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.krb5_data*, %struct.krb5_data** %6, align 8
  %31 = getelementptr inbounds %struct.krb5_data, %struct.krb5_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @bcopy(i32* %29, i32 %32, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i32**, i32*** %4, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %35
  store i32* %38, i32** %36, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %39
  store i64 %42, i64* %40, align 8
  ret void
}

declare dso_local i64 @get_uint32(i32**, i64*) #1

declare dso_local i32 @malloc(i64, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
