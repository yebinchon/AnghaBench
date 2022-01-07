; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setresgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setresgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setresgid_args = type { i64, i64, i64 }
%struct.ucred = type { i64, i64, i64* }

@PRIV_CRED_SETRESGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setresgid(%struct.thread* %0, %struct.setresgid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setresgid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setresgid_args* %1, %struct.setresgid_args** %5, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %6, align 8
  %16 = load %struct.setresgid_args*, %struct.setresgid_args** %5, align 8
  %17 = getelementptr inbounds %struct.setresgid_args, %struct.setresgid_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.setresgid_args*, %struct.setresgid_args** %5, align 8
  %20 = getelementptr inbounds %struct.setresgid_args, %struct.setresgid_args* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.setresgid_args*, %struct.setresgid_args** %5, align 8
  %23 = getelementptr inbounds %struct.setresgid_args, %struct.setresgid_args* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @AUDIT_ARG_EGID(i64 %25)
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @AUDIT_ARG_RGID(i64 %27)
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @AUDIT_ARG_SGID(i64 %29)
  %31 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %31, %struct.ucred** %7, align 8
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = call i32 @PROC_LOCK(%struct.proc* %32)
  %34 = load %struct.proc*, %struct.proc** %6, align 8
  %35 = load %struct.ucred*, %struct.ucred** %7, align 8
  %36 = call %struct.ucred* @crcopysafe(%struct.proc* %34, %struct.ucred* %35)
  store %struct.ucred* %36, %struct.ucred** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, -1
  br i1 %38, label %39, label %59

39:                                               ; preds = %2
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.ucred*, %struct.ucred** %8, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.ucred*, %struct.ucred** %8, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.ucred*, %struct.ucred** %8, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %105, label %59

59:                                               ; preds = %51, %45, %39, %2
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ucred*, %struct.ucred** %8, align 8
  %65 = getelementptr inbounds %struct.ucred, %struct.ucred* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.ucred*, %struct.ucred** %8, align 8
  %71 = getelementptr inbounds %struct.ucred, %struct.ucred* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.ucred*, %struct.ucred** %8, align 8
  %77 = getelementptr inbounds %struct.ucred, %struct.ucred* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %105, label %82

82:                                               ; preds = %74, %68, %62, %59
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, -1
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.ucred*, %struct.ucred** %8, align 8
  %88 = getelementptr inbounds %struct.ucred, %struct.ucred* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.ucred*, %struct.ucred** %8, align 8
  %94 = getelementptr inbounds %struct.ucred, %struct.ucred* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.ucred*, %struct.ucred** %8, align 8
  %100 = getelementptr inbounds %struct.ucred, %struct.ucred* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %98, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97, %74, %51
  %106 = load %struct.ucred*, %struct.ucred** %8, align 8
  %107 = load i32, i32* @PRIV_CRED_SETRESGID, align 4
  %108 = call i32 @priv_check_cred(%struct.ucred* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %166

111:                                              ; preds = %105, %97, %91, %85, %82
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, -1
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.ucred*, %struct.ucred** %8, align 8
  %116 = getelementptr inbounds %struct.ucred, %struct.ucred* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.ucred*, %struct.ucred** %7, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @change_egid(%struct.ucred* %123, i64 %124)
  %126 = load %struct.proc*, %struct.proc** %6, align 8
  %127 = call i32 @setsugid(%struct.proc* %126)
  br label %128

128:                                              ; preds = %122, %114, %111
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, -1
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load %struct.ucred*, %struct.ucred** %8, align 8
  %133 = getelementptr inbounds %struct.ucred, %struct.ucred* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.ucred*, %struct.ucred** %7, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @change_rgid(%struct.ucred* %138, i64 %139)
  %141 = load %struct.proc*, %struct.proc** %6, align 8
  %142 = call i32 @setsugid(%struct.proc* %141)
  br label %143

143:                                              ; preds = %137, %131, %128
  %144 = load i64, i64* %11, align 8
  %145 = icmp ne i64 %144, -1
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load %struct.ucred*, %struct.ucred** %8, align 8
  %148 = getelementptr inbounds %struct.ucred, %struct.ucred* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.ucred*, %struct.ucred** %7, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @change_svgid(%struct.ucred* %153, i64 %154)
  %156 = load %struct.proc*, %struct.proc** %6, align 8
  %157 = call i32 @setsugid(%struct.proc* %156)
  br label %158

158:                                              ; preds = %152, %146, %143
  %159 = load %struct.proc*, %struct.proc** %6, align 8
  %160 = load %struct.ucred*, %struct.ucred** %7, align 8
  %161 = call i32 @proc_set_cred(%struct.proc* %159, %struct.ucred* %160)
  %162 = load %struct.proc*, %struct.proc** %6, align 8
  %163 = call i32 @PROC_UNLOCK(%struct.proc* %162)
  %164 = load %struct.ucred*, %struct.ucred** %8, align 8
  %165 = call i32 @crfree(%struct.ucred* %164)
  store i32 0, i32* %3, align 4
  br label %172

166:                                              ; preds = %110
  %167 = load %struct.proc*, %struct.proc** %6, align 8
  %168 = call i32 @PROC_UNLOCK(%struct.proc* %167)
  %169 = load %struct.ucred*, %struct.ucred** %7, align 8
  %170 = call i32 @crfree(%struct.ucred* %169)
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %158
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @AUDIT_ARG_EGID(i64) #1

declare dso_local i32 @AUDIT_ARG_RGID(i64) #1

declare dso_local i32 @AUDIT_ARG_SGID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_egid(%struct.ucred*, i64) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @change_rgid(%struct.ucred*, i64) #1

declare dso_local i32 @change_svgid(%struct.ucred*, i64) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
