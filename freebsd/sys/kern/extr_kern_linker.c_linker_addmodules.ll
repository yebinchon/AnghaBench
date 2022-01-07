; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_addmodules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_addmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_metadata = type { i64, i8*, i64 }
%struct.mod_version = type { i32 }

@MDT_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"module %s already present!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mod_metadata**, %struct.mod_metadata**, i32)* @linker_addmodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linker_addmodules(i32 %0, %struct.mod_metadata** %1, %struct.mod_metadata** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mod_metadata**, align 8
  %7 = alloca %struct.mod_metadata**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mod_metadata*, align 8
  %10 = alloca %struct.mod_metadata**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mod_metadata** %1, %struct.mod_metadata*** %6, align 8
  store %struct.mod_metadata** %2, %struct.mod_metadata*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  store %struct.mod_metadata** %13, %struct.mod_metadata*** %10, align 8
  br label %14

14:                                               ; preds = %49, %4
  %15 = load %struct.mod_metadata**, %struct.mod_metadata*** %10, align 8
  %16 = load %struct.mod_metadata**, %struct.mod_metadata*** %7, align 8
  %17 = icmp ult %struct.mod_metadata** %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.mod_metadata**, %struct.mod_metadata*** %10, align 8
  %20 = load %struct.mod_metadata*, %struct.mod_metadata** %19, align 8
  store %struct.mod_metadata* %20, %struct.mod_metadata** %9, align 8
  %21 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %22 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MDT_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %29 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.mod_metadata*, %struct.mod_metadata** %9, align 8
  %32 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.mod_version*
  %35 = getelementptr inbounds %struct.mod_version, %struct.mod_version* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32* @modlist_lookup(i8* %37, i32 %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %49

44:                                               ; preds = %27
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @modlist_newmodule(i8* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %41, %26
  %50 = load %struct.mod_metadata**, %struct.mod_metadata*** %10, align 8
  %51 = getelementptr inbounds %struct.mod_metadata*, %struct.mod_metadata** %50, i32 1
  store %struct.mod_metadata** %51, %struct.mod_metadata*** %10, align 8
  br label %14

52:                                               ; preds = %14
  ret void
}

declare dso_local i32* @modlist_lookup(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @modlist_newmodule(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
