; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_raw_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_raw_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_raw_obj = type { i32, i64*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8* }

@ecore_raw_check_pending = common dso_local global i32 0, align 4
@ecore_raw_clear_pending = common dso_local global i32 0, align 4
@ecore_raw_set_pending = common dso_local global i32 0, align 4
@ecore_raw_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_raw_obj*, i8*, i32, i8*, i8*, i32, i32, i64*, i32)* @ecore_init_raw_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_raw_obj(%struct.ecore_raw_obj* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i64* %7, i32 %8) #0 {
  %10 = alloca %struct.ecore_raw_obj*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.ecore_raw_obj* %0, %struct.ecore_raw_obj** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i8*, i8** %13, align 8
  %20 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %21 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %20, i32 0, i32 11
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %24 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %27 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %26, i32 0, i32 9
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %30 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %33 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %36 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64*, i64** %17, align 8
  %38 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %39 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %38, i32 0, i32 1
  store i64* %37, i64** %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %42 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ecore_raw_check_pending, align 4
  %44 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %45 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ecore_raw_clear_pending, align 4
  %47 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %48 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ecore_raw_set_pending, align 4
  %50 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %51 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ecore_raw_wait, align 4
  %53 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %54 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
