; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_enterpgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_enterpgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, %struct.session*, i32 }
%struct.session = type { i64, i32, i32*, i32*, i32*, i32, %struct.proc*, i32 }
%struct.pgrp = type { i32, i64, i32, i64, %struct.session*, i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"enterpgrp: pgrp == NULL\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"enterpgrp: new pgrp and pid != pgid\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"enterpgrp: pgrp with pgid exists\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"enterpgrp: session leader attempted setpgrp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"process group\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@P_CONTROLT = common dso_local global i32 0, align 4
@PROC_ID_SESSION = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.proc* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"enterpgrp: mksession and p != curproc\00", align 1
@PROC_ID_GROUP = common dso_local global i32 0, align 4
@pg_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enterpgrp(%struct.proc* %0, i64 %1, %struct.pgrp* %2, %struct.session* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pgrp*, align 8
  %8 = alloca %struct.session*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pgrp* %2, %struct.pgrp** %7, align 8
  store %struct.session* %3, %struct.session** %8, align 8
  %9 = load i32, i32* @SX_XLOCKED, align 4
  %10 = call i32 @sx_assert(i32* @proctree_lock, i32 %9)
  %11 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %12 = icmp ne %struct.pgrp* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.proc*, %struct.proc** %5, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %6, align 8
  %23 = call i32* @pgfind(i64 %22)
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = call i32 @SESS_LEADER(%struct.proc* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %34 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %33, i32 0, i32 5
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = load i32, i32* @MTX_DUPOK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mtx_init(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %37)
  %39 = load %struct.session*, %struct.session** %8, align 8
  %40 = icmp ne %struct.session* %39, null
  br i1 %40, label %41, label %97

41:                                               ; preds = %4
  %42 = load %struct.session*, %struct.session** %8, align 8
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 7
  %44 = load i32, i32* @MTX_DEF, align 4
  %45 = call i32 @mtx_init(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %44)
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  %47 = call i32 @PROC_LOCK(%struct.proc* %46)
  %48 = load i32, i32* @P_CONTROLT, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.proc*, %struct.proc** %5, align 8
  %55 = call i32 @PROC_UNLOCK(%struct.proc* %54)
  %56 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %57 = call i32 @PGRP_LOCK(%struct.pgrp* %56)
  %58 = load %struct.proc*, %struct.proc** %5, align 8
  %59 = load %struct.session*, %struct.session** %8, align 8
  %60 = getelementptr inbounds %struct.session, %struct.session* %59, i32 0, i32 6
  store %struct.proc* %58, %struct.proc** %60, align 8
  %61 = load %struct.proc*, %struct.proc** %5, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.session*, %struct.session** %8, align 8
  %65 = getelementptr inbounds %struct.session, %struct.session* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @PROC_ID_SESSION, align 4
  %67 = load %struct.proc*, %struct.proc** %5, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @proc_id_set(i32 %66, i64 %69)
  %71 = load %struct.session*, %struct.session** %8, align 8
  %72 = getelementptr inbounds %struct.session, %struct.session* %71, i32 0, i32 5
  %73 = call i32 @refcount_init(i32* %72, i32 1)
  %74 = load %struct.session*, %struct.session** %8, align 8
  %75 = getelementptr inbounds %struct.session, %struct.session* %74, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = load %struct.session*, %struct.session** %8, align 8
  %77 = getelementptr inbounds %struct.session, %struct.session* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.session*, %struct.session** %8, align 8
  %79 = getelementptr inbounds %struct.session, %struct.session* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.proc*, %struct.proc** %5, align 8
  %81 = getelementptr inbounds %struct.proc, %struct.proc* %80, i32 0, i32 1
  %82 = load %struct.session*, %struct.session** %81, align 8
  %83 = getelementptr inbounds %struct.session, %struct.session* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.session*, %struct.session** %8, align 8
  %86 = getelementptr inbounds %struct.session, %struct.session* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bcopy(i32 %84, i32 %87, i32 4)
  %89 = load %struct.session*, %struct.session** %8, align 8
  %90 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %91 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %90, i32 0, i32 4
  store %struct.session* %89, %struct.session** %91, align 8
  %92 = load %struct.proc*, %struct.proc** %5, align 8
  %93 = load %struct.proc*, %struct.proc** @curproc, align 8
  %94 = icmp eq %struct.proc* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @KASSERT(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %109

97:                                               ; preds = %4
  %98 = load %struct.proc*, %struct.proc** %5, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 1
  %100 = load %struct.session*, %struct.session** %99, align 8
  %101 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %102 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %101, i32 0, i32 4
  store %struct.session* %100, %struct.session** %102, align 8
  %103 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %104 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %103, i32 0, i32 4
  %105 = load %struct.session*, %struct.session** %104, align 8
  %106 = call i32 @sess_hold(%struct.session* %105)
  %107 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %108 = call i32 @PGRP_LOCK(%struct.pgrp* %107)
  br label %109

109:                                              ; preds = %97, %41
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %112 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @PROC_ID_GROUP, align 4
  %114 = load %struct.proc*, %struct.proc** %5, align 8
  %115 = getelementptr inbounds %struct.proc, %struct.proc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @proc_id_set(i32 %113, i64 %116)
  %118 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %119 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %118, i32 0, i32 2
  %120 = call i32 @LIST_INIT(i32* %119)
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @PGRPHASH(i64 %121)
  %123 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %124 = load i32, i32* @pg_hash, align 4
  %125 = call i32 @LIST_INSERT_HEAD(i32 %122, %struct.pgrp* %123, i32 %124)
  %126 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %127 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %129 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %128, i32 0, i32 0
  %130 = call i32 @SLIST_INIT(i32* %129)
  %131 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %132 = call i32 @PGRP_UNLOCK(%struct.pgrp* %131)
  %133 = load %struct.proc*, %struct.proc** %5, align 8
  %134 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %135 = call i32 @doenterpgrp(%struct.proc* %133, %struct.pgrp* %134)
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pgfind(i64) #1

declare dso_local i32 @SESS_LEADER(%struct.proc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @proc_id_set(i32, i64) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @sess_hold(%struct.session*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.pgrp*, i32) #1

declare dso_local i32 @PGRPHASH(i64) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @doenterpgrp(%struct.proc*, %struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
