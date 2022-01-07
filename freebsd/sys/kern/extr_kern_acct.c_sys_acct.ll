; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_sys_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_sys_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.thread = type { i32 }
%struct.acct_args = type { i32* }
%struct.nameidata = type { %struct.TYPE_9__* }

@PRIV_ACCT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@acct_sx = common dso_local global i32 0, align 4
@acct_vp = common dso_local global %struct.TYPE_9__* null, align 8
@acct_suspended = common dso_local global i64 0, align 8
@acct_state = common dso_local global i32 0, align 4
@ACCT_RUNNING = common dso_local global i32 0, align 4
@ACCT_EXITREQ = common dso_local global i32 0, align 4
@acct_limit = common dso_local global %struct.TYPE_10__* null, align 8
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@acct_cred = common dso_local global i32 0, align 4
@acct_flags = common dso_local global i32 0, align 4
@acct_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"accounting\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to start accounting thread\0A\00", align 1
@acct_configured = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Accounting enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_acct(%struct.thread* %0, %struct.acct_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.acct_args*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.acct_args* %1, %struct.acct_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = load i32, i32* @PRIV_ACCT, align 4
  %13 = call i32 @priv_check(%struct.thread* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %168

18:                                               ; preds = %2
  %19 = load %struct.acct_args*, %struct.acct_args** %5, align 8
  %20 = getelementptr inbounds %struct.acct_args, %struct.acct_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %18
  %24 = load i32, i32* @LOOKUP, align 4
  %25 = load i32, i32* @NOFOLLOW, align 4
  %26 = load i32, i32* @AUDITVNODE1, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UIO_USERSPACE, align 4
  %29 = load %struct.acct_args*, %struct.acct_args** %5, align 8
  %30 = getelementptr inbounds %struct.acct_args, %struct.acct_args* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @NDINIT(%struct.nameidata* %6, i32 %24, i32 %27, i32 %28, i32* %31, %struct.thread* %32)
  %34 = load i32, i32* @FWRITE, align 4
  %35 = load i32, i32* @O_APPEND, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = call i32 @vn_open(%struct.nameidata* %6, i32* %8, i32 0, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %168

42:                                               ; preds = %23
  %43 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %44 = call i32 @NDFREE(%struct.nameidata* %6, i32 %43)
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i32 @VOP_UNLOCK(%struct.TYPE_9__* %46, i32 0)
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VREG, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = call i32 @vn_close(%struct.TYPE_9__* %56, i32 %57, i32 %60, %struct.thread* %61)
  %63 = load i32, i32* @EACCES, align 4
  store i32 %63, i32* %3, align 4
  br label %168

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %18
  %66 = call i32 @sx_xlock(i32* @acct_sx)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @acct_vp, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.acct_args*, %struct.acct_args** %5, align 8
  %71 = getelementptr inbounds %struct.acct_args, %struct.acct_args* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  store i64 0, i64* @acct_suspended, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @acct_vp, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.thread*, %struct.thread** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @acct_disable(%struct.thread* %80, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.acct_args*, %struct.acct_args** %5, align 8
  %88 = getelementptr inbounds %struct.acct_args, %struct.acct_args* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i32, i32* @acct_state, align 4
  %93 = load i32, i32* @ACCT_RUNNING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* @ACCT_EXITREQ, align 4
  %98 = load i32, i32* @acct_state, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* @acct_state, align 4
  %100 = call i32 @wakeup(i32* @acct_state)
  br label %101

101:                                              ; preds = %96, %91
  %102 = call i32 @sx_xunlock(i32* @acct_sx)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %168

104:                                              ; preds = %86
  %105 = call %struct.TYPE_10__* (...) @lim_alloc()
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** @acct_limit, align 8
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %126, %104
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @RLIM_NLIMITS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load i32, i32* @RLIM_INFINITY, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** @acct_limit, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @acct_limit, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 %111, i32* %125, align 4
  br label %126

126:                                              ; preds = %110
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %106

129:                                              ; preds = %106
  %130 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** @acct_vp, align 8
  %132 = load %struct.thread*, %struct.thread** %4, align 8
  %133 = getelementptr inbounds %struct.thread, %struct.thread* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @crhold(i32 %134)
  store i32 %135, i32* @acct_cred, align 4
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* @acct_flags, align 4
  %137 = load i32, i32* @acct_state, align 4
  %138 = load i32, i32* @ACCT_RUNNING, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %129
  %142 = load i32, i32* @ACCT_EXITREQ, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* @acct_state, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* @acct_state, align 4
  br label %159

146:                                              ; preds = %129
  %147 = load i32, i32* @acct_thread, align 4
  %148 = call i32 @kproc_create(i32 %147, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.thread*, %struct.thread** %4, align 8
  %153 = call i32 @acct_disable(%struct.thread* %152, i32 0)
  %154 = call i32 @sx_xunlock(i32* @acct_sx)
  %155 = load i32, i32* @LOG_NOTICE, align 4
  %156 = call i32 @log(i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %3, align 4
  br label %168

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %158, %141
  store i32 1, i32* @acct_configured, align 4
  %160 = call i32 @sx_xunlock(i32* @acct_sx)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* @LOG_NOTICE, align 4
  %165 = call i32 @log(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %151, %101, %54, %40, %16
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32*, %struct.thread*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vn_close(%struct.TYPE_9__*, i32, i32, %struct.thread*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @acct_disable(%struct.thread*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local %struct.TYPE_10__* @lim_alloc(...) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @kproc_create(i32, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
