; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.syscall_args, %struct.trapframe*, %struct.proc* }
%struct.syscall_args = type { i64, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.trapframe = type { i64* }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@FIRSTARG = common dso_local global i32 0, align 4
@NARGREG = common dso_local global i32 0, align 4
@SYS_syscall = common dso_local global i64 0, align 8
@SYS___syscall = common dso_local global i64 0, align 8
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 3
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %3, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load %struct.trapframe*, %struct.trapframe** %15, align 8
  store %struct.trapframe* %16, %struct.trapframe** %4, align 8
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  store %struct.syscall_args* %18, %struct.syscall_args** %5, align 8
  %19 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %25 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @FIRSTARG, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = ptrtoint i64* %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* @NARGREG, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %35 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SYS_syscall, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load i64, i64* %6, align 8
  %41 = inttoptr i64 %40 to i8**
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %45 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 8
  store i64 %47, i64* %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %87

50:                                               ; preds = %1
  %51 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %52 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SYS___syscall, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = load %struct.proc*, %struct.proc** %3, align 8
  %58 = load i32, i32* @SV_ILP32, align 4
  %59 = call i64 @SV_PROC_FLAG(%struct.proc* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 8
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %69 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 8
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  br label %85

74:                                               ; preds = %56
  %75 = load i64, i64* %6, align 8
  %76 = inttoptr i64 %75 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %80 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 8
  store i64 %82, i64* %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %74, %61
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %39
  %88 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %89 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.proc*, %struct.proc** %3, align 8
  %92 = getelementptr inbounds %struct.proc, %struct.proc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp uge i64 %90, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load %struct.proc*, %struct.proc** %3, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 0
  %104 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %105 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %104, i32 0, i32 3
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %105, align 8
  br label %118

106:                                              ; preds = %87
  %107 = load %struct.proc*, %struct.proc** %3, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %113 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %114
  %116 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %117 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %116, i32 0, i32 3
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %117, align 8
  br label %118

118:                                              ; preds = %106, %97
  %119 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %120 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %125 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.proc*, %struct.proc** %3, align 8
  %127 = load i32, i32* @SV_ILP32, align 4
  %128 = call i64 @SV_PROC_FLAG(%struct.proc* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %118
  store i64 4, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %131
  %136 = load i64, i64* %6, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %143 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %135
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %131

151:                                              ; preds = %131
  br label %174

152:                                              ; preds = %118
  store i64 4, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %170, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %165 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %163, i32* %169, align 4
  br label %170

170:                                              ; preds = %157
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %153

173:                                              ; preds = %153
  br label %174

174:                                              ; preds = %173, %151
  %175 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %176 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %203

180:                                              ; preds = %174
  %181 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %182 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @MOREARGS(i64 %185)
  %187 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %188 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %194 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %7, align 8
  %200 = mul i64 %198, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @copyin(i32 %186, i32* %192, i32 %201)
  store i32 %202, i32* %8, align 4
  br label %204

203:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %203, %180
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  %208 = load %struct.thread*, %struct.thread** %2, align 8
  %209 = getelementptr inbounds %struct.thread, %struct.thread* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  store i64 0, i64* %211, align 8
  %212 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %213 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* @FIRSTARG, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %214, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.thread*, %struct.thread** %2, align 8
  %221 = getelementptr inbounds %struct.thread, %struct.thread* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  store i64 %219, i64* %223, align 8
  br label %224

224:                                              ; preds = %207, %204
  %225 = load i32, i32* %8, align 4
  ret i32 %225
}

declare dso_local i64 @SV_PROC_FLAG(%struct.proc*, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @MOREARGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
