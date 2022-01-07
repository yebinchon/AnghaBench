; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setpgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setpgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i64, i64, i32, %struct.pgrp* }
%struct.pgrp = type { i64, i64 }
%struct.setpgid_args = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@M_PGRP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"setpgid failed and newpgrp is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setpgid(%struct.thread* %0, %struct.setpgid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setpgid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.pgrp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pgrp*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setpgid_args* %1, %struct.setpgid_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %6, align 8
  %14 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %15 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %196

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @M_PGRP, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.pgrp* @malloc(i32 16, i32 %21, i32 %24)
  store %struct.pgrp* %25, %struct.pgrp** %10, align 8
  %26 = call i32 @sx_xlock(i32* @proctree_lock)
  %27 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %28 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %20
  %32 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %33 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.proc*, %struct.proc** %6, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %31
  %40 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %41 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.proc* @pfind(i64 %42)
  store %struct.proc* %43, %struct.proc** %7, align 8
  %44 = icmp eq %struct.proc* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ESRCH, align 4
  store i32 %46, i32* %9, align 4
  br label %177

47:                                               ; preds = %39
  %48 = load %struct.proc*, %struct.proc** %7, align 8
  %49 = call i32 @inferior(%struct.proc* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = call i32 @PROC_UNLOCK(%struct.proc* %52)
  %54 = load i32, i32* @ESRCH, align 4
  store i32 %54, i32* %9, align 4
  br label %177

55:                                               ; preds = %47
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = load %struct.proc*, %struct.proc** %7, align 8
  %58 = call i32 @p_cansee(%struct.thread* %56, %struct.proc* %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.proc*, %struct.proc** %7, align 8
  %62 = call i32 @PROC_UNLOCK(%struct.proc* %61)
  br label %177

63:                                               ; preds = %55
  %64 = load %struct.proc*, %struct.proc** %7, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 3
  %66 = load %struct.pgrp*, %struct.pgrp** %65, align 8
  %67 = icmp eq %struct.pgrp* %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.proc*, %struct.proc** %7, align 8
  %70 = getelementptr inbounds %struct.proc, %struct.proc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.proc*, %struct.proc** %6, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68, %63
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = call i32 @PROC_UNLOCK(%struct.proc* %77)
  %79 = load i32, i32* @EPERM, align 4
  store i32 %79, i32* %9, align 4
  br label %177

80:                                               ; preds = %68
  %81 = load %struct.proc*, %struct.proc** %7, align 8
  %82 = getelementptr inbounds %struct.proc, %struct.proc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @P_EXEC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.proc*, %struct.proc** %7, align 8
  %89 = call i32 @PROC_UNLOCK(%struct.proc* %88)
  %90 = load i32, i32* @EACCES, align 4
  store i32 %90, i32* %9, align 4
  br label %177

91:                                               ; preds = %80
  %92 = load %struct.proc*, %struct.proc** %7, align 8
  %93 = call i32 @PROC_UNLOCK(%struct.proc* %92)
  br label %96

94:                                               ; preds = %31, %20
  %95 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %95, %struct.proc** %7, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load %struct.proc*, %struct.proc** %7, align 8
  %98 = call i64 @SESS_LEADER(%struct.proc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @EPERM, align 4
  store i32 %101, i32* %9, align 4
  br label %177

102:                                              ; preds = %96
  %103 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %104 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.proc*, %struct.proc** %7, align 8
  %109 = getelementptr inbounds %struct.proc, %struct.proc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %112 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %115 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call %struct.pgrp* @pgfind(i64 %116)
  store %struct.pgrp* %117, %struct.pgrp** %8, align 8
  %118 = icmp eq %struct.pgrp* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %113
  %120 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %121 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.proc*, %struct.proc** %7, align 8
  %124 = getelementptr inbounds %struct.proc, %struct.proc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load %struct.proc*, %struct.proc** %7, align 8
  %129 = load %struct.setpgid_args*, %struct.setpgid_args** %5, align 8
  %130 = getelementptr inbounds %struct.setpgid_args, %struct.setpgid_args* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.pgrp*, %struct.pgrp** %10, align 8
  %133 = call i32 @enterpgrp(%struct.proc* %128, i64 %131, %struct.pgrp* %132, i32* null)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store %struct.pgrp* null, %struct.pgrp** %10, align 8
  br label %137

137:                                              ; preds = %136, %127
  br label %140

138:                                              ; preds = %119
  %139 = load i32, i32* @EPERM, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %138, %137
  br label %176

141:                                              ; preds = %113
  %142 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %143 = load %struct.proc*, %struct.proc** %7, align 8
  %144 = getelementptr inbounds %struct.proc, %struct.proc* %143, i32 0, i32 3
  %145 = load %struct.pgrp*, %struct.pgrp** %144, align 8
  %146 = icmp eq %struct.pgrp* %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %149 = call i32 @PGRP_UNLOCK(%struct.pgrp* %148)
  br label %177

150:                                              ; preds = %141
  %151 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %152 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.proc*, %struct.proc** %7, align 8
  %155 = getelementptr inbounds %struct.proc, %struct.proc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %150
  %159 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %160 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.proc*, %struct.proc** %6, align 8
  %163 = getelementptr inbounds %struct.proc, %struct.proc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %168 = call i32 @PGRP_UNLOCK(%struct.pgrp* %167)
  %169 = load i32, i32* @EPERM, align 4
  store i32 %169, i32* %9, align 4
  br label %177

170:                                              ; preds = %158, %150
  %171 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %172 = call i32 @PGRP_UNLOCK(%struct.pgrp* %171)
  %173 = load %struct.proc*, %struct.proc** %7, align 8
  %174 = load %struct.pgrp*, %struct.pgrp** %8, align 8
  %175 = call i32 @enterthispgrp(%struct.proc* %173, %struct.pgrp* %174)
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %170, %140
  br label %177

177:                                              ; preds = %176, %166, %147, %100, %87, %76, %60, %51, %45
  %178 = call i32 @sx_xunlock(i32* @proctree_lock)
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load %struct.pgrp*, %struct.pgrp** %10, align 8
  %183 = icmp ne %struct.pgrp* %182, null
  br label %184

184:                                              ; preds = %181, %177
  %185 = phi i1 [ true, %177 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @KASSERT(i32 %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %188 = load %struct.pgrp*, %struct.pgrp** %10, align 8
  %189 = icmp ne %struct.pgrp* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.pgrp*, %struct.pgrp** %10, align 8
  %192 = load i32, i32* @M_PGRP, align 4
  %193 = call i32 @free(%struct.pgrp* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %184
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %18
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.pgrp* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i32 @inferior(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @p_cansee(%struct.thread*, %struct.proc*) #1

declare dso_local i64 @SESS_LEADER(%struct.proc*) #1

declare dso_local %struct.pgrp* @pgfind(i64) #1

declare dso_local i32 @enterpgrp(%struct.proc*, i64, %struct.pgrp*, i32*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @enterthispgrp(%struct.proc*, %struct.pgrp*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.pgrp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
