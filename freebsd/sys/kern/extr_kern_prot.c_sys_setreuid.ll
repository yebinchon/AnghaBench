; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setreuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setreuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setreuid_args = type { i64, i64 }
%struct.ucred = type { i64, i64, i64 }
%struct.uidinfo = type { i32 }

@PRIV_CRED_SETREUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setreuid(%struct.thread* %0, %struct.setreuid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setreuid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uidinfo*, align 8
  %12 = alloca %struct.uidinfo*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setreuid_args* %1, %struct.setreuid_args** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %6, align 8
  %17 = load %struct.setreuid_args*, %struct.setreuid_args** %5, align 8
  %18 = getelementptr inbounds %struct.setreuid_args, %struct.setreuid_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.setreuid_args*, %struct.setreuid_args** %5, align 8
  %21 = getelementptr inbounds %struct.setreuid_args, %struct.setreuid_args* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @AUDIT_ARG_EUID(i64 %23)
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @AUDIT_ARG_RUID(i64 %25)
  %27 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %27, %struct.ucred** %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.uidinfo* @uifind(i64 %28)
  store %struct.uidinfo* %29, %struct.uidinfo** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call %struct.uidinfo* @uifind(i64 %30)
  store %struct.uidinfo* %31, %struct.uidinfo** %12, align 8
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = call i32 @PROC_LOCK(%struct.proc* %32)
  %34 = load %struct.proc*, %struct.proc** %6, align 8
  %35 = load %struct.ucred*, %struct.ucred** %7, align 8
  %36 = call %struct.ucred* @crcopysafe(%struct.proc* %34, %struct.ucred* %35)
  store %struct.ucred* %36, %struct.ucred** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, -1
  br i1 %38, label %39, label %51

39:                                               ; preds = %2
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.ucred*, %struct.ucred** %8, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.ucred*, %struct.ucred** %8, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %72, label %51

51:                                               ; preds = %45, %39, %2
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, -1
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.ucred*, %struct.ucred** %8, align 8
  %57 = getelementptr inbounds %struct.ucred, %struct.ucred* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.ucred*, %struct.ucred** %8, align 8
  %63 = getelementptr inbounds %struct.ucred, %struct.ucred* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.ucred*, %struct.ucred** %8, align 8
  %69 = getelementptr inbounds %struct.ucred, %struct.ucred* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %45
  %73 = load %struct.ucred*, %struct.ucred** %8, align 8
  %74 = load i32, i32* @PRIV_CRED_SETREUID, align 4
  %75 = call i32 @priv_check_cred(%struct.ucred* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %147

78:                                               ; preds = %72, %66, %60, %54, %51
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, -1
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.ucred*, %struct.ucred** %8, align 8
  %83 = getelementptr inbounds %struct.ucred, %struct.ucred* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.ucred*, %struct.ucred** %7, align 8
  %89 = load %struct.uidinfo*, %struct.uidinfo** %11, align 8
  %90 = call i32 @change_euid(%struct.ucred* %88, %struct.uidinfo* %89)
  %91 = load %struct.proc*, %struct.proc** %6, align 8
  %92 = call i32 @setsugid(%struct.proc* %91)
  br label %93

93:                                               ; preds = %87, %81, %78
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, -1
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.ucred*, %struct.ucred** %8, align 8
  %98 = getelementptr inbounds %struct.ucred, %struct.ucred* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.ucred*, %struct.ucred** %7, align 8
  %104 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %105 = call i32 @change_ruid(%struct.ucred* %103, %struct.uidinfo* %104)
  %106 = load %struct.proc*, %struct.proc** %6, align 8
  %107 = call i32 @setsugid(%struct.proc* %106)
  br label %108

108:                                              ; preds = %102, %96, %93
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, -1
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load %struct.ucred*, %struct.ucred** %7, align 8
  %113 = getelementptr inbounds %struct.ucred, %struct.ucred* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ucred*, %struct.ucred** %7, align 8
  %116 = getelementptr inbounds %struct.ucred, %struct.ucred* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %111, %108
  %120 = load %struct.ucred*, %struct.ucred** %7, align 8
  %121 = getelementptr inbounds %struct.ucred, %struct.ucred* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ucred*, %struct.ucred** %7, align 8
  %124 = getelementptr inbounds %struct.ucred, %struct.ucred* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.ucred*, %struct.ucred** %7, align 8
  %129 = load %struct.ucred*, %struct.ucred** %7, align 8
  %130 = getelementptr inbounds %struct.ucred, %struct.ucred* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @change_svuid(%struct.ucred* %128, i64 %131)
  %133 = load %struct.proc*, %struct.proc** %6, align 8
  %134 = call i32 @setsugid(%struct.proc* %133)
  br label %135

135:                                              ; preds = %127, %119, %111
  %136 = load %struct.proc*, %struct.proc** %6, align 8
  %137 = load %struct.ucred*, %struct.ucred** %7, align 8
  %138 = call i32 @proc_set_cred(%struct.proc* %136, %struct.ucred* %137)
  %139 = load %struct.proc*, %struct.proc** %6, align 8
  %140 = call i32 @PROC_UNLOCK(%struct.proc* %139)
  %141 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %142 = call i32 @uifree(%struct.uidinfo* %141)
  %143 = load %struct.uidinfo*, %struct.uidinfo** %11, align 8
  %144 = call i32 @uifree(%struct.uidinfo* %143)
  %145 = load %struct.ucred*, %struct.ucred** %8, align 8
  %146 = call i32 @crfree(%struct.ucred* %145)
  store i32 0, i32* %3, align 4
  br label %157

147:                                              ; preds = %77
  %148 = load %struct.proc*, %struct.proc** %6, align 8
  %149 = call i32 @PROC_UNLOCK(%struct.proc* %148)
  %150 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %151 = call i32 @uifree(%struct.uidinfo* %150)
  %152 = load %struct.uidinfo*, %struct.uidinfo** %11, align 8
  %153 = call i32 @uifree(%struct.uidinfo* %152)
  %154 = load %struct.ucred*, %struct.ucred** %7, align 8
  %155 = call i32 @crfree(%struct.ucred* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %147, %135
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @AUDIT_ARG_EUID(i64) #1

declare dso_local i32 @AUDIT_ARG_RUID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local %struct.uidinfo* @uifind(i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_euid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @change_ruid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @change_svuid(%struct.ucred*, i64) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @uifree(%struct.uidinfo*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
