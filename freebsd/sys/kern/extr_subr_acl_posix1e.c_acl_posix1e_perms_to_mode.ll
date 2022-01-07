; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_perms_to_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_perms_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_entry = type { i32 }

@ACL_EXECUTE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_posix1e_perms_to_mode(%struct.acl_entry* %0, %struct.acl_entry* %1, %struct.acl_entry* %2) #0 {
  %4 = alloca %struct.acl_entry*, align 8
  %5 = alloca %struct.acl_entry*, align 8
  %6 = alloca %struct.acl_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.acl_entry* %0, %struct.acl_entry** %4, align 8
  store %struct.acl_entry* %1, %struct.acl_entry** %5, align 8
  store %struct.acl_entry* %2, %struct.acl_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %9 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACL_EXECUTE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @S_IXUSR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %20 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACL_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @S_IRUSR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.acl_entry*, %struct.acl_entry** %4, align 8
  %31 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACL_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %42 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ACL_EXECUTE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @S_IXGRP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %53 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ACL_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @S_IRGRP, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.acl_entry*, %struct.acl_entry** %5, align 8
  %64 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ACL_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @S_IWGRP, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.acl_entry*, %struct.acl_entry** %6, align 8
  %75 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ACL_EXECUTE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @S_IXOTH, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load %struct.acl_entry*, %struct.acl_entry** %6, align 8
  %86 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ACL_READ, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @S_IROTH, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %84
  %96 = load %struct.acl_entry*, %struct.acl_entry** %6, align 8
  %97 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ACL_WRITE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @S_IWOTH, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
