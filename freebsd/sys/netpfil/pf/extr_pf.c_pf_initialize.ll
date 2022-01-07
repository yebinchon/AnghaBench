; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.pf_keyhash = type { i32 }
%struct.pf_srchash = type { i32 }
%struct.pf_idhash = type { i32 }

@pf_hashsize = common dso_local global i64 0, align 8
@PF_HASHSIZ = common dso_local global i64 0, align 8
@pf_srchashsize = common dso_local global i64 0, align 8
@PF_SRCHASHSIZ = common dso_local global i64 0, align 8
@V_pf_hashseed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pf states\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_pf_state_z = common dso_local global i8* null, align 8
@V_pf_limits = common dso_local global %struct.TYPE_2__* null, align 8
@PF_LIMIT_STATES = common dso_local global i64 0, align 8
@PFSTATE_HIWAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PF states limit reached\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"pf state keys\00", align 1
@pf_state_key_ctor = common dso_local global i32* null, align 8
@V_pf_state_key_z = common dso_local global i8* null, align 8
@M_PFHASH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_pf_keyhash = common dso_local global %struct.pf_keyhash* null, align 8
@V_pf_idhash = common dso_local global %struct.pf_keyhash* null, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"pf: Unable to allocate memory for state_hashsize %lu.\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@pf_hashmask = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"pf_keyhash\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"pf_idhash\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pf source nodes\00", align 1
@V_pf_sources_z = common dso_local global i8* null, align 8
@PF_LIMIT_SRC_NODES = common dso_local global i64 0, align 8
@PFSNODE_HIWAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"PF source nodes limit reached\00", align 1
@V_pf_srchash = common dso_local global %struct.pf_srchash* null, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"pf: Unable to allocate memory for source_hashsize %lu.\0A\00", align 1
@pf_srchashmask = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"pf_srchash\00", align 1
@V_pf_altqs = common dso_local global i32* null, align 8
@V_pf_pabuf = common dso_local global i32 0, align 4
@V_pf_altqs_active = common dso_local global i32* null, align 8
@V_pf_altq_ifs_active = common dso_local global i32* null, align 8
@V_pf_altqs_inactive = common dso_local global i32* null, align 8
@V_pf_altq_ifs_inactive = common dso_local global i32* null, align 8
@V_pf_sendqueue = common dso_local global i32 0, align 4
@V_pf_overloadqueue = common dso_local global i32 0, align 4
@V_pf_overloadtask = common dso_local global i32 0, align 4
@pf_overload_task = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@V_pf_unlinked_rules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_initialize() #0 {
  %1 = alloca %struct.pf_keyhash*, align 8
  %2 = alloca %struct.pf_idhash*, align 8
  %3 = alloca %struct.pf_srchash*, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @pf_hashsize, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @pf_hashsize, align 8
  %9 = call i32 @powerof2(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %0
  %12 = load i64, i64* @PF_HASHSIZ, align 8
  store i64 %12, i64* @pf_hashsize, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i64, i64* @pf_srchashsize, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @pf_srchashsize, align 8
  %18 = call i32 @powerof2(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* @PF_SRCHASHSIZ, align 8
  store i64 %21, i64* @pf_srchashsize, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = call i32 (...) @arc4random()
  store i32 %23, i32* @V_pf_hashseed, align 4
  %24 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %25 = call i8* @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %24, i32 0)
  store i8* %25, i8** @V_pf_state_z, align 8
  %26 = load i8*, i8** @V_pf_state_z, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_pf_limits, align 8
  %28 = load i64, i64* @PF_LIMIT_STATES, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @V_pf_state_z, align 8
  %32 = load i32, i32* @PFSTATE_HIWAT, align 4
  %33 = call i32 @uma_zone_set_max(i8* %31, i32 %32)
  %34 = load i8*, i8** @V_pf_state_z, align 8
  %35 = call i32 @uma_zone_set_warning(i8* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** @pf_state_key_ctor, align 8
  %37 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %38 = call i8* @uma_zcreate(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %36, i32* null, i32* null, i32* null, i32 %37, i32 0)
  store i8* %38, i8** @V_pf_state_key_z, align 8
  %39 = load i64, i64* @pf_hashsize, align 8
  %40 = load i32, i32* @M_PFHASH, align 4
  %41 = load i32, i32* @M_NOWAIT, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @mallocarray(i64 %39, i32 4, i32 %40, i32 %43)
  %45 = bitcast i8* %44 to %struct.pf_keyhash*
  store %struct.pf_keyhash* %45, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %46 = load i64, i64* @pf_hashsize, align 8
  %47 = load i32, i32* @M_PFHASH, align 4
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @mallocarray(i64 %46, i32 4, i32 %47, i32 %50)
  %52 = bitcast i8* %51 to %struct.pf_keyhash*
  store %struct.pf_keyhash* %52, %struct.pf_keyhash** @V_pf_idhash, align 8
  %53 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %54 = icmp eq %struct.pf_keyhash* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %22
  %56 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_idhash, align 8
  %57 = icmp eq %struct.pf_keyhash* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %55, %22
  %59 = load i64, i64* @pf_hashsize, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %62 = load i32, i32* @M_PFHASH, align 4
  %63 = call i32 @free(%struct.pf_keyhash* %61, i32 %62)
  %64 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_idhash, align 8
  %65 = load i32, i32* @M_PFHASH, align 4
  %66 = call i32 @free(%struct.pf_keyhash* %64, i32 %65)
  %67 = load i64, i64* @PF_HASHSIZ, align 8
  store i64 %67, i64* @pf_hashsize, align 8
  %68 = load i64, i64* @pf_hashsize, align 8
  %69 = load i32, i32* @M_PFHASH, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @mallocarray(i64 %68, i32 4, i32 %69, i32 %72)
  %74 = bitcast i8* %73 to %struct.pf_keyhash*
  store %struct.pf_keyhash* %74, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %75 = load i64, i64* @pf_hashsize, align 8
  %76 = load i32, i32* @M_PFHASH, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = load i32, i32* @M_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call i8* @mallocarray(i64 %75, i32 4, i32 %76, i32 %79)
  %81 = bitcast i8* %80 to %struct.pf_keyhash*
  store %struct.pf_keyhash* %81, %struct.pf_keyhash** @V_pf_idhash, align 8
  br label %82

82:                                               ; preds = %58, %55
  %83 = load i64, i64* @pf_hashsize, align 8
  %84 = sub nsw i64 %83, 1
  store i64 %84, i64* @pf_hashmask, align 8
  store i64 0, i64* %4, align 8
  %85 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_keyhash, align 8
  store %struct.pf_keyhash* %85, %struct.pf_keyhash** %1, align 8
  %86 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_idhash, align 8
  %87 = bitcast %struct.pf_keyhash* %86 to %struct.pf_idhash*
  store %struct.pf_idhash* %87, %struct.pf_idhash** %2, align 8
  br label %88

88:                                               ; preds = %103, %82
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @pf_hashmask, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load %struct.pf_keyhash*, %struct.pf_keyhash** %1, align 8
  %94 = getelementptr inbounds %struct.pf_keyhash, %struct.pf_keyhash* %93, i32 0, i32 0
  %95 = load i32, i32* @MTX_DEF, align 4
  %96 = load i32, i32* @MTX_DUPOK, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @mtx_init(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %97)
  %99 = load %struct.pf_idhash*, %struct.pf_idhash** %2, align 8
  %100 = getelementptr inbounds %struct.pf_idhash, %struct.pf_idhash* %99, i32 0, i32 0
  %101 = load i32, i32* @MTX_DEF, align 4
  %102 = call i32 @mtx_init(i32* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i64, i64* %4, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %4, align 8
  %106 = load %struct.pf_keyhash*, %struct.pf_keyhash** %1, align 8
  %107 = getelementptr inbounds %struct.pf_keyhash, %struct.pf_keyhash* %106, i32 1
  store %struct.pf_keyhash* %107, %struct.pf_keyhash** %1, align 8
  %108 = load %struct.pf_idhash*, %struct.pf_idhash** %2, align 8
  %109 = getelementptr inbounds %struct.pf_idhash, %struct.pf_idhash* %108, i32 1
  store %struct.pf_idhash* %109, %struct.pf_idhash** %2, align 8
  br label %88

110:                                              ; preds = %88
  %111 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %112 = call i8* @uma_zcreate(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %111, i32 0)
  store i8* %112, i8** @V_pf_sources_z, align 8
  %113 = load i8*, i8** @V_pf_sources_z, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_pf_limits, align 8
  %115 = load i64, i64* @PF_LIMIT_SRC_NODES, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  %118 = load i8*, i8** @V_pf_sources_z, align 8
  %119 = load i32, i32* @PFSNODE_HIWAT, align 4
  %120 = call i32 @uma_zone_set_max(i8* %118, i32 %119)
  %121 = load i8*, i8** @V_pf_sources_z, align 8
  %122 = call i32 @uma_zone_set_warning(i8* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i64, i64* @pf_srchashsize, align 8
  %124 = load i32, i32* @M_PFHASH, align 4
  %125 = load i32, i32* @M_NOWAIT, align 4
  %126 = load i32, i32* @M_ZERO, align 4
  %127 = or i32 %125, %126
  %128 = call i8* @mallocarray(i64 %123, i32 4, i32 %124, i32 %127)
  %129 = bitcast i8* %128 to %struct.pf_srchash*
  store %struct.pf_srchash* %129, %struct.pf_srchash** @V_pf_srchash, align 8
  %130 = load %struct.pf_srchash*, %struct.pf_srchash** @V_pf_srchash, align 8
  %131 = icmp eq %struct.pf_srchash* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %110
  %133 = load i64, i64* @pf_srchashsize, align 8
  %134 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %133)
  %135 = load i64, i64* @PF_SRCHASHSIZ, align 8
  store i64 %135, i64* @pf_srchashsize, align 8
  %136 = load i64, i64* @pf_srchashsize, align 8
  %137 = load i32, i32* @M_PFHASH, align 4
  %138 = load i32, i32* @M_WAITOK, align 4
  %139 = load i32, i32* @M_ZERO, align 4
  %140 = or i32 %138, %139
  %141 = call i8* @mallocarray(i64 %136, i32 4, i32 %137, i32 %140)
  %142 = bitcast i8* %141 to %struct.pf_srchash*
  store %struct.pf_srchash* %142, %struct.pf_srchash** @V_pf_srchash, align 8
  br label %143

143:                                              ; preds = %132, %110
  %144 = load i64, i64* @pf_srchashsize, align 8
  %145 = sub nsw i64 %144, 1
  store i64 %145, i64* @pf_srchashmask, align 8
  store i64 0, i64* %4, align 8
  %146 = load %struct.pf_srchash*, %struct.pf_srchash** @V_pf_srchash, align 8
  store %struct.pf_srchash* %146, %struct.pf_srchash** %3, align 8
  br label %147

147:                                              ; preds = %156, %143
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @pf_srchashmask, align 8
  %150 = icmp sle i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load %struct.pf_srchash*, %struct.pf_srchash** %3, align 8
  %153 = getelementptr inbounds %struct.pf_srchash, %struct.pf_srchash* %152, i32 0, i32 0
  %154 = load i32, i32* @MTX_DEF, align 4
  %155 = call i32 @mtx_init(i32* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %154)
  br label %156

156:                                              ; preds = %151
  %157 = load i64, i64* %4, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %4, align 8
  %159 = load %struct.pf_srchash*, %struct.pf_srchash** %3, align 8
  %160 = getelementptr inbounds %struct.pf_srchash, %struct.pf_srchash* %159, i32 1
  store %struct.pf_srchash* %160, %struct.pf_srchash** %3, align 8
  br label %147

161:                                              ; preds = %147
  %162 = load i32*, i32** @V_pf_altqs, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = call i32 @TAILQ_INIT(i32* %163)
  %165 = load i32*, i32** @V_pf_altqs, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = call i32 @TAILQ_INIT(i32* %166)
  %168 = load i32*, i32** @V_pf_altqs, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = call i32 @TAILQ_INIT(i32* %169)
  %171 = load i32*, i32** @V_pf_altqs, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = call i32 @TAILQ_INIT(i32* %172)
  %174 = call i32 @TAILQ_INIT(i32* @V_pf_pabuf)
  %175 = load i32*, i32** @V_pf_altqs, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32* %176, i32** @V_pf_altqs_active, align 8
  %177 = load i32*, i32** @V_pf_altqs, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32* %178, i32** @V_pf_altq_ifs_active, align 8
  %179 = load i32*, i32** @V_pf_altqs, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  store i32* %180, i32** @V_pf_altqs_inactive, align 8
  %181 = load i32*, i32** @V_pf_altqs, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  store i32* %182, i32** @V_pf_altq_ifs_inactive, align 8
  %183 = call i32 @STAILQ_INIT(i32* @V_pf_sendqueue)
  %184 = call i32 @SLIST_INIT(i32* @V_pf_overloadqueue)
  %185 = load i32, i32* @pf_overload_task, align 4
  %186 = load i32, i32* @curvnet, align 4
  %187 = call i32 @TASK_INIT(i32* @V_pf_overloadtask, i32 0, i32 %185, i32 %186)
  %188 = call i32 @TAILQ_INIT(i32* @V_pf_unlinked_rules)
  ret void
}

declare dso_local i32 @powerof2(i64) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i8*, i32) #1

declare dso_local i32 @uma_zone_set_warning(i8*, i8*) #1

declare dso_local i8* @mallocarray(i64, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @free(%struct.pf_keyhash*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
