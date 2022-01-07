; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setresuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setresuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setresuid_args = type { i64, i64, i64 }
%struct.ucred = type { i64, i64, i64 }
%struct.uidinfo = type { i32 }

@PRIV_CRED_SETRESUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setresuid(%struct.thread* %0, %struct.setresuid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setresuid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.uidinfo*, align 8
  %13 = alloca %struct.uidinfo*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setresuid_args* %1, %struct.setresuid_args** %5, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %6, align 8
  %18 = load %struct.setresuid_args*, %struct.setresuid_args** %5, align 8
  %19 = getelementptr inbounds %struct.setresuid_args, %struct.setresuid_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.setresuid_args*, %struct.setresuid_args** %5, align 8
  %22 = getelementptr inbounds %struct.setresuid_args, %struct.setresuid_args* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.setresuid_args*, %struct.setresuid_args** %5, align 8
  %25 = getelementptr inbounds %struct.setresuid_args, %struct.setresuid_args* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @AUDIT_ARG_EUID(i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @AUDIT_ARG_RUID(i64 %29)
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @AUDIT_ARG_SUID(i64 %31)
  %33 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %33, %struct.ucred** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call %struct.uidinfo* @uifind(i64 %34)
  store %struct.uidinfo* %35, %struct.uidinfo** %12, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call %struct.uidinfo* @uifind(i64 %36)
  store %struct.uidinfo* %37, %struct.uidinfo** %13, align 8
  %38 = load %struct.proc*, %struct.proc** %6, align 8
  %39 = call i32 @PROC_LOCK(%struct.proc* %38)
  %40 = load %struct.proc*, %struct.proc** %6, align 8
  %41 = load %struct.ucred*, %struct.ucred** %7, align 8
  %42 = call %struct.ucred* @crcopysafe(%struct.proc* %40, %struct.ucred* %41)
  store %struct.ucred* %42, %struct.ucred** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, -1
  br i1 %44, label %45, label %63

45:                                               ; preds = %2
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.ucred*, %struct.ucred** %8, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.ucred*, %struct.ucred** %8, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.ucred*, %struct.ucred** %8, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %105, label %63

63:                                               ; preds = %57, %51, %45, %2
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.ucred*, %struct.ucred** %8, align 8
  %69 = getelementptr inbounds %struct.ucred, %struct.ucred* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.ucred*, %struct.ucred** %8, align 8
  %75 = getelementptr inbounds %struct.ucred, %struct.ucred* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.ucred*, %struct.ucred** %8, align 8
  %81 = getelementptr inbounds %struct.ucred, %struct.ucred* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %105, label %84

84:                                               ; preds = %78, %72, %66, %63
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, -1
  br i1 %86, label %87, label %111

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.ucred*, %struct.ucred** %8, align 8
  %90 = getelementptr inbounds %struct.ucred, %struct.ucred* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.ucred*, %struct.ucred** %8, align 8
  %96 = getelementptr inbounds %struct.ucred, %struct.ucred* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.ucred*, %struct.ucred** %8, align 8
  %102 = getelementptr inbounds %struct.ucred, %struct.ucred* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99, %78, %57
  %106 = load %struct.ucred*, %struct.ucred** %8, align 8
  %107 = load i32, i32* @PRIV_CRED_SETRESUID, align 4
  %108 = call i32 @priv_check_cred(%struct.ucred* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %168

111:                                              ; preds = %105, %99, %93, %87, %84
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, -1
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load %struct.ucred*, %struct.ucred** %8, align 8
  %116 = getelementptr inbounds %struct.ucred, %struct.ucred* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.ucred*, %struct.ucred** %7, align 8
  %122 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %123 = call i32 @change_euid(%struct.ucred* %121, %struct.uidinfo* %122)
  %124 = load %struct.proc*, %struct.proc** %6, align 8
  %125 = call i32 @setsugid(%struct.proc* %124)
  br label %126

126:                                              ; preds = %120, %114, %111
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, -1
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.ucred*, %struct.ucred** %8, align 8
  %131 = getelementptr inbounds %struct.ucred, %struct.ucred* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.ucred*, %struct.ucred** %7, align 8
  %137 = load %struct.uidinfo*, %struct.uidinfo** %13, align 8
  %138 = call i32 @change_ruid(%struct.ucred* %136, %struct.uidinfo* %137)
  %139 = load %struct.proc*, %struct.proc** %6, align 8
  %140 = call i32 @setsugid(%struct.proc* %139)
  br label %141

141:                                              ; preds = %135, %129, %126
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, -1
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct.ucred*, %struct.ucred** %8, align 8
  %146 = getelementptr inbounds %struct.ucred, %struct.ucred* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.ucred*, %struct.ucred** %7, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @change_svuid(%struct.ucred* %151, i64 %152)
  %154 = load %struct.proc*, %struct.proc** %6, align 8
  %155 = call i32 @setsugid(%struct.proc* %154)
  br label %156

156:                                              ; preds = %150, %144, %141
  %157 = load %struct.proc*, %struct.proc** %6, align 8
  %158 = load %struct.ucred*, %struct.ucred** %7, align 8
  %159 = call i32 @proc_set_cred(%struct.proc* %157, %struct.ucred* %158)
  %160 = load %struct.proc*, %struct.proc** %6, align 8
  %161 = call i32 @PROC_UNLOCK(%struct.proc* %160)
  %162 = load %struct.uidinfo*, %struct.uidinfo** %13, align 8
  %163 = call i32 @uifree(%struct.uidinfo* %162)
  %164 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %165 = call i32 @uifree(%struct.uidinfo* %164)
  %166 = load %struct.ucred*, %struct.ucred** %8, align 8
  %167 = call i32 @crfree(%struct.ucred* %166)
  store i32 0, i32* %3, align 4
  br label %178

168:                                              ; preds = %110
  %169 = load %struct.proc*, %struct.proc** %6, align 8
  %170 = call i32 @PROC_UNLOCK(%struct.proc* %169)
  %171 = load %struct.uidinfo*, %struct.uidinfo** %13, align 8
  %172 = call i32 @uifree(%struct.uidinfo* %171)
  %173 = load %struct.uidinfo*, %struct.uidinfo** %12, align 8
  %174 = call i32 @uifree(%struct.uidinfo* %173)
  %175 = load %struct.ucred*, %struct.ucred** %7, align 8
  %176 = call i32 @crfree(%struct.ucred* %175)
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %168, %156
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @AUDIT_ARG_EUID(i64) #1

declare dso_local i32 @AUDIT_ARG_RUID(i64) #1

declare dso_local i32 @AUDIT_ARG_SUID(i64) #1

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
