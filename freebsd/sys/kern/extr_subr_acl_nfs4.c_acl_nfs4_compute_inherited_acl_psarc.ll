; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_compute_inherited_acl_psarc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c_acl_nfs4_compute_inherited_acl_psarc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"aclp->acl_cnt == 0\00", align 1
@ACL_READ_ACL = common dso_local global i32 0, align 4
@ACL_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACL_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACL_WRITE_ACL = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACL_READ_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ACL_WRITE_DATA = common dso_local global i32 0, align 4
@ACL_APPEND_DATA = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_ALLOW = common dso_local global i32 0, align 4
@ACL_ENTRY_TYPE_DENY = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@ACL_EVERYONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acl*, %struct.acl*, i32, i32, i32)* @acl_nfs4_compute_inherited_acl_psarc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_nfs4_compute_inherited_acl_psarc(%struct.acl* %0, %struct.acl* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.acl*, align 8
  %7 = alloca %struct.acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %6, align 8
  store %struct.acl* %1, %struct.acl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.acl*, %struct.acl** %7, align 8
  %18 = getelementptr inbounds %struct.acl, %struct.acl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ACL_READ_ACL, align 4
  %24 = load i32, i32* @ACL_READ_ATTRIBUTES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ACL_READ_NAMED_ATTRS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ACL_SYNCHRONIZE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %16, align 4
  store i32 %29, i32* %15, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @ACL_WRITE_ACL, align 4
  %31 = load i32, i32* @ACL_WRITE_OWNER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ACL_WRITE_ATTRIBUTES, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ACL_WRITE_NAMED_ATTRS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @S_IRUSR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load i32, i32* @ACL_READ_DATA, align 4
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %5
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @S_IWUSR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @ACL_WRITE_DATA, align 4
  %54 = load i32, i32* @ACL_APPEND_DATA, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @S_IXUSR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @ACL_EXECUTE, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @S_IRGRP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @ACL_READ_DATA, align 4
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @S_IWGRP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @ACL_WRITE_DATA, align 4
  %83 = load i32, i32* @ACL_APPEND_DATA, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @S_IXGRP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @ACL_EXECUTE, align 4
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @S_IROTH, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @ACL_READ_DATA, align 4
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @S_IWOTH, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* @ACL_WRITE_DATA, align 4
  %112 = load i32, i32* @ACL_APPEND_DATA, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %16, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @S_IXOTH, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @ACL_EXECUTE, align 4
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %14, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %125
  %143 = load %struct.acl*, %struct.acl** %7, align 8
  %144 = load i32, i32* @ACL_USER_OBJ, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @ACL_ENTRY_TYPE_ALLOW, align 4
  %147 = call i32 @_acl_append(%struct.acl* %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %125
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.acl*, %struct.acl** %7, align 8
  %153 = load i32, i32* @ACL_USER_OBJ, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @ACL_ENTRY_TYPE_DENY, align 4
  %156 = call i32 @_acl_append(%struct.acl* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.acl*, %struct.acl** %7, align 8
  %162 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @ACL_ENTRY_TYPE_DENY, align 4
  %165 = call i32 @_acl_append(%struct.acl* %161, i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %157
  %167 = load %struct.acl*, %struct.acl** %6, align 8
  %168 = icmp ne %struct.acl* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.acl*, %struct.acl** %6, align 8
  %171 = load %struct.acl*, %struct.acl** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @acl_nfs4_inherit_entries(%struct.acl* %170, %struct.acl* %171, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %169, %166
  %177 = load %struct.acl*, %struct.acl** %7, align 8
  %178 = load i32, i32* @ACL_USER_OBJ, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @ACL_ENTRY_TYPE_ALLOW, align 4
  %181 = call i32 @_acl_append(%struct.acl* %177, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.acl*, %struct.acl** %7, align 8
  %183 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @ACL_ENTRY_TYPE_ALLOW, align 4
  %186 = call i32 @_acl_append(%struct.acl* %182, i32 %183, i32 %184, i32 %185)
  %187 = load %struct.acl*, %struct.acl** %7, align 8
  %188 = load i32, i32* @ACL_EVERYONE, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @ACL_ENTRY_TYPE_ALLOW, align 4
  %191 = call i32 @_acl_append(%struct.acl* %187, i32 %188, i32 %189, i32 %190)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @_acl_append(%struct.acl*, i32, i32, i32) #1

declare dso_local i32 @acl_nfs4_inherit_entries(%struct.acl*, %struct.acl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
