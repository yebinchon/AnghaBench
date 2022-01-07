; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_acl_to_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_acl_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"acl_posix1e_acl_to_mode: bad ae_tag\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"acl_posix1e_acl_to_mode: missing base ae_tags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_posix1e_acl_to_mode(%struct.acl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acl*, align 8
  %4 = alloca %struct.acl_entry*, align 8
  %5 = alloca %struct.acl_entry*, align 8
  %6 = alloca %struct.acl_entry*, align 8
  %7 = alloca %struct.acl_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %3, align 8
  store %struct.acl_entry* null, %struct.acl_entry** %4, align 8
  store %struct.acl_entry* null, %struct.acl_entry** %7, align 8
  store %struct.acl_entry* null, %struct.acl_entry** %6, align 8
  store %struct.acl_entry* null, %struct.acl_entry** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.acl*, %struct.acl** %3, align 8
  %12 = getelementptr inbounds %struct.acl, %struct.acl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = load %struct.acl*, %struct.acl** %3, align 8
  %17 = getelementptr inbounds %struct.acl, %struct.acl* %16, i32 0, i32 1
  %18 = load %struct.acl_entry*, %struct.acl_entry** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %18, i64 %20
  %22 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %53 [
    i32 128, label %24
    i32 132, label %31
    i32 130, label %38
    i32 131, label %45
    i32 129, label %52
    i32 133, label %52
  ]

24:                                               ; preds = %15
  %25 = load %struct.acl*, %struct.acl** %3, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 1
  %27 = load %struct.acl_entry*, %struct.acl_entry** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %27, i64 %29
  store %struct.acl_entry* %30, %struct.acl_entry** %5, align 8
  br label %55

31:                                               ; preds = %15
  %32 = load %struct.acl*, %struct.acl** %3, align 8
  %33 = getelementptr inbounds %struct.acl, %struct.acl* %32, i32 0, i32 1
  %34 = load %struct.acl_entry*, %struct.acl_entry** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %34, i64 %36
  store %struct.acl_entry* %37, %struct.acl_entry** %6, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.acl*, %struct.acl** %3, align 8
  %40 = getelementptr inbounds %struct.acl, %struct.acl* %39, i32 0, i32 1
  %41 = load %struct.acl_entry*, %struct.acl_entry** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %41, i64 %43
  store %struct.acl_entry* %44, %struct.acl_entry** %7, align 8
  br label %55

45:                                               ; preds = %15
  %46 = load %struct.acl*, %struct.acl** %3, align 8
  %47 = getelementptr inbounds %struct.acl, %struct.acl* %46, i32 0, i32 1
  %48 = load %struct.acl_entry*, %struct.acl_entry** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %48, i64 %50
  store %struct.acl_entry* %51, %struct.acl_entry** %4, align 8
  br label %55

52:                                               ; preds = %15, %15
  br label %55

53:                                               ; preds = %15
  %54 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %52, %45, %38, %31, %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %9

59:                                               ; preds = %9
  %60 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %61 = icmp eq %struct.acl_entry* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.acl_entry*, %struct.acl_entry** %6, align 8
  %64 = icmp eq %struct.acl_entry* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %67 = icmp eq %struct.acl_entry* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62, %59
  %69 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %72 = icmp ne %struct.acl_entry* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %75 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %76 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %77 = call i32 @acl_posix1e_perms_to_mode(%struct.acl_entry* %74, %struct.acl_entry* %75, %struct.acl_entry* %76)
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %80 = load %struct.acl_entry*, %struct.acl_entry** %6, align 8
  %81 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %82 = call i32 @acl_posix1e_perms_to_mode(%struct.acl_entry* %79, %struct.acl_entry* %80, %struct.acl_entry* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @acl_posix1e_perms_to_mode(%struct.acl_entry*, %struct.acl_entry*, %struct.acl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
