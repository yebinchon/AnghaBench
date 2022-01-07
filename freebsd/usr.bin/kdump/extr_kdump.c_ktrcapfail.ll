; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrcapfail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrcapfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktr_cap_fail = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"operation requires \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c", descriptor holds \00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"attempt to increase capabilities from \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"disallowed system call\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"restricted VFS lookup\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown capability failure: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrcapfail(%struct.ktr_cap_fail* %0) #0 {
  %2 = alloca %struct.ktr_cap_fail*, align 8
  store %struct.ktr_cap_fail* %0, %struct.ktr_cap_fail** %2, align 8
  %3 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %4 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %32 [
    i32 129, label %6
    i32 131, label %17
    i32 128, label %28
    i32 130, label %30
  ]

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %10 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %9, i32 0, i32 2
  %11 = call i32 @sysdecode_cap_rights(i32 %8, i32* %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %15 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %14, i32 0, i32 1
  %16 = call i32 @sysdecode_cap_rights(i32 %13, i32* %15)
  br label %43

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %21 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %20, i32 0, i32 1
  %22 = call i32 @sysdecode_cap_rights(i32 %19, i32* %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @stdout, align 4
  %25 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %26 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %25, i32 0, i32 2
  %27 = call i32 @sysdecode_cap_rights(i32 %24, i32* %26)
  br label %43

28:                                               ; preds = %1
  %29 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %43

30:                                               ; preds = %1
  %31 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %43

32:                                               ; preds = %1
  %33 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @stdout, align 4
  %35 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %36 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %35, i32 0, i32 2
  %37 = call i32 @sysdecode_cap_rights(i32 %34, i32* %36)
  %38 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = load %struct.ktr_cap_fail*, %struct.ktr_cap_fail** %2, align 8
  %41 = getelementptr inbounds %struct.ktr_cap_fail, %struct.ktr_cap_fail* %40, i32 0, i32 1
  %42 = call i32 @sysdecode_cap_rights(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %32, %30, %28, %17, %6
  %44 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sysdecode_cap_rights(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
