; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i8*, i8*, i32, i32, %struct.TYPE_4__, i32, i32, i32*, i32, i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.regnode_init_def = type { i8*, i32, i8*, i32, %struct.TYPE_4__, i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"regulator name is NULL\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"regulator name is empty\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Duplicated regulator registration: %s\0A\00", align 1
@M_REGULATOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Regulator node lock\00", align 1
@REGULATOR_FLAGS_STATIC = common dso_local global i32 0, align 4
@_hw_regulator = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"A regulator node\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"min_uvolt\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Minimal voltage (in uV)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"max_uvolt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Maximal voltage (in uV)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"min_uamp\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Minimal amperage (in uA)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"max_uamp\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Maximal amperage (in uA)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ramp_delay\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Ramp delay (in uV/us)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"enable_delay\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Enable delay (in us)\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"enable_cnt\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"The regulator enable counter\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"boot_on\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Is enabled on boot\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"always_on\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Is always enabled\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"uvolt\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@regnode_uvolt_sysctl = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Current voltage (in uV)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regnode* @regnode_create(i32 %0, %struct.TYPE_5__* %1, %struct.regnode_init_def* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.regnode_init_def*, align 8
  %7 = alloca %struct.regnode*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.regnode_init_def* %2, %struct.regnode_init_def** %6, align 8
  %9 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %10 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %16 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @REG_TOPO_SLOCK()
  %25 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %26 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32* @regnode_find_by_name(i8* %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %32 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = call i32 (...) @REG_TOPO_UNLOCK()
  %37 = load i32, i32* @M_REGULATOR, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @malloc(i32 104, i32 %37, i32 %40)
  %42 = bitcast i8* %41 to %struct.regnode*
  store %struct.regnode* %42, %struct.regnode** %7, align 8
  %43 = load %struct.regnode*, %struct.regnode** %7, align 8
  %44 = ptrtoint %struct.regnode* %43 to i32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = ptrtoint %struct.TYPE_5__* %45 to i32
  %47 = call i32 @kobj_init(i32 %44, i32 %46)
  %48 = load %struct.regnode*, %struct.regnode** %7, align 8
  %49 = getelementptr inbounds %struct.regnode, %struct.regnode* %48, i32 0, i32 12
  %50 = call i32 @sx_init(i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %35
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @M_REGULATOR, align 4
  %60 = load i32, i32* @M_WAITOK, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @malloc(i32 %58, i32 %59, i32 %62)
  %64 = load %struct.regnode*, %struct.regnode** %7, align 8
  %65 = getelementptr inbounds %struct.regnode, %struct.regnode* %64, i32 0, i32 11
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %55, %35
  %67 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %68 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @REGULATOR_FLAGS_STATIC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %75 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.regnode*, %struct.regnode** %7, align 8
  %78 = getelementptr inbounds %struct.regnode, %struct.regnode* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %80 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.regnode*, %struct.regnode** %7, align 8
  %83 = getelementptr inbounds %struct.regnode, %struct.regnode* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %105

84:                                               ; preds = %66
  %85 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %86 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @M_REGULATOR, align 4
  %89 = call i8* @strdup(i8* %87, i32 %88)
  %90 = load %struct.regnode*, %struct.regnode** %7, align 8
  %91 = getelementptr inbounds %struct.regnode, %struct.regnode* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %93 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %98 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @M_REGULATOR, align 4
  %101 = call i8* @strdup(i8* %99, i32 %100)
  %102 = load %struct.regnode*, %struct.regnode** %7, align 8
  %103 = getelementptr inbounds %struct.regnode, %struct.regnode* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %96, %84
  br label %105

105:                                              ; preds = %104, %73
  %106 = load %struct.regnode*, %struct.regnode** %7, align 8
  %107 = getelementptr inbounds %struct.regnode, %struct.regnode* %106, i32 0, i32 10
  %108 = call i32 @TAILQ_INIT(i32* %107)
  %109 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %110 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.regnode*, %struct.regnode** %7, align 8
  %113 = getelementptr inbounds %struct.regnode, %struct.regnode* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.regnode*, %struct.regnode** %7, align 8
  %116 = getelementptr inbounds %struct.regnode, %struct.regnode* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %118 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.regnode*, %struct.regnode** %7, align 8
  %121 = getelementptr inbounds %struct.regnode, %struct.regnode* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.regnode*, %struct.regnode** %7, align 8
  %123 = getelementptr inbounds %struct.regnode, %struct.regnode* %122, i32 0, i32 7
  store i32* null, i32** %123, align 8
  %124 = load %struct.regnode*, %struct.regnode** %7, align 8
  %125 = getelementptr inbounds %struct.regnode, %struct.regnode* %124, i32 0, i32 4
  %126 = load %struct.regnode_init_def*, %struct.regnode_init_def** %6, align 8
  %127 = getelementptr inbounds %struct.regnode_init_def, %struct.regnode_init_def* %126, i32 0, i32 4
  %128 = bitcast %struct.TYPE_4__* %125 to i8*
  %129 = bitcast %struct.TYPE_4__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 4 %129, i64 32, i1 false)
  %130 = load %struct.regnode*, %struct.regnode** %7, align 8
  %131 = getelementptr inbounds %struct.regnode, %struct.regnode* %130, i32 0, i32 3
  %132 = call i32 @sysctl_ctx_init(i32* %131)
  %133 = load %struct.regnode*, %struct.regnode** %7, align 8
  %134 = getelementptr inbounds %struct.regnode, %struct.regnode* %133, i32 0, i32 3
  %135 = load i32, i32* @_hw_regulator, align 4
  %136 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %135)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load %struct.regnode*, %struct.regnode** %7, align 8
  %139 = getelementptr inbounds %struct.regnode, %struct.regnode* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @CTLFLAG_RD, align 4
  %142 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %134, i32 %136, i32 %137, i8* %140, i32 %141, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %142, %struct.sysctl_oid** %8, align 8
  %143 = load %struct.regnode*, %struct.regnode** %7, align 8
  %144 = getelementptr inbounds %struct.regnode, %struct.regnode* %143, i32 0, i32 3
  %145 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %146 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %145)
  %147 = load i32, i32* @OID_AUTO, align 4
  %148 = load i32, i32* @CTLFLAG_RD, align 4
  %149 = load %struct.regnode*, %struct.regnode** %7, align 8
  %150 = getelementptr inbounds %struct.regnode, %struct.regnode* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 7
  %152 = call i32 @SYSCTL_ADD_INT(i32* %144, i32 %146, i32 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32* %151, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %153 = load %struct.regnode*, %struct.regnode** %7, align 8
  %154 = getelementptr inbounds %struct.regnode, %struct.regnode* %153, i32 0, i32 3
  %155 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %156 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %155)
  %157 = load i32, i32* @OID_AUTO, align 4
  %158 = load i32, i32* @CTLFLAG_RD, align 4
  %159 = load %struct.regnode*, %struct.regnode** %7, align 8
  %160 = getelementptr inbounds %struct.regnode, %struct.regnode* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 6
  %162 = call i32 @SYSCTL_ADD_INT(i32* %154, i32 %156, i32 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32* %161, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.regnode*, %struct.regnode** %7, align 8
  %164 = getelementptr inbounds %struct.regnode, %struct.regnode* %163, i32 0, i32 3
  %165 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %166 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %165)
  %167 = load i32, i32* @OID_AUTO, align 4
  %168 = load i32, i32* @CTLFLAG_RD, align 4
  %169 = load %struct.regnode*, %struct.regnode** %7, align 8
  %170 = getelementptr inbounds %struct.regnode, %struct.regnode* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 5
  %172 = call i32 @SYSCTL_ADD_INT(i32* %164, i32 %166, i32 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %168, i32* %171, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %173 = load %struct.regnode*, %struct.regnode** %7, align 8
  %174 = getelementptr inbounds %struct.regnode, %struct.regnode* %173, i32 0, i32 3
  %175 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %176 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %175)
  %177 = load i32, i32* @OID_AUTO, align 4
  %178 = load i32, i32* @CTLFLAG_RD, align 4
  %179 = load %struct.regnode*, %struct.regnode** %7, align 8
  %180 = getelementptr inbounds %struct.regnode, %struct.regnode* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  %182 = call i32 @SYSCTL_ADD_INT(i32* %174, i32 %176, i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %178, i32* %181, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %183 = load %struct.regnode*, %struct.regnode** %7, align 8
  %184 = getelementptr inbounds %struct.regnode, %struct.regnode* %183, i32 0, i32 3
  %185 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %186 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %185)
  %187 = load i32, i32* @OID_AUTO, align 4
  %188 = load i32, i32* @CTLFLAG_RD, align 4
  %189 = load %struct.regnode*, %struct.regnode** %7, align 8
  %190 = getelementptr inbounds %struct.regnode, %struct.regnode* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = call i32 @SYSCTL_ADD_INT(i32* %184, i32 %186, i32 %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %188, i32* %191, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %193 = load %struct.regnode*, %struct.regnode** %7, align 8
  %194 = getelementptr inbounds %struct.regnode, %struct.regnode* %193, i32 0, i32 3
  %195 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %196 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %195)
  %197 = load i32, i32* @OID_AUTO, align 4
  %198 = load i32, i32* @CTLFLAG_RD, align 4
  %199 = load %struct.regnode*, %struct.regnode** %7, align 8
  %200 = getelementptr inbounds %struct.regnode, %struct.regnode* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = call i32 @SYSCTL_ADD_INT(i32* %194, i32 %196, i32 %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %198, i32* %201, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %203 = load %struct.regnode*, %struct.regnode** %7, align 8
  %204 = getelementptr inbounds %struct.regnode, %struct.regnode* %203, i32 0, i32 3
  %205 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %206 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %205)
  %207 = load i32, i32* @OID_AUTO, align 4
  %208 = load i32, i32* @CTLFLAG_RD, align 4
  %209 = load %struct.regnode*, %struct.regnode** %7, align 8
  %210 = getelementptr inbounds %struct.regnode, %struct.regnode* %209, i32 0, i32 5
  %211 = call i32 @SYSCTL_ADD_INT(i32* %204, i32 %206, i32 %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %208, i32* %210, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %212 = load %struct.regnode*, %struct.regnode** %7, align 8
  %213 = getelementptr inbounds %struct.regnode, %struct.regnode* %212, i32 0, i32 3
  %214 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %215 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %214)
  %216 = load i32, i32* @OID_AUTO, align 4
  %217 = load i32, i32* @CTLFLAG_RD, align 4
  %218 = load %struct.regnode*, %struct.regnode** %7, align 8
  %219 = getelementptr inbounds %struct.regnode, %struct.regnode* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = call i32 @SYSCTL_ADD_U8(i32* %213, i32 %215, i32 %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %217, i32* %220, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %222 = load %struct.regnode*, %struct.regnode** %7, align 8
  %223 = getelementptr inbounds %struct.regnode, %struct.regnode* %222, i32 0, i32 3
  %224 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %225 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %224)
  %226 = load i32, i32* @OID_AUTO, align 4
  %227 = load i32, i32* @CTLFLAG_RD, align 4
  %228 = load %struct.regnode*, %struct.regnode** %7, align 8
  %229 = getelementptr inbounds %struct.regnode, %struct.regnode* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = call i32 @SYSCTL_ADD_U8(i32* %223, i32 %225, i32 %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %227, i32* %230, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %232 = load %struct.regnode*, %struct.regnode** %7, align 8
  %233 = getelementptr inbounds %struct.regnode, %struct.regnode* %232, i32 0, i32 3
  %234 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %235 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %234)
  %236 = load i32, i32* @OID_AUTO, align 4
  %237 = load i32, i32* @CTLTYPE_INT, align 4
  %238 = load i32, i32* @CTLFLAG_RD, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.regnode*, %struct.regnode** %7, align 8
  %241 = load i32, i32* @regnode_uvolt_sysctl, align 4
  %242 = call i32 @SYSCTL_ADD_PROC(i32* %233, i32 %235, i32 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %239, %struct.regnode* %240, i32 0, i32 %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %243 = load %struct.regnode*, %struct.regnode** %7, align 8
  ret %struct.regnode* %243
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @REG_TOPO_SLOCK(...) #1

declare dso_local i32* @regnode_find_by_name(i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @REG_TOPO_UNLOCK(...) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @kobj_init(i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_U8(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.regnode*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
