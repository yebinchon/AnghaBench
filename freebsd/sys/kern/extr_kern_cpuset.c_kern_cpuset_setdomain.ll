; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_setdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_setdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.thread = type { i32 }
%struct.cpuset = type { i32 }
%struct.proc = type { i32 }
%struct.domainset = type { i32, i32, i64 }

@DOMAINSET_MAXSIZE = common dso_local global i64 0, align 8
@NBBY = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@DOMAINSET_POLICY_INVALID = common dso_local global i32 0, align 4
@DOMAINSET_POLICY_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@all_domains = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DOMAINSET_POLICY_PREFER = common dso_local global i32 0, align 4
@domainset2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_cpuset_setdomain(%struct.thread* %0, i32 %1, i64 %2, i32 %3, i64 %4, %struct.TYPE_10__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cpuset*, align 8
  %17 = alloca %struct.cpuset*, align 8
  %18 = alloca %struct.thread*, align 8
  %19 = alloca %struct.proc*, align 8
  %20 = alloca %struct.domainset, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %33, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @DOMAINSET_MAXSIZE, align 8
  %30 = load i64, i64* @NBBY, align 8
  %31 = udiv i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %7
  %34 = load i32, i32* @ERANGE, align 4
  store i32 %34, i32* %8, align 4
  br label %215

35:                                               ; preds = %27
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @DOMAINSET_POLICY_INVALID, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DOMAINSET_POLICY_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %8, align 4
  br label %215

45:                                               ; preds = %39
  %46 = load %struct.thread*, %struct.thread** %9, align 8
  %47 = call i64 @IN_CAPABILITY_MODE(%struct.thread* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 136
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @ECAPMODE, align 4
  store i32 %53, i32* %8, align 4
  br label %215

54:                                               ; preds = %49
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 128
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 129
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ECAPMODE, align 4
  store i32 %61, i32* %8, align 4
  br label %215

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ECAPMODE, align 4
  store i32 %66, i32* %8, align 4
  br label %215

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %45
  %69 = call i32 @memset(%struct.domainset* %20, i32 0, i32 16)
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* @M_TEMP, align 4
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = load i32, i32* @M_ZERO, align 4
  %74 = or i32 %72, %73
  %75 = call %struct.TYPE_10__* @malloc(i64 %70, i32 %71, i32 %74)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %21, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @copyin(%struct.TYPE_10__* %76, %struct.TYPE_10__* %77, i64 %78)
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %210

83:                                               ; preds = %68
  %84 = load i64, i64* %13, align 8
  %85 = icmp ugt i64 %84, 4
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = bitcast i32* %88 to i8*
  store i8* %89, i8** %24, align 8
  store i8* %89, i8** %23, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i8*, i8** %23, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %23, align 8
  %93 = load i8*, i8** %24, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %24, align 8
  br label %95

95:                                               ; preds = %107, %86
  %96 = load i8*, i8** %24, align 8
  %97 = load i8*, i8** %23, align 8
  %98 = icmp ne i8* %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i8*, i8** %24, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %24, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %22, align 4
  br label %210

107:                                              ; preds = %99
  br label %95

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %83
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %111 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %112 = call i32 @DOMAINSET_COPY(%struct.TYPE_10__* %110, i32* %111)
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %116 = call i32 @DOMAINSET_SUBSET(%struct.TYPE_10__* @all_domains, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %109
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %22, align 4
  br label %210

120:                                              ; preds = %109
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @DOMAINSET_POLICY_PREFER, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %126 = call i32 @DOMAINSET_COUNT(i32* %125)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %22, align 4
  br label %210

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %132 = call i64 @DOMAINSET_FFS(i32* %131)
  %133 = sub nsw i64 %132, 1
  %134 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %136 = call i32 @DOMAINSET_COPY(%struct.TYPE_10__* @all_domains, i32* %135)
  br label %137

137:                                              ; preds = %130, %120
  %138 = call i64 @domainset_empty_vm(%struct.domainset* %20)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @domainset_copy(i32* @domainset2, %struct.domainset* %20)
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i32, i32* %10, align 4
  switch i32 %143, label %207 [
    i32 137, label %144
    i32 138, label %144
    i32 136, label %183
  ]

144:                                              ; preds = %142, %142
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @cpuset_which(i64 %145, i32 %146, %struct.proc** %19, %struct.thread** %18, %struct.cpuset** %17)
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %209

151:                                              ; preds = %144
  %152 = load i64, i64* %11, align 8
  switch i64 %152, label %167 [
    i64 128, label %153
    i64 129, label %153
    i64 135, label %164
    i64 130, label %164
    i64 132, label %165
    i64 133, label %165
    i64 131, label %165
    i64 134, label %165
  ]

153:                                              ; preds = %151, %151
  %154 = load %struct.thread*, %struct.thread** %18, align 8
  %155 = call i32 @thread_lock(%struct.thread* %154)
  %156 = load %struct.thread*, %struct.thread** %18, align 8
  %157 = getelementptr inbounds %struct.thread, %struct.thread* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call %struct.cpuset* @cpuset_ref(i32 %158)
  store %struct.cpuset* %159, %struct.cpuset** %17, align 8
  %160 = load %struct.thread*, %struct.thread** %18, align 8
  %161 = call i32 @thread_unlock(%struct.thread* %160)
  %162 = load %struct.proc*, %struct.proc** %19, align 8
  %163 = call i32 @PROC_UNLOCK(%struct.proc* %162)
  br label %167

164:                                              ; preds = %151, %151
  br label %167

165:                                              ; preds = %151, %151, %151, %151
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %22, align 4
  br label %210

167:                                              ; preds = %151, %164, %153
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 137
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.cpuset*, %struct.cpuset** %17, align 8
  %172 = call %struct.cpuset* @cpuset_refroot(%struct.cpuset* %171)
  store %struct.cpuset* %172, %struct.cpuset** %16, align 8
  br label %176

173:                                              ; preds = %167
  %174 = load %struct.cpuset*, %struct.cpuset** %17, align 8
  %175 = call %struct.cpuset* @cpuset_refbase(%struct.cpuset* %174)
  store %struct.cpuset* %175, %struct.cpuset** %16, align 8
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.cpuset*, %struct.cpuset** %16, align 8
  %178 = call i32 @cpuset_modify_domain(%struct.cpuset* %177, %struct.domainset* %20)
  store i32 %178, i32* %22, align 4
  %179 = load %struct.cpuset*, %struct.cpuset** %16, align 8
  %180 = call i32 @cpuset_rel(%struct.cpuset* %179)
  %181 = load %struct.cpuset*, %struct.cpuset** %17, align 8
  %182 = call i32 @cpuset_rel(%struct.cpuset* %181)
  br label %209

183:                                              ; preds = %142
  %184 = load i64, i64* %11, align 8
  switch i64 %184, label %204 [
    i64 128, label %185
    i64 129, label %188
    i64 135, label %191
    i64 130, label %191
    i64 132, label %203
    i64 133, label %203
    i64 131, label %203
  ]

185:                                              ; preds = %183
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @_cpuset_setthread(i32 %186, i32* null, %struct.domainset* %20)
  store i32 %187, i32* %22, align 4
  br label %206

188:                                              ; preds = %183
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @cpuset_setproc(i32 %189, i32* null, i32* null, %struct.domainset* %20)
  store i32 %190, i32* %22, align 4
  br label %206

191:                                              ; preds = %183, %183
  %192 = load i64, i64* %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @cpuset_which(i64 %192, i32 %193, %struct.proc** %19, %struct.thread** %18, %struct.cpuset** %17)
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.cpuset*, %struct.cpuset** %17, align 8
  %199 = call i32 @cpuset_modify_domain(%struct.cpuset* %198, %struct.domainset* %20)
  store i32 %199, i32* %22, align 4
  %200 = load %struct.cpuset*, %struct.cpuset** %17, align 8
  %201 = call i32 @cpuset_rel(%struct.cpuset* %200)
  br label %202

202:                                              ; preds = %197, %191
  br label %206

203:                                              ; preds = %183, %183, %183
  br label %204

204:                                              ; preds = %183, %203
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* %22, align 4
  br label %206

206:                                              ; preds = %204, %202, %188, %185
  br label %209

207:                                              ; preds = %142
  %208 = load i32, i32* @EINVAL, align 4
  store i32 %208, i32* %22, align 4
  br label %209

209:                                              ; preds = %207, %206, %176, %150
  br label %210

210:                                              ; preds = %209, %165, %128, %118, %105, %82
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %212 = load i32, i32* @M_TEMP, align 4
  %213 = call i32 @free(%struct.TYPE_10__* %211, i32 %212)
  %214 = load i32, i32* %22, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %210, %65, %60, %52, %43, %33
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local i64 @IN_CAPABILITY_MODE(%struct.thread*) #1

declare dso_local i32 @memset(%struct.domainset*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @DOMAINSET_COPY(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @DOMAINSET_SUBSET(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @DOMAINSET_COUNT(i32*) #1

declare dso_local i64 @DOMAINSET_FFS(i32*) #1

declare dso_local i64 @domainset_empty_vm(%struct.domainset*) #1

declare dso_local i32 @domainset_copy(i32*, %struct.domainset*) #1

declare dso_local i32 @cpuset_which(i64, i32, %struct.proc**, %struct.thread**, %struct.cpuset**) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_ref(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.cpuset* @cpuset_refroot(%struct.cpuset*) #1

declare dso_local %struct.cpuset* @cpuset_refbase(%struct.cpuset*) #1

declare dso_local i32 @cpuset_modify_domain(%struct.cpuset*, %struct.domainset*) #1

declare dso_local i32 @cpuset_rel(%struct.cpuset*) #1

declare dso_local i32 @_cpuset_setthread(i32, i32*, %struct.domainset*) #1

declare dso_local i32 @cpuset_setproc(i32, i32*, i32*, %struct.domainset*) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
