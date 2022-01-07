; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_postsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_postsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, i32, %struct.proc* }
%struct.proc = type { i32, i32, %struct.TYPE_7__*, i32, %struct.sigacts* }
%struct.TYPE_7__ = type { i32 (i64, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.sigacts = type { i64*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"postsig\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@SI_TIMER = common dso_local global i64 0, align 8
@S_SIG = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"postsig action %p\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"postsig action: blocked sig %d\00", align 1
@TDP_OLDMASK = common dso_local global i32 0, align 4
@KTR_PSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @postsig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sigacts*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %4, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 4
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %5, align 8
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %18, i32 %19)
  %21 = load %struct.proc*, %struct.proc** %5, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 4
  %23 = load %struct.sigacts*, %struct.sigacts** %22, align 8
  store %struct.sigacts* %23, %struct.sigacts** %6, align 8
  %24 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %25 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %24, i32 0, i32 1
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @mtx_assert(i32* %25, i32 %26)
  %28 = call i32 @ksiginfo_init(%struct.TYPE_8__* %8)
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 3
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @sigqueue_get(i32* %30, i32 %31, %struct.TYPE_8__* %8)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.proc*, %struct.proc** %5, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 3
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @sigqueue_get(i32* %36, i32 %37, %struct.TYPE_8__* %8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %154

41:                                               ; preds = %34, %1
  %42 = load i32, i32* %3, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SI_TIMER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @itimer_accept(%struct.proc* %49, i32 %51, %struct.TYPE_8__* %8)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %55 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @_SIG_IDX(i32 %57)
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  %61 = load %struct.proc*, %struct.proc** %5, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @S_SIG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %53
  %68 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %69 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %68, i32 0, i32 1
  %70 = call i32 @mtx_unlock(i32* %69)
  %71 = load %struct.proc*, %struct.proc** %5, align 8
  %72 = load i32, i32* @S_SIG, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @stopevent(%struct.proc* %71, i32 %72, i32 %73)
  %75 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %76 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %75, i32 0, i32 1
  %77 = call i32 @mtx_lock(i32* %76)
  br label %78

78:                                               ; preds = %67, %53
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @SIG_DFL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %84 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %83, i32 0, i32 1
  %85 = call i32 @mtx_unlock(i32* %84)
  %86 = load %struct.thread*, %struct.thread** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %88 = call i32 @proc_td_siginfo_capture(%struct.thread* %86, i32* %87)
  %89 = load %struct.thread*, %struct.thread** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @sigexit(%struct.thread* %89, i32 %90)
  br label %153

92:                                               ; preds = %78
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @SIG_IGN, align 8
  %95 = icmp ne i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %7, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @KASSERT(i32 %96, i8* %98)
  %100 = load %struct.thread*, %struct.thread** %4, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @SIGISMEMBER(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @KASSERT(i32 %107, i8* %110)
  %112 = load %struct.thread*, %struct.thread** %4, align 8
  %113 = getelementptr inbounds %struct.thread, %struct.thread* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TDP_OLDMASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %92
  %119 = load %struct.thread*, %struct.thread** %4, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @TDP_OLDMASK, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.thread*, %struct.thread** %4, align 8
  %125 = getelementptr inbounds %struct.thread, %struct.thread* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %132

128:                                              ; preds = %92
  %129 = load %struct.thread*, %struct.thread** %4, align 8
  %130 = getelementptr inbounds %struct.thread, %struct.thread* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %118
  %133 = load %struct.proc*, %struct.proc** %5, align 8
  %134 = getelementptr inbounds %struct.proc, %struct.proc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %3, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.proc*, %struct.proc** %5, align 8
  %140 = getelementptr inbounds %struct.proc, %struct.proc* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.proc*, %struct.proc** %5, align 8
  %143 = getelementptr inbounds %struct.proc, %struct.proc* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32 (i64, %struct.TYPE_8__*, i32*)*, i32 (i64, %struct.TYPE_8__*, i32*)** %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i32 %146(i64 %147, %struct.TYPE_8__* %8, i32* %9)
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.thread*, %struct.thread** %4, align 8
  %151 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  %152 = call i32 @postsig_done(i32 %149, %struct.thread* %150, %struct.sigacts* %151)
  br label %153

153:                                              ; preds = %141, %82
  store i32 1, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %40
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

declare dso_local i64 @sigqueue_get(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @itimer_accept(%struct.proc*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @_SIG_IDX(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @stopevent(%struct.proc*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @proc_td_siginfo_capture(%struct.thread*, i32*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @postsig_done(i32, %struct.thread*, %struct.sigacts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
