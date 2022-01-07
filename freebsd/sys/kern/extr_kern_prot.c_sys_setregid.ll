; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setregid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setregid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setregid_args = type { i64, i64 }
%struct.ucred = type { i64, i64, i64* }

@PRIV_CRED_SETREGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setregid(%struct.thread* %0, %struct.setregid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setregid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setregid_args* %1, %struct.setregid_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %6, align 8
  %15 = load %struct.setregid_args*, %struct.setregid_args** %5, align 8
  %16 = getelementptr inbounds %struct.setregid_args, %struct.setregid_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.setregid_args*, %struct.setregid_args** %5, align 8
  %19 = getelementptr inbounds %struct.setregid_args, %struct.setregid_args* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @AUDIT_ARG_EGID(i64 %21)
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @AUDIT_ARG_RGID(i64 %23)
  %25 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %25, %struct.ucred** %7, align 8
  %26 = load %struct.proc*, %struct.proc** %6, align 8
  %27 = call i32 @PROC_LOCK(%struct.proc* %26)
  %28 = load %struct.proc*, %struct.proc** %6, align 8
  %29 = load %struct.ucred*, %struct.ucred** %7, align 8
  %30 = call %struct.ucred* @crcopysafe(%struct.proc* %28, %struct.ucred* %29)
  store %struct.ucred* %30, %struct.ucred** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.ucred*, %struct.ucred** %8, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.ucred*, %struct.ucred** %8, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %68, label %45

45:                                               ; preds = %39, %33, %2
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, -1
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.ucred*, %struct.ucred** %8, align 8
  %51 = getelementptr inbounds %struct.ucred, %struct.ucred* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.ucred*, %struct.ucred** %8, align 8
  %59 = getelementptr inbounds %struct.ucred, %struct.ucred* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ucred*, %struct.ucred** %8, align 8
  %65 = getelementptr inbounds %struct.ucred, %struct.ucred* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %39
  %69 = load %struct.ucred*, %struct.ucred** %8, align 8
  %70 = load i32, i32* @PRIV_CRED_SETREGID, align 4
  %71 = call i32 @priv_check_cred(%struct.ucred* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %147

74:                                               ; preds = %68, %62, %56, %48, %45
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, -1
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.ucred*, %struct.ucred** %8, align 8
  %79 = getelementptr inbounds %struct.ucred, %struct.ucred* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.ucred*, %struct.ucred** %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @change_egid(%struct.ucred* %86, i64 %87)
  %89 = load %struct.proc*, %struct.proc** %6, align 8
  %90 = call i32 @setsugid(%struct.proc* %89)
  br label %91

91:                                               ; preds = %85, %77, %74
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %92, -1
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.ucred*, %struct.ucred** %8, align 8
  %96 = getelementptr inbounds %struct.ucred, %struct.ucred* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.ucred*, %struct.ucred** %7, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @change_rgid(%struct.ucred* %101, i64 %102)
  %104 = load %struct.proc*, %struct.proc** %6, align 8
  %105 = call i32 @setsugid(%struct.proc* %104)
  br label %106

106:                                              ; preds = %100, %94, %91
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, -1
  br i1 %108, label %119, label %109

109:                                              ; preds = %106
  %110 = load %struct.ucred*, %struct.ucred** %7, align 8
  %111 = getelementptr inbounds %struct.ucred, %struct.ucred* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ucred*, %struct.ucred** %7, align 8
  %116 = getelementptr inbounds %struct.ucred, %struct.ucred* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %109, %106
  %120 = load %struct.ucred*, %struct.ucred** %7, align 8
  %121 = getelementptr inbounds %struct.ucred, %struct.ucred* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ucred*, %struct.ucred** %7, align 8
  %124 = getelementptr inbounds %struct.ucred, %struct.ucred* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %122, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = load %struct.ucred*, %struct.ucred** %7, align 8
  %131 = load %struct.ucred*, %struct.ucred** %7, align 8
  %132 = getelementptr inbounds %struct.ucred, %struct.ucred* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @change_svgid(%struct.ucred* %130, i64 %135)
  %137 = load %struct.proc*, %struct.proc** %6, align 8
  %138 = call i32 @setsugid(%struct.proc* %137)
  br label %139

139:                                              ; preds = %129, %119, %109
  %140 = load %struct.proc*, %struct.proc** %6, align 8
  %141 = load %struct.ucred*, %struct.ucred** %7, align 8
  %142 = call i32 @proc_set_cred(%struct.proc* %140, %struct.ucred* %141)
  %143 = load %struct.proc*, %struct.proc** %6, align 8
  %144 = call i32 @PROC_UNLOCK(%struct.proc* %143)
  %145 = load %struct.ucred*, %struct.ucred** %8, align 8
  %146 = call i32 @crfree(%struct.ucred* %145)
  store i32 0, i32* %3, align 4
  br label %153

147:                                              ; preds = %73
  %148 = load %struct.proc*, %struct.proc** %6, align 8
  %149 = call i32 @PROC_UNLOCK(%struct.proc* %148)
  %150 = load %struct.ucred*, %struct.ucred** %7, align 8
  %151 = call i32 @crfree(%struct.ucred* %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %139
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @AUDIT_ARG_EGID(i64) #1

declare dso_local i32 @AUDIT_ARG_RGID(i64) #1

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
