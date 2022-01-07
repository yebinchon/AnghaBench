; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sysctl_kern_proc_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sysctl_kern_proc_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.kern_proc_out_args = type { i32*, i32, i32, %struct.sysctl_req* }
%struct.sysctl_req = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"process credential is NULL for non-NEW proc\00", align 1
@curthread = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i8*)* @sysctl_kern_proc_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_kern_proc_iterate(%struct.proc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kern_proc_out_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sysctl_req*, align 8
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.kern_proc_out_args*
  store %struct.kern_proc_out_args* %13, %struct.kern_proc_out_args** %6, align 8
  %14 = load %struct.kern_proc_out_args*, %struct.kern_proc_out_args** %6, align 8
  %15 = getelementptr inbounds %struct.kern_proc_out_args, %struct.kern_proc_out_args* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.kern_proc_out_args*, %struct.kern_proc_out_args** %6, align 8
  %18 = getelementptr inbounds %struct.kern_proc_out_args, %struct.kern_proc_out_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.kern_proc_out_args*, %struct.kern_proc_out_args** %6, align 8
  %21 = getelementptr inbounds %struct.kern_proc_out_args, %struct.kern_proc_out_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.kern_proc_out_args*, %struct.kern_proc_out_args** %6, align 8
  %24 = getelementptr inbounds %struct.kern_proc_out_args, %struct.kern_proc_out_args* %23, i32 0, i32 3
  %25 = load %struct.sysctl_req*, %struct.sysctl_req** %24, align 8
  store %struct.sysctl_req* %25, %struct.sysctl_req** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.proc*, %struct.proc** %4, align 8
  %27 = call i32 @PROC_LOCK(%struct.proc* %26)
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @curthread, align 4
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  %36 = call i64 @p_cansee(i32 %34, %struct.proc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %179

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %169 [
    i32 135, label %41
    i32 134, label %53
    i32 132, label %70
    i32 130, label %82
    i32 129, label %99
    i32 128, label %144
    i32 131, label %156
    i32 133, label %168
  ]

41:                                               ; preds = %39
  %42 = load %struct.proc*, %struct.proc** %4, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %179

52:                                               ; preds = %41
  br label %170

53:                                               ; preds = %39
  %54 = load %struct.proc*, %struct.proc** %4, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.proc*, %struct.proc** %4, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58, %53
  br label %179

69:                                               ; preds = %58
  br label %170

70:                                               ; preds = %39
  %71 = load %struct.proc*, %struct.proc** %4, align 8
  %72 = getelementptr inbounds %struct.proc, %struct.proc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %179

81:                                               ; preds = %70
  br label %170

82:                                               ; preds = %39
  %83 = load %struct.proc*, %struct.proc** %4, align 8
  %84 = getelementptr inbounds %struct.proc, %struct.proc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = icmp eq %struct.TYPE_7__* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.proc*, %struct.proc** %4, align 8
  %89 = getelementptr inbounds %struct.proc, %struct.proc* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87, %82
  br label %179

98:                                               ; preds = %87
  br label %170

99:                                               ; preds = %39
  %100 = load %struct.proc*, %struct.proc** %4, align 8
  %101 = getelementptr inbounds %struct.proc, %struct.proc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @P_CONTROLT, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.proc*, %struct.proc** %4, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = icmp eq %struct.TYPE_7__* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %99
  br label %179

112:                                              ; preds = %106
  %113 = load %struct.proc*, %struct.proc** %4, align 8
  %114 = getelementptr inbounds %struct.proc, %struct.proc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = call i32 @SESS_LOCK(%struct.TYPE_7__* %115)
  %117 = load %struct.proc*, %struct.proc** %4, align 8
  %118 = getelementptr inbounds %struct.proc, %struct.proc* %117, i32 0, i32 2
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %112
  %124 = load %struct.proc*, %struct.proc** %4, align 8
  %125 = getelementptr inbounds %struct.proc, %struct.proc* %124, i32 0, i32 2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @tty_udev(i32* %128)
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %123, %112
  %135 = load %struct.proc*, %struct.proc** %4, align 8
  %136 = getelementptr inbounds %struct.proc, %struct.proc* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = call i32 @SESS_UNLOCK(%struct.TYPE_7__* %137)
  br label %179

139:                                              ; preds = %123
  %140 = load %struct.proc*, %struct.proc** %4, align 8
  %141 = getelementptr inbounds %struct.proc, %struct.proc* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = call i32 @SESS_UNLOCK(%struct.TYPE_7__* %142)
  br label %170

144:                                              ; preds = %39
  %145 = load %struct.proc*, %struct.proc** %4, align 8
  %146 = getelementptr inbounds %struct.proc, %struct.proc* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %179

155:                                              ; preds = %144
  br label %170

156:                                              ; preds = %39
  %157 = load %struct.proc*, %struct.proc** %4, align 8
  %158 = getelementptr inbounds %struct.proc, %struct.proc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %179

167:                                              ; preds = %156
  br label %170

168:                                              ; preds = %39
  br label %170

169:                                              ; preds = %39
  br label %170

170:                                              ; preds = %169, %168, %167, %155, %139, %98, %81, %69, %52
  %171 = load %struct.proc*, %struct.proc** %4, align 8
  %172 = load %struct.sysctl_req*, %struct.sysctl_req** %10, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @sysctl_out_proc(%struct.proc* %171, %struct.sysctl_req* %172, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load %struct.proc*, %struct.proc** %4, align 8
  %176 = load i32, i32* @MA_NOTOWNED, align 4
  %177 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %175, i32 %176)
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %3, align 4
  br label %182

179:                                              ; preds = %166, %154, %134, %111, %97, %80, %68, %51, %38
  %180 = load %struct.proc*, %struct.proc** %4, align 8
  %181 = call i32 @PROC_UNLOCK(%struct.proc* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %179, %170
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @p_cansee(i32, %struct.proc*) #1

declare dso_local i32 @SESS_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @tty_udev(i32*) #1

declare dso_local i32 @SESS_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @sysctl_out_proc(%struct.proc*, %struct.sysctl_req*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
