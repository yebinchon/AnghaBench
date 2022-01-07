; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.acl_entry* }
%struct.acl_entry = type { i32, i32, i64, i32, i32 }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4
@ACL_NFS4_PERM_BITS = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i64 0, align 8
@ACL_ENTRY_TYPE_DENY = common dso_local global i64 0, align 8
@ACL_FLAGS_BITS = common dso_local global i32 0, align 4
@ACL_ENTRY_SUCCESSFUL_ACCESS = common dso_local global i32 0, align 4
@ACL_ENTRY_FAILED_ACCESS = common dso_local global i32 0, align 4
@ACL_ENTRY_FILE_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_DIRECTORY_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_NO_PROPAGATE_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_INHERIT_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_nfs4_check(%struct.acl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acl_entry*, align 8
  store %struct.acl* %0, %struct.acl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.acl*, %struct.acl** %4, align 8
  %9 = getelementptr inbounds %struct.acl, %struct.acl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.acl*, %struct.acl** %4, align 8
  %15 = getelementptr inbounds %struct.acl, %struct.acl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %126

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %122, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.acl*, %struct.acl** %4, align 8
  %24 = getelementptr inbounds %struct.acl, %struct.acl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %125

27:                                               ; preds = %21
  %28 = load %struct.acl*, %struct.acl** %4, align 8
  %29 = getelementptr inbounds %struct.acl, %struct.acl* %28, i32 0, i32 1
  %30 = load %struct.acl_entry*, %struct.acl_entry** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %30, i64 %32
  store %struct.acl_entry* %33, %struct.acl_entry** %7, align 8
  %34 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %35 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %55 [
    i32 128, label %37
    i32 130, label %37
    i32 132, label %37
    i32 129, label %46
    i32 131, label %46
  ]

37:                                               ; preds = %27, %27, %27
  %38 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %39 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %126

45:                                               ; preds = %37
  br label %57

46:                                               ; preds = %27, %27
  %47 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %48 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %126

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %27
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %126

57:                                               ; preds = %54, %45
  %58 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %59 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ACL_NFS4_PERM_BITS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ACL_NFS4_PERM_BITS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %126

67:                                               ; preds = %57
  %68 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %69 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACL_ENTRY_TYPE_ALLOW, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %75 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACL_ENTRY_TYPE_DENY, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %3, align 4
  br label %126

81:                                               ; preds = %73, %67
  %82 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %83 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ACL_FLAGS_BITS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ACL_FLAGS_BITS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %3, align 4
  br label %126

91:                                               ; preds = %81
  %92 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %93 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ACL_ENTRY_SUCCESSFUL_ACCESS, align 4
  %96 = load i32, i32* @ACL_ENTRY_FAILED_ACCESS, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %3, align 4
  br label %126

102:                                              ; preds = %91
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = load %struct.acl_entry*, %struct.acl_entry** %7, align 8
  %107 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %110 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %108, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %3, align 4
  br label %126

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %21

125:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %118, %100, %89, %79, %65, %55, %52, %43, %18
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
