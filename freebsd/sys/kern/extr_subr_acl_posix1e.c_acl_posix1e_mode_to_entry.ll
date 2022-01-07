; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_mode_to_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_mode_to_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_entry = type { i32, i8*, i64, i64, i32 }

@ACL_UNDEFINED_ID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"acl_posix1e_mode_to_entry: invalid tag (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acl_posix1e_mode_to_entry(%struct.acl_entry* noalias sret %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 %4, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @acl_posix1e_mode_to_perm(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %28 [
    i32 128, label %19
    i32 130, label %22
    i32 129, label %25
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  br label %33

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  br label %33

25:                                               ; preds = %5
  %26 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %27 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  br label %33

28:                                               ; preds = %5
  %29 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %30 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %0, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %25, %22, %19
  ret void
}

declare dso_local i32 @acl_posix1e_mode_to_perm(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
